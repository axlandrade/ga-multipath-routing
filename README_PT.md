# Otimização do Fluxo de Dados em Redes Ad Hoc usando Algoritmos Genéticos

Este repositório contém o código-fonte para um estudo sobre a otimização do fluxo de dados em redes ad hoc sem fio. O objetivo é minimizar a latência total de roteamento encontrando um caminho ótimo com o uso de um Algoritmo Genético (GA).

O projeto está configurado para rodar dentro de um **contêiner Docker**, garantindo um ambiente de desenvolvimento consistente e reprodutível.

---

## Conteúdo do Repositório

* **`ga_otimizacao_latencia.ipynb`**: Um notebook Jupyter que implementa o Algoritmo Genético para encontrar o caminho ideal. Ele inclui a configuração da rede, o modelo do GA e os resultados finais.
* **`.devcontainer/`**: Esta pasta contém os arquivos de configuração (`devcontainer.json`, `Dockerfile`) para o ambiente de desenvolvimento do VS Code (Dev Container).
* **`requirements.txt`**: Lista as dependências Python necessárias para o projeto.
---

## Resumo

As redes ad hoc sem fio são amplamente utilizadas em cenários onde não há infraestrutura de comunicação, como em operações militares e situações de emergência. Neste trabalho, propomos um modelo de otimização para distribuir o fluxo de dados de forma eficiente em uma rede ad hoc, visando minimizar o custo total de roteamento por meio de múltiplos caminhos. Para validar os resultados, usamos técnicas de Programação Linear e simulações computacionais. Os testes mostram a importância da modelagem matemática no desempenho de redes dinâmicas.

---

## Descrição do Problema

A rede é representada como um grafo direcionado, onde os nós correspondem a dispositivos móveis e as arestas representam os enlaces de comunicação. Cada enlace possui uma latência (`l_ij`) e uma capacidade máxima (`c_ij`).

O objetivo é encontrar a forma mais eficiente de encaminhar o fluxo de dados de um nó de origem (`s`) para um nó de destino (`t`), minimizando a latência total de comunicação e respeitando as restrições de capacidade dos enlaces.

* **Nó de Origem (s):** 0
* **Nó de Destino (t):** 9
* **Demanda (d):** 10 unidades

---

## Abordagem da Solução

A solução utiliza um **Algoritmo Genético (GA)**, uma meta-heurística inspirada nos princípios de seleção natural.

* **Indivíduo:** Cada indivíduo na população do GA representa um caminho viável entre a origem e o destino.
* **Função de Aptidão (Fitness):** A aptidão de cada caminho é avaliada com base na soma das latências de seus enlaces. Caminhos que violam a restrição de capacidade são severamente penalizados.
* **Operadores Genéticos:** O algoritmo usa operadores de cruzamento e mutação para explorar o espaço de soluções e encontrar um caminho ótimo.

---

## Resultados

Após a execução do Algoritmo Genético, o melhor caminho encontrado foi:

* **Melhor Caminho:** `[0, 6, 7, 9]`
* **Latência Total:** `18`

O algoritmo foi capaz de encontrar com sucesso um caminho eficiente que respeitou as restrições de capacidade da rede.

---

## Como Executar 🚀

Este projeto utiliza **VS Code Dev Containers** para simplificar a configuração. O contêiner já inclui Python e todas as bibliotecas necessárias, dispensando qualquer instalação manual na sua máquina local, exceto pelos pré-requisitos.

### Pré-requisitos

* [Git](https://git-scm.com/)
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [Visual Studio Code](https://code.visualstudio.com/)
* A extensão [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) para o VS Code.

### Instruções Passo a Passo

1.  **Clone o Repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/seu-usuario/seu-repositorio.git)
    cd seu-repositorio
    ```

2.  **Abra no VS Code:**
    ```bash
    code .
    ```

3.  **Reabra no Contêiner:**
    Após abrir a pasta, o VS Code detectará a configuração do `.devcontainer` e exibirá uma notificação no canto inferior direito.

    Clique em **"Reopen in Container" (Reabrir no Contêiner)**. O VS Code irá construir a imagem Docker e iniciar o ambiente de desenvolvimento. Este processo pode levar alguns minutos na primeira vez.

4.  **Execute o Notebook:**
    Quando o contêiner estiver pronto, abra o arquivo `ga_otimizacao_latencia.ipynb`. Agora você pode executar as células em sequência para rodar a simulação e ver os resultados diretamente no VS Code.

---