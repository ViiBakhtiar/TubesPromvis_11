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

app = FastAPI()

class LaporanBulanan(Base):
    __tablename__ = 'laporan_bulanan'
    
    id: int
    tanggal : str
    username_member: str
    nama_investor: str
    rincian_pendapatan: int
    rincian_laba: int
    jumlah_cicilan: int
    cicilan_telah_dibayar: int
    cicilan_harus_dibayar: int
    jatuh_tempo: str
    tempo_cicilan: str
    tren_bisnis: str
    
    
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        
    
@app.get("/laporan_keuangan_bulanan/{username_member}", response_model=LaporanBulanan)
def get_laporan_bulanan(username_member: str, db: Session = Depends(get_db)):
    laporan_bulanan = db.query(LaporanBulanan).filter(LaporanBulanan.username_member == username_member).first()
    
    if not laporan_bulanan:
        raise HTTPException(status_code=404, detail="Laporan Bulanan not found")
    return laporan_bulanan