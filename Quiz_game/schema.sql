DROP TABLE IF EXISTS domande;
 
CREATE TABLE domande(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    domanda TEXT,
    risposta1 TEXT,
    risposta2 TEXT,
    risposta3 TEXT,
    risposta4 TEXT,
    risposta_corretta INT
 );


INSERT INTO domande (domanda, risposta1, risposta2, risposta3, risposta4,  risposta_corretta) values (
    'Cosaa e l intelligenza artificiale?', 'Un gioco di simulazione', 'Un computer potente', 'Capacita di un computer di pensare e agire come un essere umano', 'aa', 3
);
INSERT INTO domande (domanda, risposta1, risposta2, risposta3, risposta4,  risposta_corretta) values (
    'Qual e il ruolo di Python nello sviluppo di intelligenza artificiale?', 'Permette la progettazione di AI', 'Python e un AI', 'Nessuna delle precedenti','bbb', 1
);
INSERT INTO domande (domanda, risposta1, risposta2, risposta3, risposta4,  risposta_corretta) values (
    'Cosa significa il termine "machine learning"?', 'e un tipo di apprendimento per AI', 'Una branca dell intelligenza artificiale', 'entrambe','bbb',  3
);
INSERT INTO domande (domanda, risposta1, risposta2, risposta3, risposta4,  risposta_corretta) values (
    'Qual e l obiettivo dell apprendimento supervisionato?', 'Rendere partecipe l uomo nelle decisione dell AI', 'Insegnare a un modello di machine learning a svolgere un compito specifico', 'Non c entra con l AI ','bbb',  2
);
INSERT INTO domande (domanda, risposta1, risposta2, risposta3, risposta4,  risposta_corretta) values (
    'Qual e la differenza tra deep learning e machine learning?', 'Una e la generalizzazione dell altra', 'Nessuna differenza', 'Una apprende da sola','bbb',  3
);
INSERT INTO domande (domanda, risposta1, risposta2, risposta3, risposta4,  risposta_corretta) values (
    'Cosa si intende per "dataset" nell apprendimento automatico?', 'Un insieme di dati a cui si fa riferimento', 'Un programma che gira su più AI', 'Entrambe','bbb',  1
);
INSERT INTO domande (domanda, risposta1, risposta2, risposta3, risposta4,  risposta_corretta) values (
    'Le intelligenze artificiali sono dannose?', 'Si', 'No', 'Dipende dall utilizzo','bbb', 3
);
