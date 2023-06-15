from fastapi import FastAPI
from pydantic import BaseModel
import sqlite3

origins = [
    "http://localhost:54611/#/signup_screen",  # Ganti dengan URL frontend Anda
]

app = FastAPI()

# Model data untuk halaman pertama pendaftaran
class UserRegistrationStep1(BaseModel):
    nama_lengkap: str
    email: str
    no_hp: int
    password: str

# Model data untuk halaman kedua pendaftaran (Member)
class UserRegistrationStep2Member(BaseModel):
    username: str
    alamat: str
    jenis_umkm: str
    no_ktp: str
    npwp: int
    pendapatan: str
    rekening_bank: str

# Model data untuk halaman kedua pendaftaran (Investor)
class UserRegistrationStep2Investor(BaseModel):
    username: str
    alamat: str
    pekerjaan: str
    no_ktp: str
    npwp: int
    pendapatan: str
    sumber_pendapatan: str
    rekening_bank: str


#untuk memeriksa apakah pengguna terdaftar sebagai member atau investor berdasarkan email 

def get_user_role(email):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("SELECT role FROM users WHERE email=?", (email,))
    result = c.fetchone()
    conn.close()
    if result:
        return result[0]
    else:
        return None

# Endpoint untuk halaman pertama pendaftaran
# /register/step1: Ini adalah endpoint untuk halaman pertama pendaftaran. 
# Ketika menerima permintaan POST, data pengguna dari halaman pertama pendaftaran akan dikirim sebagai 
# instance dari UserRegistrationStep1. Fungsi register_user_step1() akan memeriksa apakah pengguna sudah terdaftar menggunakan is_user_registered(), 
# kemudian data pengguna akan disimpan menggunakan save_user_step1().
@app.post("/register/step1", status_code=201)
async def register_user_step1(user: UserRegistrationStep1):
    if is_user_registered(user.email):
        return {"message": "Email already registered"}

    save_user_step1(user.nama_lengkap, user.email, user.no_hp, user.password)

    return {"message": "User registration step 1 completed"}

# Endpoint untuk halaman kedua pendaftaran (Member)
#/register/step2/member: Ini adalah endpoint untuk halaman kedua pendaftaran sebagai Member. Ketika menerima permintaan POST, 
# data pengguna dari halaman kedua pendaftaran (Member) akan dikirim sebagai instance dari UserRegistrationStep2Member. 
# Fungsi register_user_step2_member() akan memeriksa apakah pengguna sudah terdaftar menggunakan is_user_registered(), kemudian data 
# pengguna akan disimpan menggunakan save_user_step2_member().
@app.post("/register/step2/member", status_code=201)
async def register_user_step2_member(user: UserRegistrationStep2Member):
    email = user.email
    if not is_user_registered(email):
        return {"message": "User with email not found"}

    save_user_step2_member(email, user.username, user.alamat, user.jenis_umkm, user.no_ktp, user.npwp, user.pendapatan, user.rekening_bank)

    return {"message": "User registration step 2 (Member) completed"}

# Endpoint untuk halaman kedua pendaftaran (Investor)
#/register/step2/investor: Ini adalah endpoint untuk halaman kedua pendaftaran sebagai Investor. Ketika menerima permintaan POST, 
# data pengguna dari halaman kedua pendaftaran (Investor) akan dikirim sebagai instance dari UserRegistrationStep2Investor. 
# Fungsi register_user_step2_investor() akan memeriksa apakah pengguna sudah terdaftar menggunakan is_user_registered(), 
# kemudian data pengguna akan disimpan menggunakan save_user_step2_investor().
@app.post("/register/step2/investor", status_code=201)
async def register_user_step2_investor(user: UserRegistrationStep2Investor):
    email = user.email
    if not is_user_registered(email):
        return {"message": "User with email not found"}

    save_user_step2_investor(email, user.username, user.alamat, user.pekerjaan, user.no_ktp, user.npwp, user.pendapatan, user.sumber_pendapatan, user.rekening_bank)

    return {"message": "User registration step 2 (Investor) completed"}

# Fungsi untuk memeriksa apakah pengguna dengan email tertentu sudah terdaftar
def is_user_registered(email):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("SELECT COUNT(*) FROM users WHERE email=?", (email,))
    result = c.fetchone()
    conn.close()
    return result[0] > 0

# Fungsi untuk menyimpan data pengguna pada halaman pertama pendaftaran
def save_user_step1(nama_lengkap, email, no_hp, password):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("INSERT INTO users (nama_lengkap, email, no_hp, password) VALUES (?, ?, ?, ?)",
              (nama_lengkap, email, no_hp, password))
    conn.commit()
    conn.close()

# Fungsi untuk menyimpan data pengguna pada halaman kedua pendaftaran (Member)
def save_user_step2_member(email, username, alamat, jenis_umkm, no_ktp, npwp, pendapatan, rekening_bank):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("UPDATE users SET role=?, umkm=?, ktp=?, pendapatan=? WHERE email=?",
              ('member', username, alamat, jenis_umkm, no_ktp, npwp, pendapatan, rekening_bank, email))
    conn.commit()
    conn.close()

# Fungsi untuk menyimpan data pengguna pada halaman kedua pendaftaran (Investor)
def save_user_step2_investor(email, username, alamat, pekerjaan, no_ktp, npwp, pendapatan, sumber_pendapatan, rekening_bank):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("UPDATE users SET role=?, penghasilan=?, pekerjaan=? WHERE email=?",
              ('investor', username, alamat, pekerjaan, no_ktp, npwp, pendapatan, sumber_pendapatan, rekening_bank, email))
    conn.commit()
    conn.close()
