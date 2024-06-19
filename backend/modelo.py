from flask import Flask
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()


class Equipo(db.Model):
    __tablename__ = 'equipos'
    id = db.Column(db.Integer, primary_key=True)
    pais = db.Column(db.String(100), nullable=False)
    trofeos = db.relationship('Trofeo', backref='equipo', lazy=True)
    jugadores = db.relationship('Jugador', backref='equipo', lazy=True)


class Trofeo(db.Model):
    __tablename__ = 'trofeos'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100), nullable=False)
    equipo_id = db.Column(db.Integer, db.ForeignKey('equipos.id'), nullable=False)
    finalistas = db.relationship('Finalista', backref='trofeo', lazy=True)

class Ganador(db.Model):
    __tablename__ = 'ganadores'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100), nullable=False)
    equipo_id = db.Column(db.Integer, db.ForeignKey('equipos.id'), nullable=False)
    

class Goleador(db.Model):
    __tablename__ = 'goleadores'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100), nullable=False)
    goles = db.Column(db.Integer, nullable=False)
    equipo_id = db.Column(db.Integer, db.ForeignKey('equipos.id'), nullable=False)




