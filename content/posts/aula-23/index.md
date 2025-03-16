+++
title = "Divisão e Conquista"
date = 2025-03-16T16:30:00-03:00
draft = false
categories = ["Algoritmos"]
tags = ["Divisão e Conquista", "Difícil", "Algoritmos"]
+++


## Introdução

Este documento aborda a técnica de **divisão e conquista** para análise e projeto de algoritmos.

## Divisão e Conquista

A técnica consiste em:

1.  **Dividir:** Quebrar o problema original em subproblemas menores.
2.  **Conquistar:** Resolver os subproblemas recursivamente.
3.  **Combinar:** Combinar as soluções dos subproblemas para obter a solução do problema original.

## Exemplos

### Busca Binária

*   **Problema:** Encontrar um elemento $x$ em um vetor ordenado.
*   **Divisão:** Comparar $x$ com o elemento do meio do vetor.
*   **Conquista:** Aplicar a busca recursivamente em um dos subvetores (esquerda ou direita).
*   **Combinar:** Simples (retornar o resultado da busca recursiva).
*   **Complexidade:** $T(n) = T(n/2) + 1$, resultando em $T(n) = \Theta(\lg n)$.

### Potência de um Número

*   **Problema:** Calcular $x^n$, dado um número $x$ e um inteiro $n \geq 0$.
*   **Algoritmo Ingênuo:** Multiplicar $x$ por si mesmo $n$ vezes ($O(n)$).
*   **Divisão e Conquista:**
    *   Se $n$ é par: $x^n = x^{n/2} \cdot x^{n/2}$.
    *   Se $n$ é ímpar: $x^n = x^{(n-1)/2} \cdot x^{(n-1)/2} \cdot x$.
*   **Complexidade:** $T(n) = T(n/2) + \Theta(1)$, resultando em $T(n) = \Theta(\log n)$.

### Contagem de Inversões

*   **Problema:** Dada uma permutação $p[1..n]$, determinar o número de inversões (pares $(i, j)$ tal que $i < j$ e $p[i] > p[j]$).
*   **Algoritmo Ingênuo:** Verificar todos os pares possíveis ($O(n^2)$).
*   **Divisão e Conquista (adaptação do Merge-Sort):**
    *   **Dividir:** Dividir a permutação em duas metades.
    *   **Conquistar:** Contar inversões recursivamente em cada metade (e ordená-las).
    *   **Combinar:** Contar inversões entre as duas metades durante a intercalação (merge).
*   **Complexidade:** $T(n) = 2T(n/2) + n$, resultando em $T(n) = O(n \lg n)$.

### Multiplicação de Inteiros (Karatsuba)

*    Problema: Dado dois números $x$ e $y$ com $n$ digítos, encontrar o produto.
*   **Divisão**: Divida em $x = 10^{\frac{n}{2}}a + b$ e $ y = 10^{\frac{n}{2}}c + d$
*   **Conquistar**: Recursivamente compute $ac$, $bd$ e $(a+b)(c+d)$.
*    **Combinar**: Use $(3) - (2) - (1)$ para encontrar $ad + bc$.
*   **Complexidade:** $$T(n) = 3T(\frac{n}{2}) + n = \Theta(n^{\log_23})$$

### Multiplicação de Matrizes

*   **Problema:** Dadas duas matrizes $A$ e $B$, calcular o produto $C = A \cdot B$.
*   **Algoritmo Ingênuo:** Calcular cada elemento $c_{ij}$ diretamente ($O(n^3)$).
*   **Divisão e Conquista (ingênuo):**
    *   Dividir as matrizes em 4 submatrizes de tamanho $n/2 \times n/2$.
    *   Realizar 8 multiplicações de submatrizes recursivamente.
    *   Realizar 4 somas de submatrizes ($O(n^2)$).
    *   Complexidade:  $T(n) = 8T(n/2) + \Theta(n^2)$, resultando em $T(n) = \Theta(n^3)$ (não melhora o algoritmo ingênuo).

*   **Algoritmo de Strassen:**
    *   Reduz o número de multiplicações recursivas para 7, através de manipulações algébricas (cálculo de produtos intermediários $P_1, P_2, ..., P_7$).
    *   Complexidade: $T(n) = 7T(n/2) + \Theta(n^2)$, resultando em $T(n) = \Theta(n^{\lg 7}) = O(n^{2.81})$.

### Seleção do k-ésimo Mínimo

*   **Problema:** Dado um vetor $A[1..n]$ e um inteiro $k$, encontrar o *k*-ésimo menor elemento de $A$.
*    **Solução simples**: ordenar o vetor $O(n \log(n))$
*   **Divisão e conquista, particionamento:**
    1. Particionar o vetor utilizando a lógica do *QuickSort*.
        -   Se a posição do pivô ($m$) for igual a $k$, o pivô é o elemento procurado.
        -   Se $k < m$, buscar recursivamente no subvetor à esquerda do pivô.
        -   Se $k > m$, buscar recursivamente no subvetor à direita do pivô, ajustando o valor de $k$.
    2. Pior caso é $$O(n^2)$$
*   **Algoritmo recursivo (linear):**
    *   **Escolha do pivô "mediana das medianas":**
        1.  Dividir o vetor em grupos de 5 elementos.
        2.  Ordenar cada grupo.
        3.  Encontrar a mediana de cada grupo.
        4.  Encontrar a mediana das medianas ($m$) recursivamente.
        5.  Usar $m$ como pivô.
    *   **Divisão:** Particionar o vetor em três sublistas: elementos menores que $m$ ($L_1$), elementos iguais a $m$ ($L_2$), e elementos maiores que $m$ ($L_3$).
    *   **Conquista:**
        *   Se $|L_1| \geq k$, buscar recursivamente o *k*-ésimo menor em $L_1$.
        *   Se $|L_1| + |L_2| \geq k$, o *k*-ésimo menor é $m$.
        *   Senão, buscar recursivamente o $(k - |L_1| - |L_2|)$-ésimo menor em $L_3$.

*   **Complexidade:** $T(n) \leq T(n/5) + T(3n/4) + cn$, mostrando (por indução) que $T(n) \leq 20cn$, portanto, $T(n) = O(n)$.

