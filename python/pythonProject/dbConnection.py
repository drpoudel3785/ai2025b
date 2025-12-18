import mysql.connector
from mysql.connector import errorcode

""" Connect to MySQL database """
try:
    conn = mysql.connector.connect(host='127.0.0.1',
                                   user='root',
                                   password='P@ssw0rd',
                                   port=3307)
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print('User name or Password is not working')
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print('Database does not exist')
    else:
        print(err)
else:  # will execute if there is no exception raised in try block
    if conn.is_connected():
        print('MySQL Connection is established')
        # Write your DB queries here...

    conn.close()  # Connection must be closed



