+++
title = 'Resolução de Recorrências'
date = 2025-02-28T14:17:13-03:00
draft = false
categories = ["Projeto e Análise de Algoritmos II"]
tags = ["Big O", "Algoritmos", "Recursão", "Difícil"]
+++

## Métodos para Resolver Recorrências

- **Substituição**  
- **Iterativos**  
- **Árvore de Recursão**  
- **Método Mestre**

---

## 1. Substituição

A ideia é arriscar um **palpite** para a solução da recorrência  
e, em seguida, usar **indução matemática** para provar que o palpite está correto.

---

### Exemplo 1

```c
int f(int n) {
  if (n > 0) {
    printf("%d", n);
    f(n - 1);
  }
  return 0;
}
```

**Recorrência:**

- $T(n) = 1$ se $n = 0$
- $T(n) = T(n-1) + 1$ se $n > 0$

**Palpite:**  
$T(n) = \Theta(n)$

**Prova por Indução:**

- **Base:**  
  Como usar $T(0) = 1$ diretamente para $n = 0$ não funciona,  
  ajustamos a base para $n = 1$:
  
  $$
  T(1) = T(0) + 1 \\
  \quad = 1 + 1 \\
  \quad = 2
  $$
  
  Para que $T(1) \le c \cdot 1$, precisamos de  
  $$
  c \ge 2.
  $$

- **Hipótese:**  
  Suponha que para todo $k < n$ vale:
  
  $$
  T(k) \le c \cdot k.
  $$

- **Passo Indutivo:**  
  Temos:
  
  $$
  T(n) = T(n-1) + 1.
  $$
  
  Pela hipótese:
  
  $$
  T(n) \le c(n-1) + 1 \\
  \quad = cn - c + 1.
  $$
  
  Para garantir que $T(n) \le c \cdot n$, é necessário que:
  
  $$
  -c + 1 \le 0 \\
  \quad \Longrightarrow \quad c \ge 1.
  $$
  
  Como a base exige $c \ge 2$, a condição está satisfeita.

---

### Exemplo 2

**Recorrência:**

- $T(N) = 1$ se $N = 1$
- $T(N) = 2T\left(\frac{N}{2}\right) + N$ se $N > 1$

**Palpite:**  
$T(N) = O(N \log N)$

**Prova por Indução:**

- **Base:**  
  Para $N = 2$:
  
  $$
  T(2) = 2T(1) + 2 \\
  \quad = 2 \cdot 1 + 2 \\
  \quad = 4.
  $$
  
  Queremos que:
  
  $$
  T(2) \le C \cdot (2 \log_2 2) \\
  \quad = 2C.
  $$
  
  Assim, basta escolher $C \ge 2$.

- **Hipótese Indutiva:**  
  Suponha que para todo $K < N$:
  
  $$
  T(K) \le C \cdot K \log_2 K.
  $$

- **Passo Indutivo:**  
  Começamos com:
  
  $$
  T(N) = 2T\left(\frac{N}{2}\right) + N.
  $$
  
  Pela hipótese:
  
  $$
  T(N) \le 2 \left[ C \left( \frac{N}{2} \log_2 \frac{N}{2} \right) \right] + N.
  $$
  
  Observe que:
  
  $$
  \log_2 \frac{N}{2} = \log_2 N - \log_2 2.
  $$
  
  Portanto:
  
  $$
  T(N) \le CN \left( \log_2 N - 1 \right) + N \\
  \quad = CN \log_2 N - CN + N \\
  \quad = CN \log_2 N + N(1-C).
  $$
  
  Para que $T(N) \le CN \log_2 N$, precisamos que:
  
  $$
  N(1-C) \le 0 \\
  \quad \Longrightarrow \quad C \ge 1.
  $$
  
  Como $C \ge 2$ na base, a prova está completa.

---

### Exemplo 3

**Recorrência:**

- $T(N) = 1$ se $N = 1$
- $T(N) = 4T\left(\frac{N}{2}\right) + N$ se $N > 1$

**Palpite:**  
$T(N) = O(N^3)$  
> Nota: Uma análise pelo Teorema Mestre indicaria $O(N^2)$, mas a prova por indução com $O(N^3)$ também é válida, apenas com uma constante maior.

**Prova por Indução:**

- **Base:**  
  Para $N = 2$:
  
  $$
  T(2) = 4T(1) + 2 \\
  \quad = 4 \cdot 1 + 2 \\
  \quad = 6.
  $$
  
  Desejamos:
  
  $$
  T(2) \le C \cdot (2^3) \\
  \quad = 8C.
  $$
  
  Basta escolher $C \ge 1$.

- **Hipótese Indutiva:**  
  Suponha que para todo $K < N$:
  
  $$
  T(K) \le C \cdot K^3.
  $$

- **Passo Indutivo:**  
  Temos:
  
  $$
  T(N) = 4T\left(\frac{N}{2}\right) + N.
  $$
  
  Pela hipótese:
  
  $$
  T(N) \le 4 \cdot C \left(\frac{N}{2}\right)^3 + N.
  $$
  
  Note que:
  
  $$
  \left(\frac{N}{2}\right)^3 = \frac{N^3}{8}.
  $$
  
  Assim:
  
  $$
  T(N) \le 4C \cdot \frac{N^3}{8} + N \\
  \quad = \frac{1}{2} C N^3 + N.
  $$
  
  Para garantir que $T(N) \le C \cdot N^3$, é necessário que:
  
  $$
  \frac{1}{2} C N^3 + N \le C N^3.
  $$
  
  Isso implica:
  
  $$
  N \le \frac{1}{2} C N^3.
  $$
  
  Ou seja:
  
  $$
  C N^2 \ge 2.
  $$
  
  Para $N \ge 2$, essa condição é satisfeita se $C \ge \frac{2}{N^2}$.  
  Assim, com $C \ge 1$ (ou um valor maior, conforme necessário), a prova está concluída.

---

## 2. Exemplos de Funções Recursivas

### Exemplo 4: Função F1

```c
void f1(int n) {
  if (n > 0) {
    printf("%d", n);
    f1(n-1);
  }
}
```

- **Recorrência:**  
  $$
  T(N) = T(N-1) + O(1), \quad T(0) = O(1).
  $$

- **Complexidade:**  
  $O(N)$ – a função é chamada $N$ vezes.

---

### Exemplo 5: Função F2

```c
void f2(int n) {
  if (n > 0) {
    printf("%d", n);
    f2(n-10);
  }
}
```

- **Recorrência:**  
  $$
  T(N) = T(N-10) + O(1), \quad T(0) = O(1).
  $$

- **Complexidade:**  
  $O(N)$ –  
  mesmo reduzindo $n$ em 10 a cada chamada,  
  mais precisamente, $O(N/10) = O(N)$.

---

### Exemplo 6: Função F3

```c
void f3(int n) {
  if (n >= 1) {
    printf("%d", n);
    f3(n/2);
  }
}
```

- **Recorrência:**  
  $$
  T(N) = T(N/2) + O(1), \quad T(1) = O(1).
  $$

- **Complexidade:**  
  $O(\log N)$ –  
  o problema é dividido por 2 a cada passo.

---

### Exemplo 7: Função F4

```c
void f4(int n) {
  if (n > 0) {
    for (int j = 0; j < n; j++) {
      printf("%d", n);
    }
    f4(n-1);
  }
}
```

- **Recorrência:**  
  $$
  T(N) = T(N-1) + O(N), \quad T(0) = O(1).
  $$

- **Complexidade:**  
  $O(N^2)$ –  
  pois a soma das iterações é:
  
  $$
  N + (N-1) + (N-2) + \cdots + 1 \\
  \quad = \frac{N(N+1)}{2}.
  $$

---

### Exemplo 8: Função F5

```c
void f5(int n) {
  if (n > 1) {
    for (int j = 0; j < n; j++) {
      printf("%d", n);
    }
    f5(n/2);
  }
}
```

- **Recorrência:**  
  $$
  T(N) = T(N/2) + O(N), \quad T(1) = O(1).
  $$

- **Complexidade:**  
  $O(N)$ –  
  a soma das iterações forma uma série geométrica:
  
  $$
  N + \frac{N}{2} + \frac{N}{4} + \cdots + 1,
  $$
  
  cuja soma converge para um valor constante (aproximadamente 2).
