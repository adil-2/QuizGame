from flask import Flask, render_template, request
from sqlite3 import connect

app = Flask(__name__, template_folder='templates')


# Connessione al database delle domande
connessione = connect('quiz.db')
cursore = connessione.cursor()



# Domande e risposte (non più hardcoded)
domande = []

# Recupero domande dal database
cursore.execute('SELECT id, domanda, risposta1, risposta2, risposta3, risposta4, risposta_corretta FROM domande')
for row in cursore.fetchall():
    domande.append({
        "id": row[0],
        "domanda": row[1],
        "risposte": [row[2], row[3], row[4], row[5]],
        "risposta_corretta": row[6],
    })

# Connessione al database del massimo
connections = connect('max.db')
maxDB = connections.cursor()

maxDB.execute('SELECT massimo FROM max')
massimo = maxDB.fetchall()[0][0]

maxDB.close()
cursore.close()

@app.route('/')
def home():
    return render_template('index.html', domande=domande)

@app.route('/risultati', methods=["POST"])
def risultati():
    risUtente = request.form
    risposte_utente = []
    for id, value in risUtente.items():
        risposte_utente.append(value)
    
    print(request.form)
    print(risposte_utente)
    punteggio = 0
    for index, domanda in enumerate(domande):
        if int(risposte_utente[index]) == domanda["risposta_corretta"]:
            print(risposte_utente[index])
            punteggio += 1

    global massimo 
    if (punteggio > int(massimo)):
        connections = connect('max.db')
        maxDB = connections.cursor()
        stringaNome = "billy"
        
        maxDB.execute('DELETE FROM max')
        maxDB.execute('INSERT INTO max(massimo, utente) values (? , ?)', (punteggio, stringaNome))

        maxDB.close()
        
        massimo = punteggio 
    return render_template('risultati.html', punteggio=punteggio, domande=domande, risposte_utente=risposte_utente, massimo=massimo)

if __name__ == "__main__":
   app.run(debug=True)
    

