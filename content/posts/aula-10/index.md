+++
title = 'Análise de Algoritmos Iterativos'
date = 2025-02-21T14:28:49-03:00
draft = false
categories = ['Projeto e Análise e Algoritmos II']
tags = ['Algoritmos', 'Big O', 'Revisão']
+++


Vale lembrar que $O$ é diferente de $\theta$, então essa análise assintótica é do caso **médio** e não do pior caso.


```c
for (int i = 0; i < n; i++) {
  printf("%d", n);
}
```

O loop percorre por toda a estrutura `n`.

- Tempo: $\theta(n)$

---

```c
for (int i = 0; i < n; i++) {
  for (int j = 0; j < n; j++) {
    printf("%d", n);
  }
}
```
O loop percorre por toda a estrutura `n`, `n` vezes.

- Tempo: $\theta(n^2)$

--- 
```c
for (int i = 0; i < n; i++) {
  for (int j = 0; j < n; j++) {
    for (int k = 0; k < n; k++) {
      printf("%d", n);
    }
  }
}
```
O loop percorre por toda a estrutura `n`, `n` vezes, `n` vezes.

- Tempo: $\theta(n^3)$

---
```c
for (int i = 0; i < n; i += 2) {
  printf("%d", n);
}
```

O loop percorre toda a lista duas vezes mais rápido, ou seja, $\frac{n}{2}$, mas 2 é uma constante então ela não é considerada.

- Tempo: $\theta(n)$

---

```c
for (int i = 0; i < n; i += 100) {
  printf("%d", n);
}
```

O loop percorre toda a lista, cem vezes mais rápido, ou seja, $\frac{n}{100}$, mas assim como no último exemplo, a constante é desconsiderada.

- Tempo: $\theta(n)$

---

```c
for (int i = 0; i < n; i *= 2) {
  printf("%d", n);
}
```

Quando $2^k > n$, o algoritmo para, então:
$$2^k>n$$
$$k>\log_2 n$$

- Tempo: $\theta(\log_2 n)$

---

```c
for (int i = 0; i < (n / 2); i += 2) {
  for (int j = 0; j < n; j = j * 3) {
    printf("%d", n);
  }
}
```

`i` percorre até a metade de `n`, incrementando por 2, então o número de iterações é de $\frac{n}{4}$.

`j` percorre segue a sequência: $0,3,9,27,\dots$ até chegar em `n`, então o número de iterações é de $\log_3(n)$.

Ignorando a constante, temos:

- Tempo: $\theta(\log_3 n)$

---
```c
for (int i = 0; i < n; i++) {
  for (int j = i + 1; j < n; j++) {
    printf("%d", n);
  }
}
```

> Não tenho certeza se essa é a explicação mesmo, mas era parecido 🙃 

Para `i = 0` temos `j` iterando de 1 até $n-1$, logo temos $n-1$ passos.

Para `i = 1` temos `j` iterando de 2 até $n-1$, logo temos $n-1$ passos.

Temos a iteração:
$$1+2+3+\dots+n-2+n-1 = \frac{(1+n-1)(n-1)}{2}$$
$$=\frac{n(n-1)}{2}$$
$$=\frac{n^2-n}{2}$$

Ignorando as constantes, temos:

- Tempo: $\theta(n^2)$

---


```c
int i = 0;
int j = 0;

while (j < n) {
  if (i == n) {
    j++;
    i = 0;
  }
  i++;
}
```

Para `n = 5`

| i | j |
|---|---|
| 1 | 0 |
| 2 | 0 |
| 3 | 0 |
| 4 | 0 |
| 5 | 0 |
| 0 | 1 |
| 1 | 1 |
| 2 | 1 |
| 3 | 1 |
| 4 | 1 |
| 5 | 1 |
| 0 | 2 |


- Tempo: $\theta(n^2)$

---


```c
for (int i = 0; i * i < n; i++) {
  printf("%d", n);
}
```

Temos:
$$i \cdot i < n$$
$$i^2 \geq n$$
$$i \geq \sqrt{n}$$


- Tempo: $\theta(\sqrt{n})$

---

```c
for (int i = 0; i < n; i = i * i) {
  printf("%d", n);
}
```

Se `i` cresce de forma exponencial, então temos:

| i |
|---|
| 2 |
| 4 |
| 16|

Podemos o crescimento como:

$$\log(\log(\log \dots(\log n)))$$

- Tempo: $\theta(\log*n)$

Esse tipo de função é chamado de [logaritmo iterado](https://pt.wikipedia.org/wiki/Logaritmo_iterado).

---
```c
for (int i = 0; i < n; i = i + i) {
  printf("%d", n);
}
```
> Não tenho certeza se está certo, mas era o que estava escrito no meu caderno 🤷 

Para `i = i + i` temos:
$$i = i + i$$
$$i = 2i$$

- Tempo: $\theta(\log_2n)$

---


```c
int i = 1;
int k = 0;

while (k < n) {
  k = k + 1;
  i = i + 1;
}
```

| i | k     |
|---|-------|
| 1 | 0     |
| 2 | 1     |
| 3 | 1+2   |
| 4 | 1+2+3 |
| 5 | 1+2+3+4 |
| 6 | 1+2+3+4+5 |

Ou seja, temos:
$$1+2+3+\dots+i \geq n$$
Fazemos a soma de Gauss novamente:
$$\frac{(1+i)i}{2} \geq n = \frac{i+i^2}{2} \geq n$$
$$= i^2 \geq n$$
$$=i \geq \sqrt{n}$$

- Tempo: $\theta(\sqrt{n})$
