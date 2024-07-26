from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from modelo import db, Equipo, Trofeo, Goleador

app = Flask(__name__)
port=5000
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///database.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

@app.route('/equipos', methods=['GET'])
def get_equipos():
    equipos = Equipo.query.all()
    return jsonify([equipo.pais for equipo in equipos])

@app.route('/equipos', methods=['POST'])
def post_equipo():
    pais = request.json.get('pais')
    trofeos = request.json.get('trofeos')
    goleador = request.json.get('goleador')
    equipo = Equipo(pais=pais, trofeos=trofeos, goleador=goleador)
    db.session.add(equipo)
    db.session.commit()
    return jsonify(equipo.pais)

@app.route('/trofeos', methods=['GET'])
def get_trofeos():
    trofeos = Trofeo.query.all()
    return jsonify([trofeo.nombre for trofeo in trofeos])

@app.route('/trofeos', methods=['POST'])
def post_trofeo():
    nombre = request.json.get('nombre')
    anio = request.json.get('anio')
    equipo_id = request.json.get('equipo_id')
    trofeo = Trofeo(nombre=nombre, anio=anio, equipo_id=equipo_id)
    db.session.add(trofeo)
    db.session.commit()
    return jsonify(trofeo.nombre)

@app.route('/goleadores', methods=['GET'])
def get_goleadores():
    goleadores = Goleador.query.all()
    return jsonify([goleador.nombre for goleador in goleadores])

@app.route('/goleadores', methods=['POST'])
def post_goleador():
    nombre = request.json.get('nombre')
    goles = request.json.get('goles')
    equipo_id = request.json.get('equipo_id')
    goleador = Goleador(nombre=nombre, goles=goles, equipo_id=equipo_id)
    db.session.add(goleador)
    db.session.commit()
    return jsonify(goleador.nombre)

if __name__ == '__main__':
    db.init_app(app)
    with app.app_context():
        db.create_all()
    app.run(port=port, debug=True)

