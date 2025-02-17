/* Leer el archivo CSV */
proc import datafile="/home/luna-k/Escritorio/SAS Curiosity Cup 2025/data/ibtracs.since1980.list.v04r01.csv"
    out=ibtracs_data
    dbms=csv
    replace;
    getnames=yes;
run;

/* Mostrar los primeros registros del dataset */
proc print data=ibtracs_data (obs=10);
run;

/* Generar modelos de clasificación */

/* Dividir los datos en conjuntos de entrenamiento y prueba */
proc surveyselect data=ibtracs_data out=train_test_split
    samprate=0.7 outall;
run;

data train;
    set train_test_split;
    if selected then output;
run;

data test;
    set train_test_split;
    if not selected then output;
run;

/* Modelo de clasificación usando regresión logística */
proc logistic data=train;
    class <variable_categorica>;
    model <variable_objetivo> = <lista_de_variables_predictoras>;
    output out=pred p=pred_prob;
run;

/* Evaluar el modelo en el conjunto de prueba */
proc logistic inmodel=pred;
    score data=test out=results;
run;

proc print data=results (obs=10);
run;
