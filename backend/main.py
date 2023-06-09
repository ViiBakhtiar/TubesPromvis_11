from typing import Union
from fastapi import FastAPI,Response,Request,HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import Optional
from fastapi.encoders import jsonable_encoder
import uvicorn
import sqlite3

app = FastAPI()

app.add_middleware(
	CORSMiddleware,
	allow_origins=["*"],
	allow_credentials=True,
	allow_methods=["*"],
	allow_headers=["*"],
)


@app.get("/init/")
def init_db():
  try:
    DB_NAME = "database.db"
    con = sqlite3.connect(DB_NAME)
    cur = con.cursor()

    create_table_users= """ CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nama_lengkap TEXT NOT NULL,
            email TEXT NOT NULL,
            no_hp TEXT NOT NULL,
            password TEXT NOT NULL,
            username TEXT NOT NULL,
            alamat TEXT NOT NULL,
            pekerjaan TEXT NOT NULL,
            no_ktp TEXT NOT NULL,
            npwp INTEGER NOT NULL,
            pendapatan INTEGER NOT NULL,
            sumber_pendapatan TEXT NOT NULL,
            rekening_bank TEXT NOT NULL,
            jenis_umkm TEXT NOT NULL
        )
        """
    cur.execute(create_table_users)    
        
    create_table_postingan= """ CREATE TABLE postingan(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            maksimum_pendanaan TEXT,
            bagi_hasil TEXT,
            tenor TEXT,
            pendanaan_ke INTEGER,
            jenis_angsuran TEXT,
            jumlah_angsuran TEXT,
            penghasilan_perbulan TEXT
        )
        """
    cur.execute(create_table_postingan)
    
    # create_table_detail_umkm= """ CREATE TABLE detail_umkm(
    #          SELECT
    #          p.id,
    #          u.nama_lengkap,
    #          u.alamat,
    #          p.maksimum_pendanaan,
    #          p.bagi_hasil,
    #          p.tenor,
    #          p.pendanaan_ke,
    #          p.jenis_angsuran
    #          p.jumlah_angsuran,
    #          p.penghasilan_perbulan
    #      FROM
    #          postingan p
    #      JOIN
    #          users u ON p.id = u.id;
    #      )
    #      """
    # cur.execute(create_table_detail_umkm)

    create_table_tarik_saldo= """CREATE TABLE tariksaldo(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            saldo FLOAT,
            amount FLOAT
        )
        """
    cur.execute(create_table_tarik_saldo)

    create_table_laporan_keuangan= """CREATE TABLE laporan_keuangan(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT,
            nama_transaksi TEXT,
            nominal_transaksi INTEGER,
            bulan TEXT
        )
        """
    cur.execute(create_table_laporan_keuangan)
    
    create_table_laporan_keuangan_bulanan= """CREATE TABLE laporan_keuangan_bulanan(
            ID                  INTEGER PRIMARY KEY AUTOINCREMENT,
            tanggal             TEXT,
            username_member     TEXT,
            username_investor   TEXT,
            nama_investor       TEXT,
            rincian_pendapatan  INTEGER,
            rincian_laba        INTEGER,
            jumlah_cicilan      INTEGER,
            cicilan_telah_dibayar INTEGER,
            cicilan_harus_dibayar INTEGER,
            jatuh_tempo           TEXT,
            tempo_cicilan         INTEGER,
            tren_bisnis           TEXT
        )
        """
    
    cur.execute(create_table_laporan_keuangan_bulanan)
    con.commit()
  except Exception as e:
        return ({"status": "Terjadi error: " + str(e)})
  finally:
        con.close()
    
  return ({"status": "Ok, database dan tabel berhasil dibuat"})

#R E G I S T R A S I
# Model data untuk halaman pertama pendaftaran
class UserRegistrationStep1(BaseModel):
    nama_lengkap: str
    email: str
    no_hp: str
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

# Endpoint untuk halaman pertama pendaftaran
# /register/step1: Ini adalah endpoint untuk halaman pertama pendaftaran. 
# Ketika menerima permintaan POST, data pengguna dari halaman pertama pendaftaran akan dikirim sebagai 
# instance dari UserRegistrationStep1. Fungsi register_user_step1() akan memeriksa apakah pengguna sudah terdaftar menggunakan is_user_registered(), 
# kemudian data pengguna akan disimpan menggunakan save_user_step1().
@app.post("/register/step1/", response_model=UserRegistrationStep1, status_code=201)
async def register_user_step1(user: UserRegistrationStep1, response: Response, request: Request):
    try:
        #request_body = await request.body()
        con = sqlite3.connect("database.db")
        cur = con.cursor()
        cur.execute("""INSERT INTO users (nama_lengkap, email, no_hp, password) values ( '{}', '{}', '{}', '{}')""".format
          (user.nama_lengkap, user.email, user.no_hp, user.password))

        # if is_user_registered(user.email):
        #     return {"message": "Email already registered"}
        
        con.commit()
    except:
        return {"message": "Internal Server Error: "}
    finally:
        con.close()
    # response.headers["Location"] = "/register/step1/{}".format(user.nama_lengkap) 
    # print(user.nama_lengkap)
    # print(user.email)
    # print(user.no_hp)
    # print(user.password)
    # return user

# Endpoint untuk halaman kedua pendaftaran (Member)
#/register/step2/member: Ini adalah endpoint untuk halaman kedua pendaftaran sebagai Member. Ketika menerima permintaan POST, 
# data pengguna dari halaman kedua pendaftaran (Member) akan dikirim sebagai instance dari UserRegistrationStep2Member. 
# Fungsi register_user_step2_member() akan memeriksa apakah pengguna sudah terdaftar menggunakan is_user_registered(), kemudian data 
# pengguna akan disimpan menggunakan save_user_step2_member().
@app.post("/register/step2/member/", response_model=UserRegistrationStep2Member, status_code=201)
def register_user_step2_member(user: UserRegistrationStep2Member, response: Response, request: Request):
    try:
        con = sqlite3.connect("database.db")
        cur = con.cursor()
        email = user.email
        if not is_user_registered(email):
            return {"message": "User with email not found"}

        cur.execute("""INSERT INTO users (nama_lengkap, email, no_hp, password) VALUES (?, ?, ?, ?)""".format(user.nama_lengkap, user.email, user.no_hp, user.password))
        con.commit()

        return {"message": "User registration step 2 (Member) completed"}
    except Exception as e:
        return {"message": "Internal Server Error: " + str(e)}
    finally:
        con.close()

# Endpoint untuk halaman kedua pendaftaran (Investor)
#/register/step2/investor: Ini adalah endpoint untuk halaman kedua pendaftaran sebagai Investor. Ketika menerima permintaan POST, 
# data pengguna dari halaman kedua pendaftaran (Investor) akan dikirim sebagai instance dari UserRegistrationStep2Investor. 
# Fungsi register_user_step2_investor() akan memeriksa apakah pengguna sudah terdaftar menggunakan is_user_registered(), 
# kemudian data pengguna akan disimpan menggunakan save_user_step2_investor().
@app.post("/register/step2/investor/", response_model=UserRegistrationStep2Investor, status_code=201)
def register_user_step2_investor(user: UserRegistrationStep2Investor, response: Response, request: Request):
    try:
        con = sqlite3.connect("database.db")
        cur = con.cursor()
        email = user.email
        if not is_user_registered(email):
            return {"message": "User with email not found"}

        save_user_step2_investor(email, user.username, user.alamat, user.jenis_umkm, user.no_ktp, user.npwp, user.pendapatan, user.rekening_bank)

        return {"message": "User registration step 2 (Investor) completed"}
    except Exception as e:
        return {"message": "Internal Server Error: " + str(e)}
    finally:
        con.close()

# Fungsi untuk memeriksa apakah pengguna dengan email tertentu sudah terdaftar
def is_user_registered(email):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("SELECT COUNT(*) FROM users WHERE email=?", (email,))
    result = c.fetchone()
    conn.close()
    return result[0] > 0

# Fungsi untuk menyimpan data pengguna pada halaman pertama pendaftaran
def save_user_step1(user: UserRegistrationStep1):
    try:
        conn = sqlite3.connect("database.db")
        c = conn.cursor()
        c.execute("""INSERT INTO users (nama_lengkap, email, no_hp, password) VALUES (?, ?, ?, ?)""".format
          (user.nama_lengkap, user.email, user.no_hp, user.password))
        conn.commit()
        conn.close()
    except Exception as e:
        return {"status": "Terjadi error: " + str(e)}
    finally:
        conn.close()
    return {"status": "Data pengguna berhasil disimpan"}

# Fungsi untuk menyimpan data pengguna pada halaman kedua pendaftaran (Member)
def save_user_step2_member(email, username, alamat, jenis_umkm, no_ktp, npwp, pendapatan, rekening_bank):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("UPDATE users SET role=?, umkm=?, ktp=?, pendapatan=?, rekening_bank=? WHERE email=?",
          ('member', username, alamat, jenis_umkm, no_ktp, npwp, pendapatan, rekening_bank, email))
    conn.commit()
    conn.close()

# Fungsi untuk menyimpan data pengguna pada halaman kedua pendaftaran (Investor)
def save_user_step2_investor(email, username, alamat, pekerjaan, no_ktp, npwp, pendapatan, sumber_pendapatan, rekening_bank):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("UPDATE users SET role=?, penghasilan=?, pekerjaan=?, rekening_bank=? WHERE email=?",
          ('investor', username, alamat, pekerjaan, no_ktp, npwp, pendapatan, sumber_pendapatan, rekening_bank, email))
    conn.commit()
    conn.close()

# L O G I N
# Model data untuk login
class UserLogin(BaseModel):
    email: str
    password: str

# Endpoint untuk login
@app.post("/login", response_model=UserLogin, status_code=201)
def login(user: UserLogin, response: Response, request: Request):
    email = user.email
    password = user.password

    # Memeriksa keberadaan pengguna dengan email yang sesuai
    if not is_user_registered(email):
        return {"message": "User with email not found"}

    # Memeriksa apakah password sesuai
    if not is_valid_password(email, password):
        return {"message": "Invalid password"}

    # Mendapatkan peran pengguna (member/investor)
    role = get_user_role(email)

    if role == "member":
        return {"message": "Logged in as member"}
    elif role == "investor":
        return {"message": "Logged in as investor"}
    else:
        return {"message": "Unknown user role"}

# Fungsi untuk memeriksa apakah pengguna terdaftar
def is_user_registered(email):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("SELECT COUNT(*) FROM users WHERE email=?", (email,))
    result = c.fetchone()
    conn.close()
    return result[0] > 0

# Fungsi untuk memeriksa apakah password sesuai
def is_valid_password(email, password):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("SELECT password FROM users WHERE email=?", (email,))
    result = c.fetchone()
    conn.close()
    if result:
        return result[0] == password
    else:
        return False

# Fungsi untuk mendapatkan peran (role) pengguna
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

#E D I T P O S T I N G A N M E M B E R
# model untuk data postingan
class Postingan(BaseModel):
    id: int
    maksimum_pendanaan: str
    bagi_hasil: str
    tenor : str
    pendanaan_ke : int
    jenis_angsuran : str
    jumlah_angsuran : str
    penghasilan_perbulan: str

#methode put pada endpoint ("/postingan/postingan_id") untuk memperbarui data postingan
#data postingan yang diterima  sebagai body permintaan akan divalidasi menggunakan model 'Postingan'
@app.put("/postingan/{postingan_id}", response_model=Postingan)
def edit_postingan(response: Response, postingan_id: int, postingan: Postingan):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()

    # cek apakah postingan dengan ID tersebut ada di database
    c.execute("SELECT * FROM postingan WHERE id=?", (postingan_id,))
    existing_postingan = c.fetchone()

    if existing_postingan is None:
        raise HTTPException(status_code= 404, details="Postingan tidak ditemukan")
    
    # Update data postingan
    c.execute("""UPDATE postingan SET
            maksimum_pendanaan=?,
            bagi_hasil=?,
            tenor=?,
            pendanaan_ke=?
            jenis_angsuran=?,
            jumlah_angsuran=?,
            penghasilan_perbulan=?
        WHERE id=?""",
            (postingan.maksimum_pendanaan, postingan.bagi_hasil, postingan.tenor, postingan.pendanaan_ke, 
             postingan.jenis_angsuran, postingan.jumlah_angsuran , postingan.penghasilan_perbulan, postingan_id))
    
    conn.commit()
    conn.close()
            
    return{"message": "Data postingan berhasil diperbarui"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)

# L A P O R A N
class HistoryTransaksi(BaseModel):
    id: int
    nama: str
    nominal: str
    
@app.get("/laporan_keuangan/")
def laporan_keuangan():
    try:
        DB_NAME = "database.db"
        con = sqlite3.connect(DB_NAME)
        cur = con.cursor()
        recs = []
        for row in cur.execute("select * from laporan_keuangan"):
            recs.append(row)
    except:
        return({"status":"terjadi error"})
    finally:
        con.close()
    return{"data":recs}

# D E T A I L U M K M
# Definisikan model untuk tabel DetailUMKM
class DetailUMKM(BaseModel):
    id: int
    nama_lengkap: str
    alamat: str
    maksimum_pendanaan: str
    bagi_hasil: str
    tenor: str
    pendanaan_ke: int
    jenis_angsuran: str
    jumlah_angsuran: str
    penghasilan_perbulan: str


# Endpoint untuk mendapatkan detail UMKM berdasarkan ID UMKM
@app.get("/umkm/{umkm_id}", response_model=DetailUMKM)
def get_umkm(umkm_id: int):
    umkm = (DetailUMKM).filter(DetailUMKM.id == umkm_id).first()

    if not umkm:
        raise HTTPException(status_code=404, detail="UMKM not found")
    return umkm

# P O R T F O L I O 1 M E M B E R
# Model untuk request body
class Penarikan(BaseModel):
    amount: float

# Data saldo awal
saldo = 1000.0

# Endpoint untuk menarik dana
@app.post("/tarikuang", response_model=Penarikan)
def tarikuang_funds(response: Response, request: Penarikan):
    global saldo

    amount = request.amount

    if saldo >= amount:
        saldo -= amount
        return {"message": "Penarikan berhasil.", "saldo_terkini": saldo}
    else:
        return {"message": "Saldo tidak mencukupi."}

# Endpoint untuk mendapatkan saldo terkini
@app.get("/saldo")
def get_saldo():
    global saldo
    return {"saldo_terkini": saldo}

# P R O F I L
# Model untuk data user
class Profil(BaseModel):
    id: int
    nama_lengkap: str
    email: str
    password: str
    no_hp: str
    no_ktp: str
    npwp: int
    rekening_bank: str
    alamat: str

# Mengambil data user berdasarkan ID
def get_user(id: int) -> Profil:
    conn = sqlite3.connect("database.db")
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()

    cursor.execute("SELECT * FROM users WHERE id=?", (id,))
    row = cursor.fetchone()
    conn.close()

    if row is None:
        raise HTTPException(status_code=404, detail="User not found")

    user_data = dict(row)
    return Profil(**user_data)

# Endpoint untuk halaman profil
@app.get("/profile/{user_id}", response_model=Profil)
def get_profile(user_id: int):
    try:
        user = get_user(user_id)
        return user
    except HTTPException as e:
        raise e

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)

    

