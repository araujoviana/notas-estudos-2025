+++
title = 'Método Mestre e Decremento e Conquista'
date = 2025-03-07T16:00:03-03:00
draft = false
categories = ["Projeto e Análise de Algoritmos II"]
tags = ["Algoritmos", "Difícil", "Recursão", "Big O", "Revisão" ]
+++

> Essas anotações foram convertidas das anotações do caderno via OCR então talvez hajam alguns errinhos minimos, mas o que eu vi eu arrumei 😮‍💨

## Análise de Código com Árvores

> Todas as análises aqui podem ser feitas usando árvores.

### Função `F(int N)`

```c
void F(int N) {
    if (N > 0) {
        printf("%d ", N);
        F(N - 1);
    }
}
```

### Recorrência $T(N)$

$$ T(N) = 1 \text{, se } N = 0 $$
$$ T(N) = 2T(N-1) + 1 \text{, se } N > 0 $$

Executa: $1 + 2 + 4 + 8 + ... + 2^N$ passos.

### Progressão Geométrica (PG)

Dado $A_1 = 1$ e $Q = 2$.

$$ S_{PG} = A_1 \cdot \frac{Q^N - 1}{Q - 1} $$

Com $A_1 = 1$ e $Q = 2$:

$$ S_{PG} = \frac{2^{N+1} - 1}{2 - 1} $$
$$ S_{PG} = 2^{N+1} - 1 $$
$$ O(2^N) $$

### Outra Função `F(int N)`

```c
void F(int N) {
    if (N > 0) {
        printf("%d ", N);
        F(N - 2);
    }
}
```

### Análise da Recorrência $T(N)$

$$ T(N) = 1 \text{, se } N = 0 $$
$$ T(N) = T(N-1) + T(N-2) + 1 \text{, se } N > 0 $$

*   Pior caso: $O(2^N)$
*   Melhor caso: $O(2^N)$

É $O(2^N)$ porque temos duas chamadas recursivas.

### Karatsuba

$$ T(N) = 1 \text{, se } N = 1 $$
$$ T(N) = 4T(N/2) + N \text{, se } N > 1 $$

### Progressão Geométrica (PG) Karatsuba

Vai até $Log_2 N$.

$$ A_1 = 1 $$
$$ Q = 4 $$
$$ S_{PG} = A_1 \cdot \frac{Q^N - 1}{Q - 1} $$

$$ S_{PG} = 1 \cdot \frac{4^{Log_2 N} - 1}{4 - 1} $$

$$ = \frac{(2^{Log_2 N})^2 - 1}{3} $$

$$ = \frac{(2^{Log_2 N})^2 - 1}{3} \sim \frac{N^2 - 1}{3} $$

$$ O(N^2) $$

### Karatsuba (Outra Variação)

$$ T(N) = 1 \text{, se } N = 1 $$
$$ T(N) = 3T(N/2) + N \text{, se } N > 1 $$

Vai para $3^0 + 3^1 + 3^2 + ... + 3^{Log_2 N}$ (PG).

$$ A_1 = 1 $$
$$ Q = 3 $$
$$ N = Log_2 N + 1 $$

$$ S_{PG} = A_1 \cdot \frac{Q^N - 1}{Q - 1} $$

$$ S_{PG} = \frac{3^{Log_2 N} - 1}{3 - 1} $$

$$ S_{PG} = \frac{N^{Log_2 3} - 1}{2} $$

$$ O(N^{Log_2 3}) $$

### Teorema Mestre (Divisão e Conquista)

$$ T(N) = aT(N/b) + F(N), \text{ com } a \geq 1, b \geq 1 $$

$$ F(N) = O(N^k Log^p N), \text{ com } k \geq 0 \text{ e } p \geq 0 $$

Três casos:

1.  Se $a < b^k$, então $T(N) = O(N^k)$.
2.  Se $a = b^k$, então $T(N) = O(N^k Log^{p+1} N)$.
3.  Se $a > b^k$, então $T(N) = O(N^{Log_b a})$.

### Exemplos Teorema Mestre

$$ T(N) = 3T(N/2) + 1 $$

$a = 3$, $b = 2$, $k = 0$

$$ a > b^k $$
$$ 3 > 2^0 $$

Caso 1: $T(N) = O(N^{Log_2 3})$

$$ T(N) = T(3N/4) + 1 $$

$a = 1$, $b = 4/3$, $k = 0$

$$ a = (\frac{b}{3})^k $$
$$ 1 = (\frac{4}{3})^0 $$

Caso 2: $T(N) = O(N^{k} Log^{\frac{p+1}{b}} N) = O(Log_{\frac{4}{3}} N)$

$$ T(N) = 3T(N/9) + N^1 Log N $$

$a = 3$, $b = 9$, $k = 1$

$$ a < b^k $$
$$ 3 < 9^1 $$

Caso 3: $T(N) = O(N Log N)$

### Decremento e Conquista

> Observar o padrão!

$$ T(N) = T(N-1) + 1 \text{ , } \Theta(N) $$
$$ T(N) = T(N-1) + N \text{ , } \Theta(N^2) $$
$$ T(N) = T(N-1) + N^2 \text{ , } \Theta(N^3) $$
$$ T(N) = T(N-2) + N^2 \text{ , } \Theta(N^3) $$
$$ T(N) = T(N-100) + N Log N \text{ , } \Theta(N^2 Log N) $$

$$ T(N) = 2T(N-1) + 1 \text{ , } \Theta(2^N) $$
$$ T(N) = 3T(N-1) + 1 \text{ , } \Theta(3^N) $$
$$ T(N) = 4T(N-1) + N \cdot V \cdot N \text{ , } \Theta(N \cdot V \cdot N) $$
$$ T(N) = 5T(N-77) + N Log N \text{ , } \Theta(5^{N/77} \cdot N \cdot Log N) $$

### Decremento e Conquista (Generalizado)

$$ T(N) = aT(N-b) + F(N) \text{ , com } a \geq 1 \text{ , } b \geq 1 $$

$$ F(N) = O(N^k Log^p N) \text{ , com } k \geq 0 \text{ e } p \geq 0 $$

3 Casos:

1.  Se $a < 1$, então $T(N) = O(F(N))$.
2.  Se $a = 1$, então $T(N) = O(N \cdot F(N))$.
3.  Se $a > 1$, então $T(N) = O(a^N \cdot F(N))$.
