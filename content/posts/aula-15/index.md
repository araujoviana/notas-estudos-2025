+++
title = 'Análise Númerica'
date = 2025-02-28T13:51:39-03:00
draft = false 
categories = ["Algoritmos Númericos"]
tags = ["Big O", "Algoritmos", "Cálculo"]
+++

## Definição

Algoritmos numéricos são métodos que buscam soluções numéricas para problemas, podendo ser exatas ou aproximadas. Eles são essenciais para resolver equações complexas, integrais e derivadas

## Complexidade de algoritmos

A complexidade indica o desempenho de um algoritmo à medida que o tamanho da entrada cresce. Utiliza-se a notação assintótica:

- **Cota superior (Big-O)**: Limite máximo de crescimento.
  $$ f(n) = O(g(n)) $$

- **Cota inferior (Omega)**: Limite mínimo de crescimento.
  $$ f(n) = \Omega(g(n)) $$

Exemplo: somar $N$ elementos tem complexidade $O(N)$.

> Essa explicação já foi vista em Projeto e Análise de Algoritmos!

## Aproximação de funções com Séries de Taylor

Para aproximar $\ln(1+x)$:

$$ \ln(1+x) \approx \sum_{i=1}^{N} \frac{(-1)^{i+1}x^i}{i} $$

E para $e^x$:

$$ e^x \approx \sum_{i=0}^{N} \frac{x^i}{i!} $$

A complexidade depende do número de termos $N$: $O(N)$.

## Convergência de algoritmos

A convergência avalia o quão rápido um algoritmo se aproxima do valor correto. Se uma sequência $\{\alpha_n\}$ converge para $\alpha$ com uma taxa de $\beta_n$, temos:

$$ |\alpha_n - \alpha| \leq K|\beta_n| $$

Com $\beta_n = \frac{1}{n^p}$, o objetivo é maximizar $p$ para ter convergência mais rápida.

### Exemplo de sequências

- $\alpha_n = \frac{n+1}{n^2}$  
- $\hat{\alpha}_n = \frac{n+3}{n^3}$

Ambas convergem para $0$, mas a segunda tem taxa de convergência mais rápida ($p = 3$ vs. $p = 2$).


> Analisar a complexidade e a taxa de convergência é essencial para escolher o melhor algoritmo. Funções aproximadas via séries e a análise assintótica ajudam a entender o desempenho e a precisão numérica. 👍

