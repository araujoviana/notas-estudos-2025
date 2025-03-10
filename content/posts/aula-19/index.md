+++
title = 'Lemas de Árvores Binárias'
date = 2025-03-10T12:48:03-03:00
draft = false
categories = ["Estrutura de Dados II"]
tags = ["Algoritmos", "Big O"]
+++

## Continuação de Árvores Binárias

### Características

#### Lema 1

O número máximo de nós em um nível $i$ é $2^i$, tal que $0 \leq i \leq k$.

#### Lema 2

Se a altura de uma árvore binária é $k$ tal que $(x \geq 0)$, então o *número máximo de nós* da árvore é $2^{k+1}-1$

#### Lema 3

Se:
- $n_0$ = quantidade de nós com grau 0 (ou seja, $n_0$ é a quantidade de nós folhas da árvore)
- $n_1$ = quantidade de nós com grau 1
- $n_2$ = quantidade de nós com grau 2 

Então
$$n_0 = n_2 + 1$$

#### Lema 5

A altura $k$ de uma árvore binária completa com $n$ nós é 
$$\log_2(n+1)-1$$
