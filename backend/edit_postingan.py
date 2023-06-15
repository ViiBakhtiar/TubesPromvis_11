from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
import sqlite3

app = FastAPI()

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
@app.put("/postingan/postingan_id")
def edit_postingan(postingan_id: int, postingan: Postingan):
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
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)