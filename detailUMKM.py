from fastapi import FastAPI
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

app = FastAPI()

# Koneksi ke database menggunakan SQLAlchemy
SQLALCHEMY_DATABASE_URL = "sqlite:///./database.db"
engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()


# Definisikan model untuk tabel DetailUMKM
class DetailUMKM(Base):
    __tablename__ = "detail_umkm"

    id = Column(Integer, primary_key=True, index=True)
    nama = Column(String, index=True)
    alamat = Column(String)
    maks_pendanaan = Column(String)
    bagi_hasil = Column(String)
    tenor = Column(String)
    pendanaan_ke = Column(Integer)
    jenis_angsuran = Column(String)
    jumlah_angsuran = Column(String)
    penghasilan_perbulan = Column(String)


# Membuat sesi database
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


# Endpoint untuk mendapatkan detail UMKM berdasarkan ID UMKM
@app.get("/umkm/{umkm_id}", response_model=DetailUMKM)
def get_umkm(umkm_id: int, db: Session = Depends(get_db)):
    umkm = db.query(DetailUMKM).filter(DetailUMKM.id == umkm_id).first()

    if not umkm:
        raise HTTPException(status_code=404, detail="UMKM not found")
    return umkm
