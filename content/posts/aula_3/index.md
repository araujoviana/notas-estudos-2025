+++
title = 'Técnicas de Projetos de Algoritmos'
date = 2025-02-13T13:26:05-03:00
draft = false
categories = ['Projeto e Análise de Algoritmos II']
tags = ['Recursão', 'Algoritmos']
+++

## Técnicas gerais

### Backtracking

Categoria de algorítmos que consistem em enumerar todas as combinações possíveis (provavelmente em uma árvore) para uma solução e avaliar se satisfazem o problema. Costuma ser recursivo.

Seu método de funcionamento é semelhante ao *Depth First Search*.

Um exemplo de uso é o [Problema das oito damas](https://pt.wikipedia.org/wiki/Problema_das_oito_damas), onde oito damas devem ser posicionadas em um tabuleiro de modo que nenhuma delas estejam na mesma linha, coluna e diagonal.

![Problema das oito damas animado]( https://upload.wikimedia.org/wikipedia/commons/1/1f/Eight-queens-animation.gif)

### Algoritmos gulosos (Greedy)

Abordagem em que algoritmos buscam resolver o problema escolhendo, em cada etapa, a melhor opção disponível no momento, ou a que não infringe nenhuma restrição, com o objetivo de (teoricamente) encontrar a melhor solução.

**Porém**, algoritmos gulosos podem não encontrar a solução ótima, pois tomam decisões locais sem considerar o impacto a longo prazo, o que pode levar a uma solução subótima.


### Programação dinâmica

É a técnica que busca encontrar a solução de vários subproblemas para então, encontrar a solução do problema geral. Ao contrário do backtracking que busca *todas* as soluções.

*Memoization* (memorização) é uma das técnicas usadas em programação dinâmica, ela **armazena os resultados de subproblemas para evitar recalculá-los**, o que diminui a complexidade de um algoritmo de fibonacci recursivo de $O(n^2)$ para $O(n)$.

## Recursão

Função ou procedimento que possui uma chamada para si mesmo.

```haskell
fatorial 0 = 1 -- Caso base
fatorial n = n * fatorial (n-1) -- Caso recursivo
```

O número de chamadas recursivas (sem contar a primeira que é feita antes da recursão iniciar) de uma função é denominado **profundidade de recursão**, *NÃO* confunda com a *altura* da árvore da recursão.

A profundidade da função fatorial cresce linearmente:
- fatorial(4) -> 4
- fatorial(10) -> 10

Ter uma profundidade de recursão muito grande pode prejudicar a performance do programa, isso ocorre por conta do acúmulo de dados na pilha de execução (stack), o que pode até causar um *stack overflow* (transbordamento da pilha).

```haskell
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)
```
Essa função é *extremamente* lenta, tendo complexidade quase exponencial, aculumando muitas chamadas recursivas.

- fib(4) -> 8
- fib(10) -> 177

Toda função recursiva pode ter uma versão iterativa, mas nem sempre o contrário é possível.

As funções recursivas costumam ser mais simples que as iterativas, mas as iterativas costumam ser mais rápidas que as recursivas.

### Códigos

Abaixo temos um contador de chamadas recursivas da função de Fibonacci, escrita em Rust:

```rust
use std::io;

fn fib(n: i32, p: &mut i32) -> i32 {
    *p += 1;

    match n {
        0 => 0,
        1 => 1,
        _ => fib(n - 1, p) + fib(n - 2, p),
    }
}

fn main() {
    // Escreva a sua solução aqui
    // Code your solution here
    // Escriba su solución aquí

    let mut entrada = String::with_capacity(3);
    io::stdin()
        .read_line(&mut entrada)
        .expect("Erro de entrada");

    let repeticoes: i32 = entrada.trim().parse().expect("Erro de conversão");

    let mut numeros: Vec<i32> = vec![];

    for _ in 0..repeticoes {
        entrada.clear();

        io::stdin()
            .read_line(&mut entrada)
            .expect("Erro de entrada");

        numeros.push(entrada.trim().parse().expect("Erro de conversão"));
    }

    for numero in numeros {
        let mut passos: i32 = -1;
        let resultado = fib(numero, &mut passos);
        println!("fib({}) = {} calls = {}", numero, passos, resultado);
    }
}
```

E outro igual, mas em C:

```c
#include <stdio.h>

int fib(int n, int *p) {
    (*p)++;
    
    if (n == 0) return 0;
    if (n == 1) return 1;
    
    return fib(n - 1, p) + fib(n - 2, p);
}

int main() {
    int repeticoes;
    scanf("%d", &repeticoes);
    
    int numeros[repeticoes];
    
    for (int i = 0; i < repeticoes; i++) {
        scanf("%d", &numeros[i]);
    }
    
    for (int i = 0; i < repeticoes; i++) {
        int passos = -1;
        int resultado = fib(numeros[i], &passos);
        printf("fib(%d) = %d calls = %d\n", numeros[i], passos, resultado);
     
    
    return 0;
}
```

### Referências relevantes

- http://www.ime.usp.br/~pf/analise_de_algoritmos/
- https://www.ime.usp.br/~pf/algoritmos/
- http://wiki.inf.ufpr.br/maziero/doku.php?id=prog2:start

