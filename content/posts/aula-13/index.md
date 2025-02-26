+++
title = "Variáveis Aleatórias Discretas"
date = 2025-02-26T14:38:14-03:00
draft = false
categories = ["Modelagem Matemática II"]
tags = ["Probabilidade", "Estatística", "Difícil"]
+++

## Probabilidade e Estatística Aplicadas


> O slide têm os gráficos e imagens pra essa aula.

### Exemplo Introdutório: Lucro de um Comerciante

Considere o seguinte cenário:

Um comerciante adquire 5 unidades de um produto para venda semanal. A demanda semanal é uma variável aleatória com a seguinte distribuição de probabilidades:

| Demanda        | 0    | 1    | 2    | 3    | 4    | 5    | 6    | 7    | 8    |
|----------------|------|------|------|------|------|------|------|------|------|
| Probabilidades | 0,05 | 0,1  | 0,1  | 0,1  | 0,2  | 0,2  | 0,1  | 0,1  | 0,05 |

Cada item é comprado por 2.00 e vendido por 3.50. Assim, o lucro do comerciante é dado por:

$$
\text{Lucro} = 3.5 \times \min\{\text{Demanda}, 5\} – 2 \times 5
$$

A tabela a seguir relaciona a demanda, suas probabilidades e o lucro correspondente:

| Demanda        | 0    | 1     | 2    | 3    | 4   | 5    | 6    | 7    | 8    |
|----------------|------|-------|------|------|-----|------|------|------|------|
| Probabilidades | 0,05 | 0,1   | 0,1  | 0,1  | 0,2 | 0,2  | 0,1  | 0,1  | 0,05 |
| Lucro ($L$)    | -10  | -6.5  | -3   | 0.5  | 4   | 7.5  | 7.5  | 7.5  | 7.5  |

#### 1. Probabilidade de lucro superior a 3.00

O lucro excede 3.00 se for 4 ou 7.5 (demandas de 4, 5, 6, 7 ou 8 unidades):

$$
\begin{aligned}
P(\text{Lucro} > 3) &= P(\text{Demanda}=4) + P(\text{Demanda}=5) + P(\text{Demanda}=6) \\
&\quad + P(\text{Demanda}=7) + P(\text{Demanda}=8) \\
&= 0.2 + 0.2 + 0.1 + 0.1 + 0.05 = 0.65
\end{aligned}
$$

#### 2. Probabilidade de prejuízo

O comerciante tem prejuízo se o lucro for negativo (demandas de 0, 1 ou 2 unidades):

$$
P(\text{Prejuízo}) = P(\text{Demanda}=0) + P(\text{Demanda}=1) + P(\text{Demanda}=2) = 0.05 + 0.1 + 0.1 = 0.25
$$

#### 3. Lucro Esperado

O lucro esperado é calculado como:

$$
\begin{aligned}
E(\text{Lucro}) &= (-10) \times 0.05 + (-6.5) \times 0.1 + (-3) \times 0.1 + (0.5) \times 0.1 \\
&\quad + (4) \times 0.2 + (7.5) \times 0.2 + (7.5) \times 0.1 + (7.5) \times 0.1 + (7.5) \times 0.05 \\
&= 2.775
\end{aligned}
$$

Assim, o lucro esperado para a próxima semana é de 2.775.

---

## Variável Aleatória

**Definição:** Uma **Variável Aleatória (VA)** é uma função $X: S \rightarrow \mathbb{R}$ que associa um número real a cada resultado de um experimento aleatório, onde $S$ é o espaço amostral.

**Exemplo:** A soma dos pontos obtidos no lançamento de um par de dados é uma variável aleatória.

---

## Variável Aleatória Discreta

**Definição:** Uma **Variável Aleatória Discreta** assume valores em um conjunto enumerável (finito ou infinito contável). Caso contrário, a VA é contínua.

**Exemplo 1 (Lucro):**  
No exemplo anterior, o lucro $L$ é discreto, pois os valores possíveis são:  
$L(S) = \{-10, -6.5, -3, 0.5, 4, 7.5\}.$

**Exemplo 2: Soma e Produto de Dois Dados**

Considere o espaço amostral:

$$
S = \{(i,j): 1 \leq i \leq 6 \text{ e } 1 \leq j \leq 6\}.
$$

As seguintes funções definem variáveis aleatórias discretas:

- $X(i,j) = i + j$ (soma dos resultados);
- $Y(i,j) = i \times j$ (produto dos resultados);
- $Z(i,j) = \max\{i,j\}$ (máximo dos resultados).

Para a VA $X$, o conjunto de valores possíveis é:

$$
X(S) = \{2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12\}.
$$

**Exemplo 3: Arremesso de Moeda até 'Cara'**

No experimento de lançar uma moeda até sair "cara", o espaço amostral é:

$$
S = \{\text{cara; coroa, cara; coroa, coroa, cara; ...}\}.
$$

O número de arremessos $N$ até obter "cara" é discreto, com valores como $N(\text{cara}) = 1, \; N(\text{coroa, cara}) = 2, \ldots$

---

## Função de Probabilidade (PMF)

**Definição:** A **Função de Probabilidade (PMF)** de uma variável aleatória discreta $X$ é a função $p_X: \mathbb{R} \rightarrow \mathbb{R}$ definida por:

$p_X(a) = P(X = a), \quad \text{para } a \in \mathbb{R}.$

**Propriedades:**

Seja $\{a_1, a_2, ...\}$ o conjunto de valores possíveis de $X$. Então, a PMF satisfaz:

1. $p_X(a_i) \geq 0$ para todo $i$.
2. $\sum p_X(a_i) = 1$.
3. $p_X(a) = 0$ se $a \notin \{a_1, a_2, ...\}$.
4. Para qualquer conjunto $A \subseteq \mathbb{R}$, $P(X \in A) = \sum_{a\in A} p_X(a).$

**Exemplo 1 (Lucro) PMF:**

| Lucro ($a$)       | -10  | -6.5 | -3   | 0.5  | 4    | 7.5  |
|-------------------|------|------|------|------|------|------|
| $p_L(a)=P(L=a)$ | 0,05 | 0,1  | 0,1  | 0,1  | 0,2  | 0.45 |

**Exemplo 4: PMF para Soma de Dados ($X$)**

| $a$                   | 2    | 3    | 4    | 5    | 6    | 7    | 8    | 9    | 10   | 11   | 12   |
|-------------------------|------|------|------|------|------|------|------|------|------|------|------|
| $p_X(a)=P(X=a)$       | 1/36 | 2/36 | 3/36 | 4/36 | 5/36 | 6/36 | 5/36 | 4/36 | 3/36 | 2/36 | 1/36 |

*Exemplo de cálculo de probabilidade usando PMF:*

- $P(3 < X \leq 5) = P(X = 4) + P(X = 5) = \frac{7}{36}.$
- $P(X \geq 8) = P(X = 8) + P(X = 9) + P(X = 10) + P(X = 11) + P(X = 12) = \frac{15}{36}.$

**Exemplo 5: Demanda de Produto - Verificação de PMF**

| Número de unidades demandadas ($x$) | 1    | 2    | 3    | 4    |
|---------------------------------------|------|------|------|------|
| $p_X(x)=P(X=x)$                     | 0,25 | 0,45 | 0,15 | 0,15 |

Verifica-se que $p_X(x)$ é uma PMF, pois:

- $0 \leq p_X(x) \leq 1$ para todo $x$;
- $\sum p_X(x) = 1.$

Além disso:

$
P(X \leq 3.5) = P(X \leq 3) = P(X = 1) + P(X = 2) + P(X = 3) = 0.85.
$

---

## Esperança Matemática

**Definição:** A **Esperança Matemática** (ou valor esperado) de uma variável aleatória discreta $X$ é:

$$
E(X) = \sum_i a_i\, p_X(a_i).
$$

Para uma função $g(X)$, temos:

$$
E(g(X)) = \sum_i g(a_i)\, p_X(a_i).
$$

**Exemplo 6: Esperança para Soma de Dados ($X$)**

$$
E(X) = 2p_X(2) + 3p_X(3) + \dots + 12p_X(12) = \frac{252}{36} = 7,
$$

$$
E(X^2) = 2^2p_X(2) + 3^2p_X(3) + \dots + 12^2p_X(12) = \frac{1974}{36} \approx 54.83.
$$

**Propriedades da Esperança:**

1. $E(a) = a$;
2. $E(\alpha X + \beta) = \alpha E(X) + \beta$;
3. $E(X + Y) = E(X) + E(Y)$;
4. $x_{\min} \leq E(X) \leq x_{\max}.$

**Exemplo 7: Lucro Esperado Revisitado**

Utilizando $E(\min\{D, 5\}) = 3.65$, o lucro esperado

$L = 3.5\min\{D, 5\} - 10$

é:

$E(L) = 3.5E(\min\{D, 5\}) - 10 = 2.775.$

---

## Variância

**Definição:** A **Variância** de uma variável aleatória discreta $X$ é:

$$
\text{Var}(X) = E((X - E(X))^2) = E(X^2) - (E(X))^2.
$$

**Exemplo 8: Variância da Demanda (Exemplo 1)**

Para a demanda $D$:

$
\text{Var}(D) = E(D^2) - (E(D))^2 = 21.3 - (4.1)^2 = 4.49.
$

O **Desvio Padrão** é dado por:

$
\text{DP}(X) = \sqrt{\text{Var}(X)}.
$

**Propriedades:**

- Para constantes $a, b$ (com $b \neq 0$):
  1. $\text{Var}(X) \geq 0$ e $\text{DP}(X) \geq 0$;
  2. $\text{Var}(a) = 0$ e $\text{DP}(a) = 0$;
  3. $\text{Var}(X + a) = \text{Var}(X)$ e $\text{DP}(X + a) = \text{DP}(X)$;
  4. $\text{Var}(bX) = b^2\, \text{Var}(X)$ e $\text{DP}(bX) = |b|\, \text{DP}(X).$

**Exemplo 9: Variância com Transformação Linear**

Para $Y$ com determinada PMF e $Z = 2Y - 3$, temos:

$
\text{Var}(Z) = 4\,\text{Var}(Y) \approx 41.2044,
$

$
\text{DP}(Z) = 2\,\text{DP}(Y) \approx 6.419.
$

---

## Função Acumulada de Probabilidade (CDF)

**Definição:** A **Função Distribuição Acumulada (CDF)** de uma variável aleatória discreta $X$ é definida por:

$$
F(x) = P(X \leq x) = \sum_{y \leq x} p(y).
$$

**Exemplo 10: Pen Drives e CDF**

Considere a variável $Y$ (capacidade dos pen drives):

- $F(1) = P(Y \leq 1) = 0.05$;
- $F(2) = P(Y \leq 2) = 0.15$;
- $F(4) = P(Y \leq 4) = 0.50$;
- $F(8) = P(Y \leq 8) = 0.90$;
- $F(16) = P(Y \leq 16) = 1.$

A CDF de $Y$ é uma função escada:

$$
F(Y) =
\begin{cases}
0, & y < 1; \\
0.05, & 1 \leq y < 2; \\
0.15, & 2 \leq y < 4; \\
0.50, & 4 \leq y < 8; \\
0.90, & y < 16; \\
1, & 16 \leq y
\end{cases}
$$


