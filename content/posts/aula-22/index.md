+++
title = "Método Iterativo de Jacobi"
date = 2025-03-16T15:30:00-03:00
draft = false
categories = ["Algoritmos Numéricos"]
tags = ["Algoritmos", "Iteração", "Python"]
+++

## Método Iterativo de Jacobi

A ideia central é, a partir de uma aproximação inicial, calcular aproximações sucessivas até que uma tolerância de erro seja alcançada.

**Passo 1: Isolamento das Variáveis**

Dado um sistema linear, isolamos cada variável:

$$x_i = \frac{1}{a_{ii}} \left( b_i - \sum_{\substack{j=1 \\ j \neq i}}^{n} a_{ij}x_j \right)$$

**Passo 2: Processo Iterativo**

A partir do isolamento, define-se o processo iterativo:

$$x_i^{(k)} = \frac{1}{a_{ii}} \left( b_i - \sum_{\substack{j=1 \\ j \neq i}}^{n} a_{ij}x_j^{(k-1)} \right)$$

Onde:

*   $x_i^{(k)}$ é a *$k$*-ésima aproximação da variável $x_i$.
*   $x_j^{(k-1)}$ é a *($k-1$)*-ésima aproximação da variável $x_j$.
*   $a_{ij}$ são os coeficientes do sistema.
* $b_i$ representa o termo constante.

**Passo 3: Critério de Parada**

A iteração continua até que o seguinte critério seja satisfeito:

$$\frac{||x^{(k)} - x^{(k-1)}|| \infty}{||x^{(k)}|| \infty} < \epsilon$$

Onde:

* $||x||_\infty = \text{max } {1 \leq i \leq n} |x_i|$ (norma infinito).
*  $\epsilon$ é a tolerância de erro especificada.

**Exemplo:**

O documento apresenta um sistema de 4 equações e 4 incógnitas, mostrando a aplicação do método passo a passo, partindo da aproximação inicial $(0, 0, 0, 0)$ e iterando até a 10ª iteração, onde o critério de parada é atingido.
Um exercício simples para praticar o método é resolvido.

## Algoritmo do Método

O algoritmo é estruturado em:

1.  Entrada dos coeficientes do sistema ($a_{ij}$,$b_{i}$), aproximação inicial, e da tolerância.
2.  Isolar os termos, reescrevendo-os para a iteração.
3.  Loop de iteração até que a tolerância seja aceita.

> Consulte o [repositório](github.com/araujoviana/jacobi) para ver a implementação do algoritmo em Python
