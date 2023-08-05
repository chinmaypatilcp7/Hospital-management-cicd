from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/patient_form')
def patient_form():
    return render_template('patient_form.html')

@app.route('/room_form')
def room_form():
    return render_template('room_form.html')

@app.route('/employee_form')
def employee_form():
    return render_template('employee_form.html')

@app.route('/appointment_form')
def appointment_form():
    return render_template('appointment_form.html')

@app.route('/billing_form')
def billing_form():
    return render_template('billing_form.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
