# Otimização de Roteamento com Múltiplos Caminhos usando Algoritmo Genético

## Resumo do Projeto

[cite_start]Este projeto propõe um modelo de otimização para distribuir o fluxo de dados de forma eficiente em uma **rede ad hoc**[cite: 7, 13]. [cite_start]Redes ad hoc sem fio são amplamente utilizadas em cenários onde não há infraestrutura de comunicação, como operações militares ou situações de emergência[cite: 6, 12].

[cite_start]A comunicação nessas redes é historicamente gerenciada por protocolos de roteamento como o **AODV** e o **OLSR**[cite: 22]. [cite_start]No entanto, a natureza dinâmica dessas redes torna a otimização um desafio complexo[cite: 25]. [cite_start]Para isso, o projeto utiliza um **Algoritmo Genético (GA)** para encontrar a rota de menor **latência** entre um nó de origem e um nó de destino[cite: 58].

[cite_start]A abordagem busca otimizar o fluxo de dados através de **múltiplos caminhos**, visando minimizar o custo total de roteamento e respeitando as restrições de capacidade dos enlaces[cite: 7, 36, 51].

## Funcionalidades

* [cite_start]**Modelagem da Rede**: A rede é representada como um grafo direcionado com 10 nós e 16 arestas, onde cada enlace possui latência e capacidade máximas[cite: 63, 65].
* [cite_start]**Algoritmo Genético**: Cada indivíduo da população representa um caminho válido entre os nós de origem e destino[cite: 58].
* **Função de Aptidão (Fitness)**: A aptidão é calculada pela soma das latências de cada enlace. [cite_start]Caminhos que excedem a capacidade são penalizados com uma pontuação de aptidão muito alta, garantindo que o algoritmo descarte soluções inviáveis[cite: 59, 69, 81].
* [cite_start]**Operadores Genéticos**: O algoritmo utiliza operadores de cruzamento e mutação para diversificar a população e encontrar soluções eficientes[cite: 60, 70].

## Como Rodar

### Pré-requisitos
Para executar o notebook, você precisará das seguintes bibliotecas:
- `networkx`
- `matplotlib`
- `numpy`

Você pode instalá-las usando o `pip` com o arquivo `requirements.txt`:
```bash
pip install -r requirements.txt