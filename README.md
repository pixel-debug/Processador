# Processador nRisc 8 bits
Projeto final da disciplina de Arquitetura e Organização de Computadores.

###### Programa teste
O programa teste é capaz de realizar soma dos elementos da diagonal de uma matriz 3x3 e foi escrito na linguagem assembly do MIPS. Posteriormente traduzido para binário e verilog.

###### Instruções
Atendendo às restrições de endereçamento impostas por uma arquitetura de 8 bits, o uso geral do processador e as necessidades do programa teste, cheguei a estas instruções que considero indispensáveis para o funcionamento:

-->Tipo R:
- ADD
- SUB
- INC
- COMPS

-->Tipo I:
- MOV
- LOADI
- LOADA

-->Tipo J:
- JUMP

-->Outras:
- CALL
- RETURN

###### DataPath
O caminho de dados também foi pensado para atender um propósito geral, atendendo às restrições de endereçamento e as necessidades do programa teste:

![image](https://user-images.githubusercontent.com/62568976/119491757-adfe3800-bd34-11eb-964b-0d0d23dc74a4.png)

###### ** Importante ** 
Ao implementar o módulo do MUX, percebi que não funcionava na minha máquina, apenas nas dos colegas. Como resultado, o módulo final ( juntei tudo - "nRisc" ) não realizou a
simulação como deveria. Porém, individualmente, os blocos funcionam.
