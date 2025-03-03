+++
title = 'Árvores'
date = 2025-02-24T13:25:08-03:00
draft = false
categories = ['Projeto e Análise de Algoritmos II']
tags = ['Algoritmos', 'Estruturas de Dados']
+++

## O que são árvores para a computação?

- Estruturas que armazenam dados.
- Capacidade de armazenamento dinâmica (ao contrário de arrays que são estáticos).
- Compostas por:
    - Nós: onde os dados são armazenados.
    - Arestas: interligam os nós.
- Possuem um único nó raiz.
- Possuem uma ou mais folhas.
- Cada nó possui zero ou mais filhos.
- Nós sem filhos são chamados folhas.

## Alguns tipos de árvores?

- **Árvores Binárias**:
    - Cada nó possui 0, 1 ou 2 filhos.
- **Árvores N-árias**:
    - Cada nó possui zero ou até n filhos.
- **B-Árvores**:
    - Cada nó armazena uma coleção de dados.
    - Cada nó possui uma coleção de filhos, exceto as folhas.

## Árvores Binárias de Busca (BST)

- Árvores binárias com regras para organização dos nós:
    - Nós na subárvore à esquerda são menores que a raiz.
    - Nós na subárvore à direita são maiores que a raiz.
    - Essas regras se aplicam recursivamente a todas as subárvores.
- Corolário da definição:
    - Filho à esquerda é menor que o pai.
    - Filho à direita é maior que o pai.
- Árvores Binárias de Busca Balanceadas:
    - Eficientes para busca, inserção e remoção de elementos.

## São computacionalmente rápidas/eficientes?

- Árvores balanceadas são eficientes para busca de dados classificados (ordenados).
    - Eficiência assintótica de pior caso: $O(\log n)$.
- Eficientes para inserir ou remover dados mantendo a ordenação em árvores balanceadas.
    - Eficiência assintótica de pior caso: $O(\log n)$.

## Aplicações

- Armazenamento de dados de retorno de buscas (ex: Google).
- Compiladores (análise sintática de código).
- Sistemas Operacionais (controle de sequência de execução, filas de prioridade).
- Árvores genealógicas.

## Algumas terminologias e conceitos fundamentais

- **Árvore T**: Estrutura hierárquica de dados.
- **Nó Raiz**: Nó superior da árvore (ex: A).
- **Aresta**: Conexão entre dois nós.
- **Nível**: Profundidade de um nó na árvore (raiz no nível 0).
- **Pai**: Nó que precede outro nó (ex: B é pai de C e D).
- **Filho**: Nó que sucede outro nó (ex: C e D são filhos de B).
- **Nó Folha**: Nó sem filhos (ex: I).
- **Subárvore**: Árvore dentro de outra árvore, tendo um nó como raiz.
- **Grau de um nó**: Quantidade de filhos que um nó possui.
- **Profundidade de um nó**: Nível do nó na árvore (distância da raiz em arestas).
- **Altura de uma árvore**: Maior nível da árvore.
    - Árvore vazia tem altura -1.
    - Árvore com apenas a raiz tem altura 0.
- **Árvore Cheia**: Árvore onde todos os nós não folha possuem o número máximo de filhos permitido e todas as folhas estão no mesmo nível.

## Percorrendo os elementos da árvore

- **Em-ordem (Simétrica)**:
    1. Visita subárvore à esquerda.
    2. Exibe raiz.
    3. Visita subárvore à direita.
    - Aplicar recursivamente.
- **Pré-ordem**:
    1. Exibe a raiz.
    2. Visita subárvore à esquerda.
    3. Visita subárvore à direita.
    - Aplicar recursivamente.
- **Pós-ordem**:
    1. Visita subárvore à esquerda.
    2. Visita subárvore à direita.
    3. Exibe a raiz.
    - Aplicar recursivamente.
- **Busca em Largura**:
    - Visita os nós nível por nível, da esquerda para a direita.

## Como podemos programar árvores binárias?

- Classe `No` (Node):
    ```java
    public class No {
        int valor;
        No esquerda;
        No direita;
        No pai;
    }
    ```
- Classe `Arvore` (Tree):
    ```java
    public class Arvore {
        private No raiz;
    }
    ```

## Como podemos programar busca EM-ORDEM?

```java
public void emOrdem() {
    visitarEmOrdem(raiz);
}

private void visitarEmOrdem(No no) {
    if (no != null) {
        visitarEmOrdem(no.esquerda);
        System.out.print(no.valor + " ");
        visitarEmOrdem(no.direita);
    }
}
```
