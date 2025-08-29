# Data Flow Optimization in Ad Hoc Networks using Genetic Algorithms

This repository contains the source code and documentation for a study on data flow optimization in wireless ad hoc networks. The goal is to minimize the total routing cost by efficiently distributing data traffic through multiple paths.

The core of this work is an optimization model that uses Genetic Algorithms (GA) and computational simulations to validate the results.

<!--The full paper is available [here]().-->

## Repository Contents

* **`ga_otimizacao_latencia.ipynb`**: A Google Colaboratory notebook that implements the Genetic Algorithm to find the optimal path. It includes the network setup, the GA model, and the final results.
<!--* **`Otimização_em_Redes (1).pdf`**: The full academic paper in Portuguese, which details the motivation, methodology, and critical analysis of the results.-->

## Abstract

Wireless ad hoc networks are widely used in scenarios where there is no communication infrastructure, such as military operations and emergency situations. In this work, we propose an optimization model to efficiently distribute data flow in an ad hoc network, aiming to minimize the total routing cost through multiple paths. We use Linear Programming techniques and computational simulations to validate the results. The tests show the importance of mathematical modeling in the performance of dynamic networks.

## Problem Description

The network is represented as a directed graph, where nodes correspond to mobile devices and edges represent communication links. Each link has a specific latency (`l_ij`) and a maximum capacity (`c_ij`).

The objective is to find the most efficient way to route data flow from a source node (`s`) to a destination node (`t`), minimizing the total communication cost. The model allows for the use of multiple paths simultaneously to balance traffic and increase network resilience.

* **Source Node (s):** 0
* **Destination Node (t):** 9
* **Demand (d):** 10 units

## Solution Approach

The solution uses a Genetic Algorithm (GA), a meta-heuristic inspired by natural selection, crossover, and mutation.

* **Individual:** Each individual in the GA's population represents a viable path from the source to the destination.
* **Fitness Function:** The fitness of each path is evaluated based on the sum of the latencies of its links. Paths that violate the capacity constraint are severely penalized.
* **Genetic Operators:** The algorithm uses crossover to combine two parent paths and mutation to introduce new sub-paths, ensuring genetic diversity and preventing local optima.

## Results

After running the Genetic Algorithm, the best path found was:
* **Best Path:** `[0, 6, 7, 9]`
* **Total Latency:** `18`

The algorithm successfully found an efficient path that respected the network's capacity constraints. A visualization of the network graph and the best path can be seen in the notebook's output.

## How to Run

1.  Open the `ga_otimizacao_latencia.ipynb` notebook in Google Colaboratory.
2.  Install the required libraries by running the first code cell: `pip install networkx matplotlib numpy`.
3.  Run the notebook cells sequentially to define the network, execute the Genetic Algorithm, and visualize the results.

---

<!--## Citation

Please cite this work as follows:

SILVA DE ANDRADE, A. **Otimização do Fluxo de Dados em uma Rede Ad Hoc com Múltiplos Caminhos**. 2025. Artigo Científico. [local de publicação/repositório]. Disponível em: `Otimização_em_Redes (1).pdf`.-->