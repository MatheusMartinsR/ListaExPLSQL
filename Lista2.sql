-- 1) Desenvolva e execute um bloco SQL para calcular o valor total de uma compra, para isso o programa deve receber o nome de um produto, a quantidade de itens a serem  comprados e o preço do produto. 
--Deverá ser exibida uma mensagem ao usuário informando o valor total da compra.  
set serveroutput on; 

declare 
nome_prod varchar2(100) := &nome_prod;
quantidade_prod number := &quantidade_prod;
preco_prod number := &preco_prod;
valor_total number := quantidade_prod * preco_prod;
begin 
dbms_output.put_line('O nome do produto é: ' || nome_prod);
dbms_output.put_line('A quantidade desejada do produto foi de: ' || quantidade_prod);
dbms_output.put_line('O preço por unidae do produto é: ' || preco_prod);
dbms_output.put_line('O preco na quantidade desejada é: ' || valor_total);
end;

-- 2)Crie e execute um bloco PLSQL para receber 2 valores através de variáveis de substituição, verifique qual é o maior e faça a divisão do maior valor pelo menor e apresente o resultado na tela.
set serveroutput on;

declare
n1 number; 
n2 number;
maior number;
menor number;
dividir number;
begin
n1 := &number;
n2 := &number;
maior := null;
menor := null;
if n1 > n2 then
maior := n1;
menor := n2;
else 
maior := n2;
menor := n1;
end if;
dividir := maior / menor;
dbms_output.put_line('O resultado da divisão entre os números é de: ' || dividir);
end;

--3)Crie um bloco PLSQL para calcular e apresentar o salário anual de um funcionário adicionado do seu bônus anual. Ambos devem ser fornecidos por variáveis de substituição. 
--É necessário que seja realizado o tratamento de nulos tanto para bônus como para salário.
set serveroutput on;
declare 
salario_anual number;
bonus_anual number;
soma_salario_bonus number;
begin 
salario_anual := &number;
bonus_anual := &number;
if salario_anual <= 0 then
dbms_output.put_line('O salario não pode ser nulo');
elsif
bonus_anual <= 0 then
dbms_output.put_line('O bonus não pode ser nulo');
else
soma_salario_bonus := salario_anual + bonus_anual;
dbms_output.put_line('A soma do salário com o bonus vai ser de: ' || soma_salario_bonus);
end if;
end;

--4)	Faça um bloco PLSQL que listará de maneira automática os número na faixa de valores de 157 até 3299. Verifique calcule a média entre os números pares e a média entre os números ímpares.
SET SERVEROUTPUT ON
DECLARE
    inicio_faixa NUMBER := 157;
    fim_faixa NUMBER := 3299;
    soma_pares NUMBER := 0;
    qtd_pares NUMBER := 0;
    soma_impares NUMBER := 0;
    qtd_impares NUMBER := 0;
    numero NUMBER;

    media_pares NUMBER;
    media_impares NUMBER;
BEGIN
    FOR numero IN inicio_faixa..fim_faixa LOOP
        IF numero MOD 2 = 0 THEN
            soma_pares := soma_pares + numero;
            qtd_pares := qtd_pares + 1;
        ELSE
            soma_impares := soma_impares + numero;
            qtd_impares := qtd_impares + 1;
        END IF;
    END LOOP;

    IF qtd_pares > 0 THEN
        media_pares := soma_pares / qtd_pares;
    ELSE
        media_pares := 0;
    END IF;

    IF qtd_impares > 0 THEN
        media_impares := soma_impares / qtd_impares;
    ELSE
        media_impares := 0;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Média dos números pares: ' || media_pares);
    DBMS_OUTPUT.PUT_LINE('Média dos números ímpares: ' || media_impares);
END;


--5)	Escreva um bloco anônimo que recebe como variável de substituição um número inteiro(n) e calcula e aprsenta qual é o valor desse termo n na sequencia fibonacci, a saber 1 1 2 3 5 8...n.

begin

  -- Declarar as variáveis
  v_fibonacci number;

  -- Inicializar a variável
  v_fibonacci := 1;

  -- Iterar sobre os termos anteriores
  for i in 1..n-1 loop

    -- Calcular o próximo termo
    v_fibonacci := v_fibonacci + v_fibonacci - 1;

  end loop;

  -- Imprimir o resultado
  dbms_output.put_line('O termo ' || n || ' da sequência Fibonacci é ' || v_fibonacci);

end;













