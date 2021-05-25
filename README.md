# Processador nRisc 8 bits
Projeto final da disciplina de Arquitetura e Organização de Computadores.
O programa teste é capaz de realizar soma dos elementos da diagonal de uma matriz 3x3 e foi escrito na linguagem assembly do MIPS. Posteriormente traduzido para binário e verilog.
Atendendo às restrições de endereçamento impostas por uma arquitetura de 8 bits, o uso geral do processador e as necessidades do programa teste, cheguei a estas instruções que considero indispensáveis para o funcionamento:
--Tipo R:
-> ADD
-> SUB
-> INC
-> COMPS

--Tipo I:
-> MOV
-> LOADI
-> LOADA

--Tipo J:
-> JUMP

--Outras:
-> CALL
-> RETURN

O caminho de dados também foi pensado para atender um propósito geral, atendendo às restrições de endereçamento e as necessidades do programa teste:
![image](https://user-images.githubusercontent.com/62568976/119491757-adfe3800-bd34-11eb-964b-0d0d23dc74a4.png)
