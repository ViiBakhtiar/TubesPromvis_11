from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import uvicorn

app = FastAPI()

# Konfigurasi CORS (Cross-Origin Resource Sharing) untuk mengizinkan permintaan dari domain yang berbeda saat pengembangan
origins = [
    "http://localhost:50355/#/postingan_member_baru_screen",  # Ganti dengan URL frontend Anda
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class PostinganMember(BaseModel):
    makspen: str
    basil: str
    tenor: str
    pendake: str
    jenis: str
    jml_angsuran: str
    pengper: str

@app.post("/postinganmember")
async def postinganmember(user: PostinganMember):
    # Lakukan operasi pendaftaran pengguna di sini (misalnya, menyimpan data pengguna ke database)
    # Di sini Anda dapat menggunakan ORM seperti SQLAlchemy untuk berinteraksi dengan database
    
    # Contoh sederhana: Mencetak data pengguna yang didaftarkan
    print(f"Username: {user.username}, Password: {user.password}, Email: {user.email}")
    
    # Response sukses
    return {"message": "Postingan berhasil ditambahkan"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
