import sqlite3

connection  = sqlite3.connect('max.db')
with open ('max.sql') as f:
    connection.executescript(f.read())
    connection.commit()
    connection.close()