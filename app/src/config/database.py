# database.py
from flask_mysqldb import MySQL

def init_db(app):
    app.config['MYSQL_HOST'] = 'db'
    app.config['MYSQL_USER'] = 'root'
    app.config['MYSQL_PASSWORD'] = '1234'
    app.config['MYSQL_DB'] = 'municipios'
    app.config['MYSQL_COMMIT_ON_TEARDOWN'] = True 

    mysql = MySQL(app)
    return mysql
