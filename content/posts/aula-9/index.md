+++
title = 'Números de ponto flutuante'
date = 2025-02-21T13:47:00-03:00
draft = false
categories = ['Algoritmos Numéricos']
tags = ['Algoritmos',]
+++


## Origem da representação

Em 1985, o [IEEE](https://pt.wikipedia.org/wiki/Instituto_de_Engenheiros_Eletricistas_e_Eletr%C3%B4nicos) publicou um relatório que especificava formatos para *precisão simples, dupla e estendida*, que ficou conhecido como **IEEE 754**, e é seguido por desenvolvedores que manipulam ponto flutuante.

São denominados:

- Float - Número real de precisão de precisão simples (32 bits)
![Representação float](/images/float.png)
- Double - Número real de precisão dupla (64 bits)
![Representação double](/images/double.png)

## Recuperação de doubles

Para a recuperação do tipo double, em particular, usamos a seguinte fórmula:

$$(-1)^{\text{sinal}}2^{c-1023}(1+f)$$


## Trucamento e arredondamento de ponto flutuante

Qualquer número em ponto flutuante pode ser normalizado na base decimal da seguinte maneira:
$$\pm 0, d_1 d_2 \dots d_k d_{k+1} d_{k+2}\dots \times 10^n$$

Com $1 \leq d_1 \leq 9$ e $0 \leq d_i \leq 9$ para $2 \leq i \leq k$

Porém devido ao tamanho limitado dos registradores, temos que usar uma das duas operações possíveis para uma representação finita do número:

- **Truncamento**:

  $$ \pm 0, d_1 d_2 \dots d_k \times 10^n $$
  $$ \text{com } 1 \leq d_1 \leq 9 \text{ e } 0 \leq d_i \leq 9 $$
  $$ \text{para } 2 \leq i \leq k $$

- **Arredondamento**:

  $$ \text{se } d_{k+1} \geq 5, \text{ somamos } 1 \text{ em } d_k $$
  $$ \text{se } d_{k+1} < 5, \text{ mantemos o valor de } d_k $$


## Aritmética com ponto flutuante

Denotando $fl(x)$ e $fl(y)$ as operações em ponto flutuante são definidas pelas seguintes igualdades:
- **Soma**:
  $$ x \oplus y = fl( fl(x) + fl(y) ) $$

- **Subtração**:
  $$ x \ominus y = fl( fl(x) - fl(y) ) $$

- **Multiplicação**:
  $$ x \otimes y = fl( fl(x) \times fl(y) ) $$

- **Divisão**:
  $$ x \oslash y = fl( fl(x) / fl(y) ) $$

### Erro absoluto e relativo

Se o $p$ é o **valor exato** de um número e $p*$ uma aproximação dele, definimos:
$$\text{Erro Absoluto: } |p - p^*|$$

$$\text{Erro Relativo: } \frac{|p - p^*|}{|p|} \quad \text{(com } |p| \neq 0\text{)}$$
