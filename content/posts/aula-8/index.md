+++
title = 'Introdução a Probabilidades'
date = 2025-02-19T16:41:58-03:00
draft = false
categories = ['Modelagem Matemática II']
tags = ['Estatística', 'Probabilidade' ]
+++

## Conceitos Básicos
---

### Experimento aleatório
Procedimento cujo resultado é *incerto*

Exemplos:
- Jogar uma moeda
- Sortear um número inteiro de um a cem
- Lançar um dado


### Espaço amostral

O conjunto de **todos os resultados possíveis** de um experimento aleatório, representado por $\Omega$

Exemplos:
- Jogar uma moeda
    - $\Omega = $ {$\text{cara}, \text{coroa}$} 
- Sortear um número inteiro de um a cem
    - $\Omega = $ {$1,2,\dots,99,100$} 
- Lançar um dado
    - $\Omega = $ {$1,2,3,4,5,6$} 


### Evento

Qualquer **subconjunto** do espaço amostral, ou seja,

$$E \subseteq \Omega$$

Exemplos:
- Jogar uma moeda
    - $E = $ {$\text{cara}$} (sortear cara) $n(E) = 1$
- Sortear um número inteiro de um a cem
    - $E = $ {$25,27,26$} (sortear número entre 24 e 28) $n(E) = 3$
- Lançar um dado
    - $E = $ {$3,5,1$} (lançar número impar no dado) $n(E) = 3$

#### Tipos de evento específicos

1. Evento nulo

Nunca ocorre, representado por

$$\phi \subset \Omega$$

Exemplo: Jogar um dado e obter o número 7. $n(E) = 0$

2. Evento certo

Sempre ocorre, representado por

$$\Omega \subset \Omega$$

> É a mesma coisa que o espaço amostral, que contém todas os resultados possíveis.

Exemplo: Jogar um dado e obter um número entre 1 e 7. $n(E) = 6 = n(\Omega)$

### Eventos complementares

A cada evento $E$ está associado um evento complementar $E^c$ (ou $E'$), o evento $E^c$ ocorre **se e somente se** o evento E não ocorre.

![Evento complementar](https://upload.wikimedia.org/wikipedia/commons/b/b6/Diagram_of_the_Complement.png)

Exemplo: $E  = $ jogar uma moeda e obter cara: $E = $ { $\text{cara}$ } 

$E^c  = $ jogar uma moeda e obter coroa: $E = $ { $\text{coroa}$ } 

Propriedades:

$$(E^c)^c=E$$
$$\phi^c = \Omega$$
$$\Omega^c = \phi$$


## União e interseção de eventos

### União (OU)

Ocorre se e somente se um dos dois eventos ocorre, representado por

$$E \cup F$$

![União de 3 conjuntos](https://upload.wikimedia.org/wikipedia/commons/e/ee/Venn_0111_1111.svg)

### Interseção (E)

Ocorre se e somente se os dos dois eventos ocorrem, representado por

$$E \cap F$$

![Interseção de 3 conjuntos](https://upload.wikimedia.org/wikipedia/commons/3/3e/Venn_0000_0001.svg)

### Propriedades da união e interseção

> Aparentemente o conjunto/evento vazio pode ser representado por qualquer circulo riscado, então $\phi$ e $\emptyset$ parecem ser válidos?

$$ 1. \quad E \cup E = E; \quad E \cup \emptyset = E; \quad E \cup \Omega = \Omega; \quad E \cup E^c = \Omega
$$

$$
2. \quad E \cap E = E; \quad E \cap \emptyset = \emptyset; \quad E \cap \Omega = E; \quad E \cap E^c = \emptyset
$$

$$
3. \quad E^c \cap F^c = (E \cup F)^c; \quad (E \cap F)^c = E^c \cup F^c
$$

$$
4. \quad (E \cup F) \cap G = (E \cap G) \cup (F \cap G); \quad (E \cap F) \cup G = (E \cup G) \cap (F \cup G)
$$
> A 4. são as lei de De Morgan

## Diferença entre eventos

Ocorre se e o evento E ocorre e o evento F não ocorre simultaneamente, representado por,

$$E - F$$

![Diferença de conjuntos](https://upload.wikimedia.org/wikipedia/commons/2/23/Relative_compliment.svg)

## Implicação e exclusividade


1. Implicação

Diz-se que $E$ **implica** $F$ se e somente se $E \subset F$. Ou seja, se o evento $E$ ocorre, o evento $F$ também ocorrerá.

![Implicação de conjuntos](https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Subset.svg/300px-Subset.svg.png)

2. Exclusividade

Diz-se que $E$ e $F$ são **exclusivos** (ou mutuamente exclusivos) se e somente se $E \cap F = \emptyset$. Isto é, o fato de $E$ acontecer **não influencia** na ocorrência de $F$, e vice-versa.

![Disjunção de conjuntos](https://upload.wikimedia.org/wikipedia/commons/5/56/Example_of_A_is_a_proper_subset_of_B.svg)

## Probabilidades

As probabilidades, $P(E)$, dos eventos, $E \subset \Omega$, valoram a incerteza acerca da ocorrência ou não ocorrência de eventos relacionados com um processo aleatório e devem satisfazer as seguintes **condições (axiomas)**:

1.  $P(E) \in [0,1]$, para todo evento $E \subset \Omega$;

2.  $P(\Omega) = 1$;

3.  $P(E) = P(E_1) + P(E_2) + P(E_3) + \dots$ se o evento $E$ for uma união de eventos exclusivos $E_1, E_2, E_3, \dots$

### Teorema

As probabilidades dos eventos satisfazem as seguintes propriedades:

1.  $P(\emptyset) = 0$;

2.  $P(E^c) = 1 - P(E)$;

3.  $P(E - F) = P(E) - P(E \cap F)$. Em particular, se $F$ implica $E$ então $P(E - F) = P(E) - P(F)$ e, consequentemente, $P(F) \leq P(E)$;

4.  $P(E \cup F) = P(E) + P(F) - P(E \cap F)$.

### Cálculo da Probabilidade

A probabilidade de um evento $ A $ (com $ A \subset \Omega $) é definida como:

$$
P(A) = \frac{n(A)}{n(\Omega)}
$$

onde:
- $ n(A) $ é o número de resultados favoráveis a $ A $;
- $ n(\Omega) $ é o total de resultados possíveis.

> **Exemplo Único:**  
> Ao lançar uma moeda, o espaço amostral é $\Omega = \{\text{cara}, \text{coroa}\}$ com $ n(\Omega)=2 $. Se $ A $ é o evento “obter cara” (com $ n(A)=1 $), então  
> $$
> P(A) = \frac{1}{2}.
> $$


### Maneiras de Atribuir Probabilidades

1. **Teórica:**  
   Supõe-se que o mecanismo é simétrico. Por exemplo, ao lançar um dado balanceado, cada face tem chance igual:  
   $$
   P(1)=P(2)=\cdots=P(6)=\frac{1}{6}.
   $$

2. **Empírica (Frequência Relativa):**  
   A probabilidade é definida pela razão entre o número de vezes que o evento ocorre e o total de experimentos realizados.


## Adição de Probabilidades

Para dois eventos $ A $ e $ B $, a probabilidade de ocorrer pelo menos um deles é:

$$
P(A \cup B) = P(A) + P(B) - P(A \cap B)
$$

Se $ A $ e $ B $ não podem ocorrer juntos (são mutuamente exclusivos), então:

$$
P(A \cup B) = P(A) + P(B)
$$

![Adição de múltiplos conjuntos](https://upload.wikimedia.org/wikipedia/commons/3/3d/Inclusion-exclusion-3sets.png)

## Eventos Independentes e Dependentes

- **Independentes:**  
  A ocorrência de um evento não altera a probabilidade do outro.  
  *Exemplo:* Lançar uma moeda duas vezes.

- **Dependentes:**  
  A ocorrência de um evento influencia a probabilidade do outro.  
  *Exemplo:* Retirar cartas de um baralho sem reposição.


## Multiplicação de Probabilidades

> Não achei foto pra essa operação 😥 

A probabilidade de dois eventos ocorrerem juntos ($ A $ e $ B $) é dada por:

- **Para eventos independentes:**
  $$
  P(A \cap B) = P(A) \cdot P(B)
  $$

- **Para eventos dependentes:**
  $$
  P(A \cap B) = P(A) \cdot P(B|A)
  $$
  onde $ P(B|A) $ é a probabilidade de $ B $ ocorrer dado que $ A $ já ocorreu.


### Probabilidade Condicional

A probabilidade de um evento $ E $ ocorrer, dado que $ F $ ocorreu, é definida por:

$$
P(E|F) = \frac{P(E \cap F)}{P(F)} \quad (\text{com } P(F) > 0)
$$


### Regra da Multiplicação Generalizada

Para vários eventos $ E_1, E_2, \dots, E_n $:

$$
P(E_1 \cap E_2 \cap \dots \cap E_n) = $$
$$  P(E_1) \cdot P(E_2|E_1) \cdot P(E_3|E_1 \cap E_2) \cdots P(E_n|E_1 \cap \dots \cap E_{n-1})
$$

Se os eventos forem independentes, essa regra simplifica para:

$$
P(E_1 \cap E_2 \cap \dots \cap E_n) = P(E_1) \cdot P(E_2) \cdots P(E_n)
$$


### Teorema de Bayes

> Esse requer um estudo separado e detalhado.

O Teorema de Bayes permite “inverter” a probabilidade condicional, calculando $ P(F_i|E) $ quando conhecemos $ P(E|F_i) $ e as probabilidades dos eventos $ F_i $ (que são mutuamente exclusivos e abrangem todas as possibilidades):

$$
P(F_i|E) = \frac{P(F_i) \cdot P(E|F_i)}{\sum_{j} P(F_j) \cdot P(E|F_j)}
$$


### Eventos Independentes


Dois eventos $ E $ e $ F $ são **independentes** se:

$$
P(E \cap F) = P(E) \cdot P(F)
$$

Isso implica também que, se $ E $ e $ F $ são independentes, seus complementos e combinações (como $ E $ com $ F^c $) são independentes, desde que as condições de probabilidade sejam respeitadas.

