from typing import Union
from fastapi import FastAPI,Response,Request,HTTPException
from fastapi.middleware.cors import CORSMiddleware
import sqlite3

app = FastAPI()

app.add_middleware(
	CORSMiddleware,
	allow_origins=["*"],
	allow_credentials=True,
	allow_methods=["*"],
	allow_headers=["*"],
)


@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/member/{username}")
def ambil_member(username:str):
    return {"nama": ""}

@app.get("/member2/")
def ambil_member2(username:str):
    return {"nama": "Nico"}

@app.get("/daftar_member/")
def daftar_member(no_telp:str,email:str):
    return {"query":" no_telp: {}  ; email: {} ".format(no_telp,email),"data":[{"username":"1234"},{"username":"1235"}]}

# panggil sekali saja
@app.get("/init/")
def init_db():
  try:
    DB_NAME = "upi.db"
    con = sqlite3.connect(DB_NAME)
    cur = con.cursor()
    create_table = """ CREATE TABLE member(
            ID      	INTEGER PRIMARY KEY 	AUTOINCREMENT,
            username    TEXT                NOT NULL,
            nama    	TEXT            	NOT NULL,
            email    	TEXT            	NOT NULL,
            no_telp	    INTEGER            	NOT NULL,
            no_rek      INTEGER             NOT NULL
        )  
        """
    cur.execute(create_table)
    con.commit
  except:
           return ({"status":"terjadi error"})  
  finally:
           con.close()
    
  return ({"status":"ok, db dan tabel berhasil dicreate"})

from pydantic import BaseModel

from typing import Optional

class Member(BaseModel):
   username: str
   nama: str
   email: str
   no_telp: int
   no_rek: int



#status code 201 standard return creation
#return objek yang baru dicreate (response_model tipenya member)
@app.post("/tambah_member/", response_model=Member,status_code=201)  
def tambah_member(m: Member,response: Response, request: Request):
   try:
       DB_NAME = "upi.db"
       con = sqlite3.connect(DB_NAME)
       cur = con.cursor()
       # hanya untuk test, rawal sql injecttion, gunakan spt SQLAlchemy
       cur.execute("""insert into member (username,nama,email,no_telp,no_rek) values ( "{}","{}","{}","{}",{})""".format(m.username,m.nama,m.no_telp,m.email,m.no_rek))
       con.commit() 
   except:
       print("oioi error")
       return ({"status":"terjadi error"})   
   finally:  	 
       con.close()
   response.headers["Location"] = "/member/{}".format(m.username) 
   print(m.username)
   print(m.nama)
   print(m.email)
  
   return m



@app.get("/tampilkan_semua_member/")
def tampil_semua_member():
   try:
       DB_NAME = "upi.db"
       con = sqlite3.connect(DB_NAME)
       cur = con.cursor()
       recs = []
       for row in cur.execute("select * from member"):
           recs.append(row)
   except:
       return ({"status":"terjadi error"})   
   finally:  	 
       con.close()
   return {"data":recs}

from fastapi.encoders import jsonable_encoder


@app.put("/update_member_put/{username}",response_model=Member)
def update_member_put(response: Response,username: str, m: Member ):
    #update keseluruhan
    #karena key, username tidak diupdape
    try:
       DB_NAME = "upi.db"
       con = sqlite3.connect(DB_NAME)
       cur = con.cursor()
       cur.execute("select * from member where username = ?", (username,) )  #tambah koma untuk menandakan tupple
       existing_item = cur.fetchone()
    except Exception as e:
        raise HTTPException(status_code=500, detail="Terjadi exception: {}".format(str(e)))   
    
    if existing_item:  #data ada 
            print(m.no_rek)
            cur.execute("update member set nama = ?, email = ?, no_telp=?, no_rek=? where username=?", (m.nama,m.email,m.no_telp,m.no_rek,username))
            con.commit()            
            response.headers["location"] = "/member/{}".format(m.username)
    else:  # data tidak ada
            print("item not foud")
            raise HTTPException(status_code=404, detail="Item Not Found")
      
    con.close()
    return m


# khusus untuk patch, jadi boleh tidak ada
# menggunakan "kosong" dan -9999 supaya bisa membedakan apakah tdk diupdate ("kosong") atau mau
# diupdate dengan dengan None atau 0
class MemberPatch(BaseModel):
   nama: str | None = "kosong"
   email: str | None = "kosong"
   no_telp: int | None = "kosong"
   no_rek: int | None = "kosong" # yang boleh null hanya ini



@app.patch("/update_member_patch/{username}",response_model = MemberPatch)
def update_member_patch(response: Response, username: str, m: MemberPatch ):
    try:
      print(str(m))
      DB_NAME = "upi.db"
      con = sqlite3.connect(DB_NAME)
      cur = con.cursor() 
      cur.execute("select * from member where username = ?", (username,) )  #tambah koma untuk menandakan tupple
      existing_item = cur.fetchone()
    except Exception as e:
      raise HTTPException(status_code=500, detail="Terjadi exception: {}".format(str(e))) # misal database down  
    
    if existing_item:  #data ada, lakukan update
        sqlstr = "update member set " #asumsi minimal ada satu field update
        # todo: bisa direfaktor dan dirapikan
        if m.nama!="kosong":
            if m.nama!=None:
                sqlstr = sqlstr + " nama = '{}' ,".format(m.nama)
            else:     
                sqlstr = sqlstr + " nama = null ,"
        
        if m.email!="kosong":
            if m.email!=None:
                sqlstr = sqlstr + " email = '{}' ,".format(m.email)
            else:
                sqlstr = sqlstr + " email = null ,"
        
        if m.no_telp!="kosong":
            if m.no_telp!=None:
                sqlstr = sqlstr + " no_telp = '{}' ,".format(m.no_telp) 
            else:
                sqlstr = sqlstr + " no_telp = null, "     

        if m.no_rek!=-9999:
            if m.no_rek!=None:
                sqlstr = sqlstr + " no_rek = {} ,".format(m.no_rek)
            else:    
                sqlstr = sqlstr + " no_rek = null ,"

        sqlstr = sqlstr[:-1] + " where username='{}' ".format(username)  #buang koma yang trakhir  
        print(sqlstr)      
        try:
            cur.execute(sqlstr)
            con.commit()         
            response.headers["location"] = "/member/{}".format(username)
        except Exception as e:
            raise HTTPException(status_code=500, detail="Terjadi exception: {}".format(str(e)))   
        

    else:  # data tidak ada 404, item not found
         raise HTTPException(status_code=404, detail="Item Not Found")
   
    con.close()
    return
  
    
@app.delete("/delete_mhs/{nim}")
def delete_mhs(nim: str):
 try:
      DB_NAME = "upi.db"
      con = sqlite3.connect(DB_NAME)
      cur = con.cursor()
      sqlstr = "delete from mahasiswa  where nim='{}'".format(nim)            
      print(sqlstr) # debug
      cur.execute(sqlstr)
      con.commit()
 except:
      return ({"status":"terjadi error"})   
 finally:   
      con.close()
    
 return {"status":"ok"}
