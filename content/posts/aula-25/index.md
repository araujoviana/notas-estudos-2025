+++
title = "Algoritmos de Enumeração"
date = 2025-03-18T14:20:00-03:00
draft = false
categories = ["Projeto e Análise de Algoritmos II"]
tags = ["Backtracking", "Recursão", "Iteração", "Difícil", "Algoritmos"]
+++

> É bom implementar pelo menos uma vez um código em *backtracking* pra entender mesmo

# Algoritmos de Enumeração

Problema de enumeração estão intimamente ligados com a técnica de programação

## Sequência

Os objetos do exemplo serão sequencias de números inteiros, uma **sequência** pode ser representada pelo vetor $s\[1\dots k]$.

### Sequência vs. Conjuntos

No conjunto a ordem não importa e os elementos não podem ser repetidos ao contrário da sequência.


### Comparação

Sequências são comparadas *lexicograficamente*.

#### Regras

Uma sequência  $r\[1\dots k]$ é lexicograficamente menor ($\leq$) que outra sequência  $s\[1\dots k]$ se:

1. Existe $i$ tal que $r\[1\dots i - 1\] = s\[1\dots i - 1 \]$ e $r\[i\] \leq s\[i\]$
2. $j \leq k$ e $r\[1 \dots k] = s\[1 \dots k]$

Também podemos definir que  $s\[1\dots k]$ é lexicograficamente maior que  $r\[1\dots k]$


### Prefixos e sufixos

Um **prefixo** de uma sequência é um segmento que contém os primeiros termos da sequência.

Um **sufixo** de uma sequência é um segmento que contém os últimos termos da sequência.


## Força Bruta


É um tipo de algoritmo de uso geral que consiste em enumerar todos os possíveis candidatos de uma solução e verificar se cada um satisfaz o problema.

Costuma ser usado quando não sabemos um algoritmo mais eficiente.

Para alguns problemas pode ser até razoável.

- Exemplo: busca sequencial.

### Menor distância entre dois pontos

> Tem como fazer divisão e conquista


## Backtracking

Refinamento da técnica de força bruta.

Considera uma série de tomadas de decisões entre várias opções. Algumas consequências de decisões podem conduzir a uma solução do problema.

### Exemplo 1

Gerar todas as sequências possíveis de 3 dígitos com os dígitos 1, 2 e 3 armazenados no vetor $v[0\dots n - 1]$, onde $n = 3$


Solução: $111,112,113,\dots,332,333$

A quantidade é de $3^3 = 27$ sequências.

*Esse algoritmo pode ser implementado com backtracking!*
