/*
Pregunta
===========================================================================

Ordene el archivo `data.tsv`  por letra y valor (3ra columna). Escriba el
resultado separado por comas.

Escriba el resultado a la carpeta `output` del directorio actual. Para la 
evaluación, pig sera eejcutado ejecutado en modo local:

$ pig -x local -f pregunta.pig

     >>> Escriba el codigo del mapper a partir de este punto <<<
*/
linea = LOAD './data.tsv' USING PigStorage('\t') 
    AS (
            letra:chararray,
            fecha:chararray,
            num:int
    );

datos_ordenados = ORDER linea BY letra, num;
STORE datos_ordenados INTO 'output' USING PigStorage(',');