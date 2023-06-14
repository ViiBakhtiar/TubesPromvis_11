import sqlite3

conn = sqlite3.connect('database.db')
c = conn.cursor()

create_table = '''
    CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama_lengkap TEXT NOT NULL,
        email TEXT NOT NULL,
        password TEXT NOT NULL,
        no_hp TEXT NOT NULL,
        alamat TEXT NOT NULL,
        pekerjaan TEXT NOT NULL,
        no_ktp TEXT NOT NULL,
        npwp TEXT NOT NULL,
        pendapatan INTEGER NOT NULL,
        sumber_pendapatan TEXT NOT NULL,
        rekening_bank TEXT NOT NULL
    )
'''

c.execute(create_table)
conn.commit()
conn.close()

# Fungsi untuk memeriksa apakah pengguna dengan email tertentu sudah terdaftar
def is_user_registered(email):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("SELECT COUNT(*) FROM users WHERE email=?", (email,))
    result = c.fetchone()
    conn.close()
    return result[0] > 0

# Fungsi untuk menyimpan data pengguna yang baru terdaftar
def save_user(full_name, email, password, phone_number, address, occupation, id_card_number, npwp, income, income_source, bank_account):
    conn = sqlite3.connect('database.db')
    c = conn.cursor()
    c.execute("INSERT INTO users (full_name, email, password, phone_number, address, occupation, id_card_number, npwp, income, income_source, bank_account) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
              (full_name, email, password, phone_number, address, occupation, id_card_number, npwp, income, income_source, bank_account))
    conn.commit()
    conn.close()


conn = sqlite3.connect('database.db')
c = conn.cursor()

create_table_chat= '''
    CREATE TABLE messages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        sender TEXT NOT NULL,
        content TEXT NOT NULL
    )
'''

c.execute(create_table)
conn.commit()
conn.close()
