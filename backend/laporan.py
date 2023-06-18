from fastapi import FastAPI
from pydantic import BaseModel
import sqlite3

origins = [
    "http://localhost:54611/#/laporan1_member_screen",  # Ganti dengan URL frontend Anda
]

app = FastAPI()

class HistoryTransaksi(BaseModel):
    id: int
    nama: str
    nominal: str
    
@app.get("laporan_keuangan", status_code=201)
async def laporan_keuangan(user: HistoryTransaksi):
    bulan = user.bulan
    if bulan(bulan):
        try:
            DB_NAME = "database.db"
            com = sqlite3.connect(DB_NAME)
            cur = conn.cursor()
            recs = []
            for row in cur.execute("select * from laporan_keuangan"):
                recs.append(row)
        except:
            return({"status":"terjadi error"})
        finally:
            conn.close()
        return{"data":recs}

from fastapi.encoders import jsonable_encoder