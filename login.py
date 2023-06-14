from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
import uvicorn
import sqlite3

app = FastAPI()

origins = [
    "http://localhost:54611/#/login_screen",  # Ganti dengan URL frontend Anda
]

app = FastAPI()

# Model untuk data login
class UserLogin(BaseModel):
    email: str
    password: str


@app.post("/login")
def login_user(email: str, password: str):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()

    # Mencari user berdasarkan email dan password
    c.execute("SELECT * FROM users WHERE email=? AND password=?", (email, password))
    user = c.fetchone()
    conn.close()

    if user is None:
        raise HTTPException(status_code=400, detail="Email atau password salah")

    return {"message": "Login berhasil"}


if __name__ == '__main__':

    uvicorn.run(app, host='0.0.0.0', port=8000)
