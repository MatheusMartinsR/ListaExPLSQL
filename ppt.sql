--1. Montar um bloco de programação que realize o processamento de uma tabuada qualquer, por exemplo a tabuada do número 150.
set serveroutput on;

declare 
numero_tabuada number;
begin
numero_tabuada := &numero_tabuada;
if numero_tabuada <= 0 then
dbms_output.put_line('Valores nulos ou menores que 0 não são aceitos');
else
for i in 1..10 loop
dbms_output.put_line(numero_tabuada * i);
end loop;
end if;
end;

--2 . Em um intervalo numérico inteiro, informar quantos números são pares e quantos são ímpares.

set serveroutput on;

declare 
inicio_numero number;
fim_numero number;
par number := 0;
impar number := 0;
begin
inicio_numero := &inicio_numero;
fim_numero := &fim_numero;
for i in inicio_numero..fim_numero loop
if i mod 2 = 0 then
par := par + 1;
else
impar := impar + 1;
end if;
end loop;
dbms_output.put_line('Pares: ' || par);
dbms_output.put_line('Impares: '  || impar);
end;

--3 Exibir e média dos valores pares em um intervalo numérico e soma dos ímpares.

set serveroutput on;

declare 
inicio_numero number;
fim_numero number;
quantidade_pares number := 0;
soma_pares number := 0;
media_pares number := 0;
quantidade_impares number := 0;
soma_impares number := 0;
begin
inicio_numero := &inicio_numero;
fim_numero := &fim_numero;
for i in inicio_numero..fim_numero loop
if i mod 2 = 0 then
quantidade_pares := quantidade_pares + 1;
soma_pares := soma_pares + i;
else
quantidade_impares := quantidade_impares + 1;
soma_impares := soma_impares + i;
end if;
end loop;

media_pares := soma_pares / quantidade_pares;

dbms_output.put_line('Pares: ' || quantidade_pares);
dbms_output.put_line('A média entre os números pares é: ' || media_pares);
dbms_output.put_line('Impares: ' || quantidade_impares);
dbms_output.put_line('A soma entre os números ímpares é: ' || soma_impares);
end;

