import sqlite3

conn = sqlite3.connect('database.db')
c = conn.cursor()

create_table_users = '''
    CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama_lengkap TEXT NOT NULL,
        email TEXT NOT NULL,
        password TEXT NOT NULL,
        no_hp TEXT NOT NULL,
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
'''

c.execute(create_table_users)
conn.commit()

create_table_chat= '''
    CREATE TABLE IF NOT EXISTS messages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        sender TEXT NOT NULL,
        content TEXT NOT NULL
    )
'''

c.execute(create_table_chat)
conn.commit()

    # membuat tabel postingan
create_table_postingan='''
    CREATE TABLE IF NOT EXISTS postingan(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            maksimum_pendanaan STRING,
            bagi_hasil STRING,
            tenor STRING,
            pendanaan_ke INTEGER,
            jenis_angsuran STRING,
            jumlah_angsuran STRING,
            penghasilan_perbulan STRING
    )
'''
c.execute(create_table_postingan)
conn.commit()

create_table_laporan_keuangan='''
    CREATE TABLE IF NOT EXISTS laporan_keuangan(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username STRING,
            nama_transaksi STRING,
            nominal_transaksi INT,
            bulan STRING
    )
'''
c.execute(create_table_laporan_keuangan)
conn.commit()

create_table_laporan_keuangan_bulanan='''
    CREATE TABLE IF NOT EXISTS laporan_keuangan_bulanan(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            tanggal STRING
            username_member STRING,
            username_investor STRING,
            nama_investor STRING,
            rincian_pendapatan INT,
            rincian_laba INT,
            jumlah_cicilan INT,
            cicilan_telah_dibayar INT,
            cicilan_harus_dibayar INT,
            jatuh_tempo STRING,
            tempo_cicilan INT,
            tren_bisnis STRING
    )
'''
c.execute(create_table_laporan_keuangan_bulanan)
conn.commit()

conn.close()
