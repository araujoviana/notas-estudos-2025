+++
title = "Modelos Discretos de Probabilidade"
date = 2025-03-16T14:00:00-03:00
draft = false
categories = ["Modelagem Matemática II"]
tags = ["Difícil", "Estatística", "Probabilidade"]
+++

> Consulte o PDF para os detalhes, isso é um grande resumo

## Introdução

Em diversas situações, variáveis aleatórias surgem com frequência, permitindo que suas distribuições de probabilidade sejam expressas de forma concisa através de uma lei. Por exemplo, a probabilidade de uma variável *W* assumir valores de 1 a 6 pode ser representada como $$P(W = k) = \frac{k}{21}$$.

Onde $k = 1,2,3 \dots, 6$.

## Modelo Uniforme Discreto

Uma variável aleatória X segue o modelo uniforme discreto $ (X \sim U(1, k))$  se atribui a mesma probabilidade $ \frac{1}{k} $ a cada um dos seus k valores possíveis.

**Valor Esperado:** $$E(x) = \frac{(k + 1)}{2}$$

**Variância:** $$var(x) = \frac{(k^2 - 1)}{12}$$

*Exemplo:* Para $ k = 10$, cada valor tem probabilidade $0,1$. O valor esperado é 5,5 e a variância é 8,25.

## Modelo de Bernoulli

Variáveis que assumem apenas dois valores (dicotômicas), como "sucesso" ou "fracasso", seguem o modelo de Bernoulli. A probabilidade de sucesso é representada por *p*, e a função de probabilidade é $$P(X = x) = p^x(1 - p)^{1-x}$$

Onde $x = 0$ (fracasso) ou $x = 1$ (sucesso).

**Valor Esperado:** $$E(x) = p$$

**Variância:** $$var(x) = p(1 - p)$$

*Exemplo:* Uma vacina com 80% de eficiência. A probabilidade de um indivíduo vacinado estar imunizado é $0,8 (p = 0,8)$.

## Modelo Binomial

Resulta da repetição de *n* ensaios de Bernoulli independentes, todos com a mesma probabilidade de sucesso *p*. A variável aleatória conta o número total de sucessos.

**Função de probabilidade:**  $$P(X = k) = \binom{n}{k} p^k (1 - p)^{n-k}$$

**Valor Esperado:** $$E(x) = n.p$$

**Variância:** $$var(x) = n.p.(1 - p)$$

*Exemplo:*  Em um grupo de 3 indivíduos vacinados (eficiência de 80%), a probabilidade de exatamente 2 estarem imunizados.

## Modelo Geométrico

Representa o número de ensaios de Bernoulli *antes* do primeiro sucesso.

Função de probabilidade:  $$P(X = k) = p.(1 - p)^k$$

**Valor Esperado:** $$E(x) = \frac{(1 - p)}{p}$$

**Variância:** $$var(x) = \frac{(1 - p)}{p^2}$$

*Exemplo:* Em uma linha de produção, a variável Q representa o número de peças boas produzidas antes da primeira defeituosa (probabilidade de defeito = 0,01).

## Modelo de Poisson

Utilizado em modelos físicos e biológicos, representa a frequência média (λ) de ocorrências em um intervalo.

Função de probabilidade: $$P(X = k) = \frac{(e^{-\lambda}\lambda^k)}{k!}$$

**Valor Esperado:** $$E(x) = \lambda$$

**Variância:** $$var(x) = \lambda$$

*Exemplo:* Emissão de partículas radioativas, com média de 5 emissões por minuto (λ = 5).

## Modelo Hipergeométrico

Considera um conjunto de *N* objetos, com *r* sucessos e *N-r* fracassos.  A variável X representa o número de sucessos em uma amostra de tamanho *n* (sem reposição).

Função de probabilidade: $$P(X = k) =  \frac{\binom{r}{k}\binom{N-r}{n-k}}{\binom{N}{n}}$$
**Valor Esperado**  $$E(X) = \frac{nr}{N}$$

*Exemplo:* Um caçador abate 5 andorinhas e 2 aves raras (proibidas). A probabilidade de ser multado por fiscais com diferentes métodos de inspeção.

