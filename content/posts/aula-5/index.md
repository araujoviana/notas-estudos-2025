+++
title = 'Vetores, Pilhas e Filas em Java'
date = 2025-02-17T19:28:32-03:00
draft = false
categories = ['Estrutura de Dados II']
tags = ['Java', 'Programação orientada a objetos', 'Revisão',]
+++
## Vetores em Java

### Definição

Usado pra armazenar múltiplos valores do mesmo tipo.

```java
double [] notas;
int[] notas = new int[1000];
```

> Use double ao invés de float em Java.

Costumam ser populadas com um loop `for`

```java
import java.util.Random;

public class Vetores {
    public static void main(String []args) {
        int []w = new Random();
        
        // O(n)
        for(int i = 0; i < w.length; i++) {
            w[i] = r.nextInt(11);
        }
        
        // Agora a matriz está populada
    }
}
```

### Nomenclatura

A nomenclatura muda de acordo com a dimensionalidade do vetor:

1. **Vetores**: 1 dimensão.
2. **Matrizes**: 2 dimensões.
3. **Arrays**: 3 ou mais dimensões.

### Pilhas usando vetores

Toda pilha contém dados que podem ser armazenados em vetores (ou listas encadeadas), e possui as seguintes operações:

> Lembrando que pilhas são **LIFO** e filas são **FIFO**

#### Obrigatórias
1. `push()` $O(1)$
    ```java
    public boolean push(int valor) {
        \\ ...
    }
    ```
2. `pop()` $O(1)$
    ```java
    public int pop() {
        \\ ...
    }
    ```

#### Opcionais
1. `peek()` $O(1)$
    ```java
    public int peek() {
        \\ ...
    }
    ```
2. `isEmpty()` $O(1)$
    ```java
    public bool isEmpty() {
        \\ ...
    }
    ```
3. `isFull()` $O(1)$
    ```java
    public bool isFull() {
        \\ ...
    }
    ```

### Implementação de métodos básicos


### Filas usando vetores

Toda fila contém dados que podem ser armazenados em vetores (ou listas encadeadas), e possui as seguintes operações:

#### Obrigatórias
1. `enqueue()` $O(1)$
    ```java
    public boolean enqueue(int valor) {
        \\ ...
    }
    ```
2. `dequeue()` $O(1)$
    ```java
    public int dequeue() {
        \\ ...
    }
    ```
#### Opcionais
1. `peek()` $O(1)$
    ```java
    public int peek() {
        \\ ...
    }
    ```
2. `isEmpty()` $O(1)$
    ```java
    public bool isEmpty() {
        \\ ...
    }
    ```
3. `isFull()` $O(1)$
    ```java
    public bool isFull() {
        \\ ...
    }
    ```

As pilhas *e* filas **não** foram feitas para operações de busca ao contrário da maioria das estrutura de dados.

### Filas circulares

O maior problema das filas normais é o desperdício de espaço ocasionado pelo movimento dos dois ponteiros, o que não ocorre na pilha, pois temos apenas um ponteiro para rastrear os elementos dela.

![Fila não circular](/images/noncircular-queue.png)

Então usamos a **fila circular**, que "dá a volta" ao redor dela mesma, assim ela só precisaria alocar mais memória quando absolutamente necessário.

![Fila circular](/images/circular-queue.png)

Ela possui a mesma funcionalidade da fila normal, mas consegue manter um ciclo de armazenamento sem desperdiçar memória.
