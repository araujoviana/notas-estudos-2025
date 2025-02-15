+++
title = 'Revisão de Estatística'
date = 2025-02-11T17:39:43-03:00
draft = false
categories = ['Modelagem Matemática II']
tags = ['Estatística', 'Revisão', 'Difícil']
+++

> ⚠️  -  As contas e lógica precisam ser verificadas, dado que a revisão **não** teve explicação.

## Enunciado
---


Ao longo dessa explicação será usado o seguinte problema de exemplo:

> Dados que o menor e o maior salário dos 60 funcionários da Empresa X são
> respectivamente 600,00 reais e 30000,00 reais e sabendo que os dados foram agrupados
> em 6 classes com amplitude de 5000,00 reais e as frequências das classes são
> respectivamente: 21, 16, 12, 7, 3, 1:

## Revisão de conceitos
---

### Distribuição de frequência

Agrupa valores quantitativos em intervalos chamados de **classes**.

| Classe      | Intervalo de Salário    | Frequência |
|-------------|-------------------------|------------|
| Classe 1    | [ 600,00,  5600,00)   | 21         |
| Classe 2    | [ 5600,00, 10600,00)  | 16         |
| Classe 3    | [ 10600,00,  15600,00) | 12         |
| Classe 4    | [ 15600,00,  20600,00) | 7          |
| Classe 5    | [ 20600,00,  25600,00) | 3          |
| Classe 6    | [ 25600,00,  30000,00]  | 1          |
| **Total**   |                         | **60**     |

'[' representa inclusão e '(' representa exclusão.

### Percentuais

Se precisarmos encontrar o percentual de funcionários com salários maiores ou menores que $x$ precisamos fazer:

1. Extraímos as classes inclusas no intervalo. Nesse exemplo vamos usar as classes que possuem salários maiores ou iguais a R$15000,00

2. Extrair a frequência total para cada classe inclusa, definida como:

$$F_\text{Total} = \sum{\text{Frequências}}$$

No caso do exemplo, temos:

$$F_\text{Total} = 7 + 3 + 1 = 11$$

3. Calcular a porcentagem

$$\text{Percentual} = \frac{11}{60} \cdot 100 \approx 18,333% $$

### Encontrar classes através de um atributo

Usa-se a distribuição da frequência acumulada para encontrar:
| Classe      | Intervalo de Salário    | Frequência | Frequência Acumulada |
|-------------|-------------------------|------------|----------------------|
| Classe 1    | [ 0,00,  5000,00)   | 21         | 21                   |
| Classe 2    | [ 5000,00,  10000,00)  | 16         | 21 + 16 = 37         |
| Classe 3    | [ 10000,00,  15000,00) | 12         | 37 + 12 = 49         |
| Classe 4    | [ 15000,00,  20000,00) | 7          | 49 + 7 = 56         |
| Classe 5    | [ 20000,00,  25000,00) | 3          | 56 + 3 = 59         |
| Classe 6    | [ 25000,00,  30000,00]  | 1          | 59 + 1 = 60         |
| **Total**   |                         | **60**     |                      |

Por exemplo, podemos inferir que:
1. O 18º funcionário percente à *classe 1*, com o intervalo de salário de [0,00, 5000,00).
2. O 50º funcionário percente à *classe 4*, com o intervalo de salário de [15000,00, 20000,00).

### Separatrizes

As separatrizes dividem os dados em partes iguais, elas são compostas por:
- Decis (D): Dividem os dados em **10** partes iguais.
- Quartis (Q): Dividem os dados em **4** partes iguais.
- Centis (C ou P - Percentis): Dividem os dados em **100** partes iguais.

A separatriz pode ser calculada através da seguinte fórmula:

$$\text{Separatriz} = \ell_{i} + \left( \frac{P-FA_{ant}}{f_{separatriz}} \right)a_c$$

Dado que:
- $\ell_{i}$: Limite inferior da classe que contém a separatriz
- $P$: Posição da separatriz na distribuição ordenada dos dados (8 para D8, 1 para Q1, etc).
- $FA_{ant}$: Frequência acumulada da classe anterior à classe que contém a separatriz, se ela estiver na primeira classe então será 0.
- $f_{separatriz}$: Frequência absoluta da classe que contém a separatriz.
- $a_c$: Amplitude da classe. 

#### Exemplo

Vamos encontrar o **D8**:
Dados respectivos aos mencionados anteriormente:

1.  **Posição (P) de D8:**
$$ P = \left(\frac{8}{10}\right) \times N_{total} $$
$$ P = \left(\frac{8}{10}\right) \times 60 $$
$$ P = 48 $$

2.  **Classe que contém D8:**
    *   Consultando a tabela de frequências acumuladas:
        *   Classe 1: FA = 21 (Menor que 48)
        *   Classe 2: FA = 37 (Menor que 48)
        *   Classe 3: FA = 49 (Maior ou igual a 48)
        *   Portanto, D8 está na **Classe 3**.
    *   Intervalo da Classe 3: \[R$ 10000,00, R$ 15000,00)

3.  **Valores para a fórmula:**
    *   $\ell_{i}$ = R$ 10000,00 (Limite inferior da Classe 3)
    *   $P$ = 48 (Posição calculada)
    *   $FA_{ant}$ = 37 (Frequência acumulada da classe anterior, Classe 2)
    *   $f_{separatriz}$ = 12 (Frequência da Classe 3)
    *   $a_c$ = R$ 5000,00 (Amplitude da classe)

4.  **Cálculo de D8:**
$$ D8 = 10000 + \left( \frac{48 - 37}{12} \right) \times 5000 $$
$$ D8 = 10000 + \left( \frac{11}{12} \right) \times 5000 $$
$$ D8 = 10000 + (0.91666\ldots) \times 5000 $$
$$ D8 = 10000 + 4583.33\ldots $$
$$ D8 \approx 14583,33 \text{ reais} $$

5.  **Interpretação de D8:**
    *   Aproximadamente 80% dos funcionários da Empresa X ganham salários iguais ou inferiores a R$ 14583,33. E 20% ganham salários superiores a este valor. 

### Mediana

Ela é responsável por dividir a distribuição em duas partes iguais, definida como:

$$\text{mediana} = \ell_i + \left( \frac{\frac{n}{2}-F_{ant}}{f_{mediana}} \right)a_c$$

As variáveis são as mesmas das da separatriz. (😴)

#### Exemplo

Vamos encontrar a mediana do nosso exemplo:

$$n = \frac{60}{2} = 30$$

A posição 30 está na classe **2**, vamos calcular o resto:

$$ \text{Mediana} = 5000 + \left( \frac{30 - 21}{16} \right) \times 5000 $$ 
$$ \text{Mediana} = 5000 + \left( \frac{9}{16} \right) \times 5000 $$ 
$$ \text{Mediana} = 5000 + (0.5625) \times 5000 $$ 
$$ \text{Mediana} = 5000 + 2812,5 $$ 
$$ \text{Mediana} =  7812,50 $$ 

### Outros cálculos

Por falta de tempo, os outros exercícios do enunciado que ainda precisam ser elaborados:

- Quais os salários que limitam os 50% centrais?
- Qual é o salário que separa os ¾ dos funcionários que têm maior salário?
- Qual é o salário que separa os 40% que tem menor salário?

Todas podem ser resolvidas com as fórmulas da próxima seção.

## Outras fórmulas

Outras fórmulas que acabei não usando mas provavelmente deveria ter usado porquê estavam no enunciado original:

1. Moda
$$\text{moda}=\ell_i + \left( \frac{\Delta_1}{\Delta_1 + \Delta_2} \right) a_c$$

2. Variância
$$s^{2} = \sum^n_{i=1}\frac{(x_i-\bar{x})^2\cdot F}{n}$$

3. Desvio padrão
$$S = \sqrt{S(x)^2}$$

4. Coeficiente de variação
$$C.V = \frac{S}{\bar{x}}\cdot 100$$

5. Distribuição de frequência discreta
$$\bar{x} = \frac{\sum^n_{i=1}f_{i}x_{i}}{n}$$

6. Distribuição de frequência continua
$$\bar{x} = \frac{\sum^n_{i=1}f_{i}m_{i}}{n}$$

Faltou a fórmula da média, mas tudo que estava no documento original está presente aqui.
