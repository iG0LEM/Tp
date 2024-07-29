# LA VITRINA


------
Instalation:
1) Creo base de datos

sudo -u postgres createdb vitrina

 

2) Creo tablas del sistema

 

psql -U postgres -d vitrina  -f vitrina-schema.sql

 

3)  Cargo informacion inicial, para tener algo para mostrar (opcional)

psql -U postgres -d vitrina  -f vitrina-data.sql


------
Run:

python main.py
