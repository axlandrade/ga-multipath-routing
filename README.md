# Reproducible Data Flow Optimization in Ad Hoc Networks using Genetic Algorithms

**[Leia em português](README_PT.md)**

This repository contains the source code for a study on data flow optimization in wireless ad hoc networks. The goal is to minimize the total routing latency by finding an optimal path using a Genetic Algorithm (GA).

The project is configured to run inside a **Docker container**, ensuring a consistent and reproducible development environment.

---

## Repository Contents

* **`ga_otimizacao_latencia.ipynb`**: A Jupyter notebook that implements the Genetic Algorithm to find the optimal path. It includes the network setup, the GA model, and the final results.
* **`.devcontainer/`**: This folder contains the configuration files (`devcontainer.json`, `Dockerfile`) for the VS Code development container.
* **`requirements.txt`**: Lists the Python dependencies required for the project.
---

## Abstract

Wireless ad hoc networks are widely used in scenarios where there is no communication infrastructure, such as military operations and emergency situations. In this work, we propose an optimization model to efficiently distribute data flow in an ad hoc network, aiming to minimize the total routing cost through multiple paths. We use Linear Programming techniques and computational simulations to validate the results. The tests show the importance of mathematical modeling in the performance of dynamic networks.

---

## Problem Description

The network is represented as a directed graph, where nodes correspond to mobile devices and edges represent communication links. Each link has a specific latency (`l_ij`) and a maximum capacity (`c_ij`).

The objective is to find the most efficient way to route data from a source node (`s`) to a destination node (`t`), minimizing the total communication latency while respecting the capacity constraints of the links.

* **Source Node (s):** 0
* **Destination Node (t):** 9
* **Demand (d):** 10 units

---

## Solution Approach

The solution uses a Genetic Algorithm (GA), a meta-heuristic inspired by natural selection.

* **Individual:** Each individual in the GA's population represents a viable path from the source to the destination.
* **Fitness Function:** The fitness of each path is evaluated based on the sum of the latencies of its links. Paths that violate the capacity constraint are severely penalized.
* **Genetic Operators:** The algorithm uses crossover and mutation to explore the solution space and find an optimal path.

---

## Results

After running the Genetic Algorithm, the best path found was:

* **Best Path:** `[0, 6, 7, 9]`
* **Total Latency:** `18`

The algorithm successfully found an efficient path that respected the network's capacity constraints.

---

## How to Run 🚀

This project uses **VS Code Dev Containers** to simplify setup. The container includes Python and all necessary libraries, so you don't need to install anything on your local machine except the prerequisites.

### Prerequisites

* [Git](https://git-scm.com/)
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) for VS Code.

### Step-by-Step Instructions

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/seu-usuario/seu-repositorio.git)
    cd seu-repositorio
    ```

2.  **Open in VS Code:**
    ```bash
    code .
    ```

3.  **Reopen in Container:**
    After opening the folder, VS Code will detect the `.devcontainer` configuration and show a notification in the bottom-right corner.

    Click on **"Reopen in Container"**. VS Code will then build the Docker image and launch the development environment. This may take a few minutes on the first run.

4.  **Run the Notebook:**
    Once the container is running, open the `ga_otimizacao_latencia.ipynb` file. You can now run the cells sequentially to execute the simulation and see the results directly within VS Code.

---