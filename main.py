import psycopg2
from flask import Flask, request, jsonify, render_template
from models import db, Equipo, Goleador, Trofeo

app = Flask(__name__)
port = 5000
app.config['SQLALCHEMY_DATABASE_URI']= 'postgresql+psycopg2:///vitrina'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS']=False

@app.route('/')
def show_template() :
    return render_template('index.html')

# Ruta para goleadores
@app.route('/goleadores')
def goleadores():
    page = request.args.get('page', 1, type=int)
    per_page = 10  # Número de elementos por página
    goleadores = Goleador.query.order_by(Goleador.goles.desc()).paginate(page=page, per_page=per_page)
    return render_template('Goleadores/index.html', goleadores=goleadores)
#    goleadores = Goleador.query.order_by(Goleador.goles.desc()).all()
#    return render_template('Goleadores/index.html', goleadores=goleadores)

@app.route('/paises/argentina')
def show_equipos_argentina():
    equipos = Equipo.query.where(Equipo.pais=='Argentina').all()
    return render_template('Paises/Argentina/index.html', equipos=equipos, pais='Argentina')

@app.route('/paises/brasil')
def show_equipos_brasil():
    equipos = Equipo.query.where(Equipo.pais=='Brasil').all()
    return render_template('Paises/Brasil/index.html', equipos=equipos, pais='Brasil')

@app.route('/paises/chile')
def show_equipos_chile():
    equipos = Equipo.query.where(Equipo.pais=='Chile').all()
    return render_template('Paises/Chile/index.html', equipos=equipos, pais='Chile')

@app.route('/paises/españa')
def show_equipos_espana():
    equipos = Equipo.query.where(Equipo.pais=='España').all()
    return render_template('Paises/España/index.html', equipos=equipos, pais='España')

@app.route('/paises/francia')
def show_equipos_francia():
    equipos = Equipo.query.where(Equipo.pais=='Francia').all()
    return render_template('Paises/Francia/index.html', equipos=equipos, pais='Francia')

@app.route('/paises/italia')
def show_equipos_italia():
    equipos = Equipo.query.where(Equipo.pais=='Italia').all()
    return render_template('Paises/Italia/index.html', equipos=equipos, pais='Italia')

@app.route('/paises/mexico')
def show_equipos_mexico():
    equipos = Equipo.query.where(Equipo.pais=='México').all()
    return render_template('Paises/Mexico/index.html', equipos=equipos, pais='Mexico')

@app.route('/paises/uruguay')
def show_equipos_uruguay():
    equipos = Equipo.query.where(Equipo.pais=='Uruguay').all()
    return render_template('Paises/Uruguay/index.html', equipos=equipos, pais='Uruguay')

@app.route('/trofeos')
def trofeos():
    page = request.args.get('page', 1, type=int)
    per_page = 10  # Número de elementos por página
    trofeos = Trofeo.query.order_by(Trofeo.anio.asc()).paginate(page=page, per_page=per_page)
    return render_template('Trofeos/index.html', trofeos=trofeos)
#def trofeos():
#    trofeos = Trofeo.query.order_by(Trofeo.anio.asc()).all()
#    return render_template('Trofeos/index.html', title='Bootstrap Table',
#                           trofeos=trofeos)

@app.route('/equipos', methods=['GET'])
def get_equipos():
    equipos = Equipo.query.all()
    equipos_data = []
    for equipo in equipos:
        equipo_data = {
            'id': equipo.id,
            'pais': equipo.pais,
            'trofeos': equipo.trofeos,
            'goleador': equipo.goleador
        }
        equipos_data.append(equipo_data)
    return jsonify({'equipos': equipos_data})

@app.route('/equipos', methods=['POST'])
def post_equipo():
    pais = request.json.get('pais')
    trofeos = request.json.get('Cantidad_trofeos')
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
    equipo = request.json.get('equipo')
    trofeo = Trofeo(nombre=nombre, anio=anio, equipo=equipo)
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
    equipo = request.json.get('equipo')
    goleador = Goleador(nombre=nombre, goles=goles, equipo=equipo)
    db.session.add(goleador)
    db.session.commit()
    return jsonify(goleador.nombre)

# Eliminar un equipo
@app.route('/equipos/<int:id>', methods=['DELETE'])
def delete_equipo(id):
    equipo = Equipo.query.get(id)
    if equipo is None:
        return jsonify({'message': 'Equipo no encontrado'}), 404
    db.session.delete(equipo)
    db.session.commit()
    return jsonify({'message': 'Equipo eliminado exitosamente'})

# Eliminar un trofeo
@app.route('/trofeos/<int:id>', methods=['DELETE'])
def delete_trofeo(id):
    trofeo = Trofeo.query.get(id)
    if trofeo is None:
        return jsonify({'message': 'Trofeo no encontrado'}), 404
    db.session.delete(trofeo)
    db.session.commit()
    return jsonify({'message': 'Trofeo eliminado exitosamente'})

# Eliminar un goleador
@app.route('/goleadores/<int:id>', methods=['DELETE'])
def delete_goleador(id):
    goleador = Goleador.query.get(id)
    if goleador is None:
        return jsonify({'message': 'Goleador no encontrado'}), 404
    db.session.delete(goleador)
    db.session.commit()
    return jsonify({'message': 'Goleador eliminado exitosamente'})



if __name__ == '__main__':
    print('Starting server..')
    db.init_app(app)
    with app.app_context():
        db.create_all()
    print('Started...')
    app.run(host='0.0.0.0', debug=True, port=port)

