from flask import Flask
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()


class Equipo(db.Model):
    __tablename__ = 'equipos'
    id = db.Column(db.Integer, primary_key=True)
    pais = db.Column(db.String(100), nullable=False)
    trofeos = db.Column(db.Integer, nullable=False)
    goleador = db.Column(db.String(100), nullable=False)

class Trofeo(db.Model):
    __tablename__ = 'trofeos'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100), nullable=False)
    anio = db.Column(db.Integer, nullable=False)
    equipo = db.Column(db.String(100), nullable=False)

class Goleador(db.Model):
    __tablename__ = 'goleadores'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100), nullable=False)
    equipo = db.Column(db.String(100), nullable=False)
    goles = db.Column(db.Integer, nullable=False)
