+++
title = 'Resolução de Sistemas Lineares I'
date = 2025-03-07T15:30:03-03:00
draft = false
categories = ["Algoritmos Numéricos"]
tags = ["Algoritmos", "Difícil", "Recursão"]
+++

## Método de Gauss para Resolução de Sistemas Lineares

O método de Gauss é um algoritmo para resolver sistemas de equações lineares, transformando o sistema original em um *sistema triangular superior equivalente*.

### Eliminação Gaussiana com Substituição Inversa

#### Algoritmo

1.  **Entrada (INPUT):** Número de incógnitas e equações ($n$), e a matriz aumentada $A = [a_{ij}]$, onde $1 \leq i \leq n$ e $1 \leq j \leq n+1$.
2.  **Saída (OUTPUT):** Solução $x_1, x_2, ..., x_n$, ou uma mensagem indicando que não existe solução única.
3.  **Processo de Eliminação:**

    Para $i = 1, ..., n-1$, realizar os seguintes passos:

    *   Encontrar o menor inteiro $p$ tal que $i \leq p \leq n$ e $a_{pi} \neq 0$. Se não existir tal $p$, então não existe solução única (OUTPUT).
    *   Se $p \neq i$, trocar as linhas $E_p$ e $E_i$.
    *   Para $j = i+1, ..., n$, realizar:

        *   Calcular $m_{ji} = \frac{a_{ji}}{a_{ii}}$.
        *   Realizar a operação $E_j - m_{ji}E_i \rightarrow E_j$.
4.  Se $a_{nn} = 0$, então não existe solução única (OUTPUT).
5.  **Substituição Inversa:**

    *   Calcular $x_n = \frac{a_{n,n+1}}{a_{nn}}$.
    *   Para $i = n-1, ..., 1$, calcular

        $$
        x_i = \frac{a_{i,n+1} - \sum_{j=i+1}^{n} a_{ij}x_j}{a_{ii}}
        $$
6.  **Saída (OUTPUT):** Solução $x_1, ..., x_n$.

#### Exemplo Básico (2x2)

Considere o sistema:

$$
x_1 - x_2 = 1
$$

$$
2x_1 + x_2 = 5
$$

Resolvendo por substituição:

$$
x_1 = \frac{5 - x_2}{2}
$$

Substituindo na primeira equação:

$$
\frac{5 - x_2}{2} - x_2 = 1 \Rightarrow x_2 = 1
$$

$$
x_1 = 2
$$

Resolvendo por escalonamento com matriz:

$$
\begin{bmatrix}
1 & -1 & 1 
\end{bmatrix}
$$
$$
\begin{bmatrix}
2 & 1 & 5
\end{bmatrix}
$$

Operações:

*   $(E_2 - 2E_1) \rightarrow E_2$

$$
\begin{bmatrix}
1 & -1 & 1 
\end{bmatrix}
$$
$$
\begin{bmatrix}
0 & 3 & 3
\end{bmatrix}
$$

$$
3x_2 = 3 \Rightarrow x_2 = 1
$$

#### Exemplo 3x3 no Formato Triangular

Um sistema triangular 3x3 tem a forma:

$$
a_{11}x_1 + a_{12}x_2 + a_{13}x_3 = a_{14}
$$

$$
a_{22}x_2 + a_{23}x_3 = a_{24}
$$

$$
a_{33}x_3 = a_{34}
$$

A solução é encontrada por substituição inversa:

$$
x_3 = \frac{a_{34}}{a_{33}}
$$

$$
x_2 = \frac{a_{24} - a_{23}x_3}{a_{22}}
$$

$$
x_1 = \frac{a_{14} - a_{13}x_3 - a_{12}x_2}{a_{11}}
$$

### Complexidade do Algoritmo Triangular

A complexidade do algoritmo triangular é determinada pelo número de multiplicações/divisões e adições/subtrações.

#### Multiplicações/Divisões:

$$
\sum_{i=1}^{n-1} (n-i) = \frac{n^2 - n}{2}
$$

#### Adições/Subtrações:

$$
\sum_{i=1}^{n-1} i = \frac{n^2 - n}{2}
$$

### Algoritmo de Pivotamento

O pivotamento é uma técnica utilizada no método de Gauss para melhorar a estabilidade numérica do algoritmo.

#### Matriz Aumentada:

![matriz](/images/pivotamento.png)

#### Passos do Pivotamento:

Para $k = 1, 2, ..., n$:

![matriz](/images/passospivot.png)

Onde $a_{ij}^{(k)}$ representa o elemento na linha $i$ e coluna $j$ após o $k$-ésimo passo do pivotamento.

### Operações Elementares

As seguintes operações elementares podem ser aplicadas nas equações de um sistema linear sem alterar a solução:

1.  Multiplicar uma equação por uma constante não nula: $(\lambda E_i) \rightarrow (E_i)$.
2.  Adicionar um múltiplo de uma equação a outra: $(E_j + \lambda E_i) \rightarrow E_j$.
3.  Trocar a posição de duas equações: $(E_i) \leftrightarrow (E_j)$.

O método de Gauss consiste em transformar o sistema original em um sistema triangular superior equivalente, utilizando estas operações elementares.
