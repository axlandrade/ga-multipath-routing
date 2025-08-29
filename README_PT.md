# Otimização do Fluxo de Dados em Redes Ad Hoc usando Algoritmos Genéticos

Este repositório contém o código-fonte e a documentação para um estudo sobre a otimização do fluxo de dados em redes ad hoc sem fio. O objetivo é minimizar o custo total de roteamento distribuindo o tráfego de forma eficiente por múltiplos caminhos.

O trabalho se baseia em um modelo de otimização que utiliza Algoritmos Genéticos (GA) e simulações computacionais para validar os resultados.

<!--O artigo completo está disponível [aqui](Otimização_em_Redes (1).pdf).-->

## Conteúdo do Repositório

* **`ga_otimizacao_latencia.ipynb`**: Um notebook do Google Colaboratory que implementa o Algoritmo Genético para encontrar o caminho ideal. Ele inclui a configuração da rede, o modelo do GA e os resultados finais.
<!--* **`Otimização_em_Redes (1).pdf`**: O artigo científico completo, que detalha a motivação, a metodologia e a análise crítica dos resultados.-->

## Resumo

As redes ad hoc sem fio são amplamente utilizadas em cenários onde não há infraestrutura de comunicação, como em operações militares e situações de emergência. Neste trabalho, propomos um modelo de otimização para distribuir o fluxo de dados de forma eficiente em uma rede ad hoc, visando minimizar o custo total de roteamento por meio de múltiplos caminhos. Para validar os resultados, usamos técnicas de Programação Linear e simulações computacionais. Os testes mostram a importância da modelagem matemática no desempenho de redes dinâmicas.

## Descrição do Problema

A rede é representada como um grafo direcionado, onde os nós correspondem a dispositivos móveis e as arestas representam os enlaces de comunicação. Cada enlace possui uma latência (`l_ij`) e uma capacidade máxima (`c_ij`).

O objetivo é encontrar a forma mais eficiente de encaminhar o fluxo de dados de um nó de origem (`s`) para um nó de destino (`t`), minimizando o custo total de comunicação. O modelo permite o uso de múltiplos caminhos simultaneamente para balancear o tráfego e aumentar a resiliência da rede.

* **Nó de Origem (s):** 0
* **Nó de Destino (t):** 9
* **Demanda (d):** 10 unidades

## Abordagem da Solução

A solução utiliza um **Algoritmo Genético (GA)**, uma meta-heurística inspirada nos princípios de seleção natural, cruzamento genético e mutação.

* **Indivíduo:** Cada indivíduo na população do GA representa um caminho viável entre a origem e o destino.
* **Função de Aptidão (Fitness):** A aptidão de cada caminho é avaliada com base na soma das latências de seus enlaces. Caminhos que violam a restrição de capacidade são severamente penalizados.
* **Operadores Genéticos:** O algoritmo usa o operador de cruzamento (crossover) para combinar dois caminhos parentais e o de mutação para introduzir novos subcaminhos, garantindo diversidade genética e evitando ótimos locais.

## Resultados

Após a execução do Algoritmo Genético, o melhor caminho encontrado foi:

* **Melhor Caminho:** `[0, 6, 7, 9]`
* **Latência Total:** `18`

O algoritmo foi capaz de encontrar com sucesso um caminho eficiente que respeitou as restrições de capacidade da rede. A visualização do grafo da rede e do melhor caminho pode ser encontrada na saída do notebook.

## Como Executar

1.  Abra o notebook `ga_otimizacao_latencia.ipynb` no Google Colaboratory.
2.  Instale as bibliotecas necessárias executando a primeira célula de código: `pip install networkx matplotlib numpy`.
3.  Execute as células do notebook em sequência para definir a rede, rodar o Algoritmo Genético e visualizar os resultados.

---

<!--## Como Citar

Por favor, cite este trabalho da seguinte forma:

SILVA DE ANDRADE, A. **Otimização do Fluxo de Dados em uma Rede Ad Hoc com Múltiplos Caminhos**. 2025. Artigo Científico. [local de publicação/repositório]. Disponível em: `Otimização_em_Redes (1).pdf`.-->