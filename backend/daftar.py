from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import sqlite3

app = FastAPI()

origins = [
    "http://localhost:63176/#/signup_screen",  # Ganti dengan URL frontend Anda
]

class User(BaseModel):
    nama_lengkap: str
    email: str
    password: str
    no_hp: str
    alamat: str
    pekerjaan: str
    no_ktp: str
    npwp: str
    pendapatan: int
    sumber_pendapatan: str
    rekening_bank: str


@app.post("/register")
def register_user(user: User):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()

    # Cek apakah email sudah terdaftar
    c.execute("SELECT * FROM users WHERE email=?", (user.email,))
    existing_user = c.fetchone()
    if existing_user:
        raise HTTPException(status_code=400, detail="Email sudah terdaftar")

    # Menambahkan user baru ke database
    c.execute(
        "INSERT INTO users (nama_lengkap, email, password, no_hp, alamat, pekerjaan, no_ktp, npwp, pendapatan, sumber_pendapatan, rekening_bank) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        (user.nama_lengkap, 
         user.email, 
         user.password, 
         user.no_hp, 
         user.alamat, 
         user.pekerjaan, 
         user.no_ktp, 
         user.npwp, 
         user.pendapatan, 
         user.sumber_pendapatan, 
         user.rekening_bank)
    )
    conn.commit()
    conn.close()
    return {"message": "Pendaftaran berhasil"}


if __name__ == '__main__':
    import uvicorn

    uvicorn.run(app, host='0.0.0.0', port=8000)