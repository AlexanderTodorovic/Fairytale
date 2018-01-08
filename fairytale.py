from flask import Flask, render_template
from flask_bootstrap import Bootstrap
from flask_sqlalchemy import SQLAlchemy
from flask import request

from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired

import urllib

app = Flask(__name__)
Bootstrap(app)

# flask-wtf
# For added security, the secret key should be stored in an
# environment variable instead of being embedded in the source code.
app.config['SECRET_KEY'] = '3d5dc27895abcb4ab117318f3db93aef4ab143c6df8e18dc8be1b5ceb9af8ca1'
class FairyTaleForm(FlaskForm):
    fairytaletext = StringField('What is your fairy tale?', validators=[DataRequired()])
    submit = SubmitField('Submit')	

#params = urllib.parse.quote_plus('DRIVER={SQL Server};SERVER=HARRISONS-THINK;DATABASE=LendApp;Trusted_Connection=yes;')
# For added security, the loing and password should be removed and 
# Windows Authentication (uses Kerberos security protocol) with Trusted_Connection=yes be used
params = urllib.parse.quote_plus("DRIVER={SQL Server};SERVER=sql2017alex.westeurope.cloudapp.azure.com;DATABASE=fairytale;UID=bruce;PWD=lee")
app.config['SQLALCHEMY_DATABASE_URI'] = "mssql+pyodbc:///?odbc_connect=%s" % params
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

# Fairytale class
class FairyTale(db.Model):
	__tablename__ = 'FairyTales'
	ftid = db.Column(db.Integer, primary_key=True)
	fairytale = db.Column(db.UnicodeText, unique=False)
	
	def __repr__(self):
		return '<FairyTale %r>' % self.ftid

@app.route('/', methods=['GET', 'POST'])
def index():
	ft = None
	form = FairyTaleForm()
	if form.validate_on_submit():
		ft = form.fairytaletext.data
		newfairytale = FairyTale(fairytale=ft)
		db.session.add(newfairytale)
		db.session.commit()
		form.fairytaletext.data = ''
	return render_template('index.html', form=form, name=ft)
	
@app.route('/all')
def all():
	fts = FairyTale.query.all()
	return render_template('fts.html',fairytales=fts)

@app.route('/fairytale/<id>')
def get_fairytale(id):
    ft = FairyTale.query.filter_by(ftid=id).first()
    if not ft:
        abort(404)
    return '{}'.format(ft.fairytale)

@app.errorhandler(404)
def page_not_found(e):
	return render_template('404.html'), 404

@app.errorhandler(500)
def internal_server_error(e):
	return render_template('500.html'), 500

# if run via python hello.py
# not needed if run via set FLASK_APP=hellp.py and flask run
#if __name__ == "__main__":
#    app.run()