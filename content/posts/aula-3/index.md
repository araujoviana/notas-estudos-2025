+++
title = 'Provas de Complexidade - O(n), Ω(n), θ(n)'
date = 2025-02-14T15:18:20-03:00
draft = false
categories = ['Projeto e Análise de Algoritmos II']
tags = ['Revisão', 'Algoritmos', 'Big O']
+++

## O(n) - Pior caso
---

### Definição
$$O(g(n)) = \\{ f(n): \exists \ c  > 0, n_{0} \geq 0 \text{ tal que } f(n) \leq cg(n), \forall n \geq n_0 \\}$$

#### Exemplo
$$O(n^3) = \left\\{ 3n^3, 5n^3, 10n^3, 50n^3, \dots \right\\}$$
$$\left\\{ 3n^2, 5n^2, \dots \right\\}$$
$$\left\\{ 3n, 5n, \dots \right\\}$$
$$\left\\{ 1, 5, 7, 9, \dots \right\\}$$
$$\left\\{ \frac{1}{n}, \frac{1}{n^2}, \frac{1}{n^3} \right\\}$$


![Complexidade O(n)](/images/big-o.png)

Nesse caso, $O(n^3) $ é o limite superior.


### Provas para O(n)

$$n^2 + 3n = O(n^3)$$

#### Prova

Pela definição da notação, $\exists c, n_0 > 0$,

tal que
$$n^3+3n \leq cn^3$$
temos
$$n^2 + 3n \leq n^3 + 3n^3  \rightarrow 4n^3$$

isto vale para $c=4$ e $n_0=0$, portanto

$$n^2 + 3n = O(n^3)$$

$\blacksquare$

$$n^2+3n=O(n)$$

#### Prova

Por **contradição** suponha que $n^2+3n = O(n)$


Pela definição da notação, $\exists c, n_0 > 0$,

tal que

$$\frac{n^2+3n}{n} \leq \frac{c n}{n}$$

(A operação de divisão aplicada preserva a desigualdade)

$$n+3\leq c$$

Isso é um *absurdo*, portanto $n^2+3n \neq O(n)$

$\blacksquare$

$$\frac{1}{n^2} = O(n^3)$$

#### Prova

Pela definição da notação, $\exists c, n_0 > 0$, tal que

$$\frac{1}{n^2} \leq cn^3$$

temos que

$$\frac{1}{n^2}=n^{-2} \leq (1)n^3$$

Para $c=1, n_0\geq 1$ essa expressão vale.

Portanto $\frac{1}{n^2} = O(n^3)$

$\blacksquare$

$$\sqrt{n} + 5 \log_{\frac{3}{2}}n \leq cn^3$$

Pela definição da notação, $\exists c, n_0 > 0$, tal que

$$\sqrt{n} +  \log_{\frac{3}{2}}n \leq cn^3$$

temos que

$$  \sqrt{n} + \log_{\frac{3}{2}}n = n^{\frac{1}{2}} + 5 \log_{\frac{3}{2}}n  \leq n^3 + 5n^3 \rightarrow 6n^3   $$

Para $n_0 \geq 1$ e $c = 6$, a expressão vale. Logo   $\frac{1}{n^2} = O(n^3)$

$\blacksquare$

$$5n^3 + 3n^2 - 25 =  O(n^3)$$

#### Prova

Pela definição da notação, $\exists c, n_0 > 0$, tal que

$$5n^3 + 3n^2 - 25 \leq cn^3$$

temos

$$5n^3 + 3n^2 - 25 \leq 5n^3+3n^2 \leq 5n^3 + 3n^3 = 8n^3$$

(os expoentes são diferentes)

Para $n_0 \leq 0$ e $c=8$, $5n^3 + 3n^2 - 25 = O(n^3)$

$\blacksquare$
 
> Esse aqui é chato de escrever 🙃 

$$\log_{10} n + \log_{\frac{3}{2}}n + \log_2 n = O(\log_3 n)$$

Pela definição da notação, $\exists c, n_0 > 0$, tal que

$$\frac{\log_3 n}{\log_{10} n} + \frac{\log_3 n}{\log_{\frac{3}{2}} n} + \frac{\log_3 n}{\log_2 n} =
\boxed{\frac{1}{\log_{10} n} + \frac{1}{\log_{\frac{3}{2}} n} + \frac{1}{\log_2 n}}\log_3 n$$

Para $n_0 \geq 1$, a expressão vale.

$\blacksquare$


### Ω(n) - Melhor caso
---

### Definição
$$\Omega(g(n)) = \\{ f(n): \exists \ c  > 0, n_{0} \geq 0 \text{ tal que } f(n) \geq cg(n), \forall n \geq n_0 \\}$$

#### Exemplo
$$\Omega(n^3) = \left\\{ 3n^3, 5n^3, 10n^3, 50n^3, \dots \right\\}$$ 
$$\left\\{ 3n^4, 5n^4, \dots \right\\}$$ 
$$\left\\{ 3n^5, 5n^5, \dots \right\\}$$ 
$$\left\\{ n^n, 2^n, 3^n, \dots \right\\}$$ 
$$\left\\{ n \log n, n^2 \log n, \dots \right\\}$$ 


![Complexidade Omega(n)](/images/big-omega.png)

Nesse caso, $\Omega(n^3) $ é o limite inferior.

> Professor não deu nenhuma prova para esse caso 🤷,
> mas ele é incluso nas provas para θ(n) 

### Θ(n) - Caso Médio
---

### Definição
$$\Theta(g(n)) = \\{ f(n): \exists \ c_1, c_2 > 0, n_{0} \geq 0 \text{ tal que } c_1 g(n) \leq f(n) \leq c_2 g(n), \forall n \geq n_0 \\}$$

#### Exemplos
$$\Theta(n^3) = \left\\{ 3n^3, 5n^3, 10n^3, 50n^3, \dots \right\\}$$ 
$$\Theta(n^4) = \left\\{ 3n^4, 5n^4, \dots \right\\}$$ 
$$\Theta(n^5) = \left\\{ 3n^5, 5n^5, \dots \right\\}$$ 
$$\Theta(n \log n) = \left\\{ 2n \log n, 5n \log n, \dots \right\\}$$ 


![Complexidade Tetha(n)](/images/big-tetha.png)

Nesse caso, $\Theta(n^3)$ representa uma faixa de crescimento assintótico em que a função está limitada superior e inferiormente por múltiplos constantes de $n^3$.

### Provas para θ(n)

$$\frac{1}{2}n^2-3n=\theta(n^2)$$

Pela definição da notação θ **(esse é diferente dos outros)**, $\exists c_1, c_2 > 0 \text{ e } n_0 \geq 0$

tal que

$$c_1n^2 \leq \frac{1}{2}n^2-3n \leq c_2n^2$$

#### Parte 1

Provar que $\frac{1}{2}n^2-3n \leq c_2n^2$

temos que $\frac{1}{2}n^2-3n \leq \frac{1}{2}n^2$

isto vale $c_2 = \frac{1}{2}$ e $n_0 \geq 0$

#### Parte 2

$$c_1n^2\leq\frac{1}{2}n^2-3n$$
$$\frac{1}{2}n^2 -3n \geq c_1n^2$$

temos que

$$\frac{1}{2}n^2 -3n \geq \frac{1}{4}n^2 + \boxed{\frac{1}{4}n^2-3n} \geq \frac{1}{4}n^2$$

A parte dentro do quadrado é $\geq 0$,

Quando $\frac{1}{4}n^2-3n \geq 0$

temos $\frac{1}{4}n^2 \geq 3n $

$$c_1 = \frac{1}{4} \text{ e } n_0 \geq 12 $$

Para $c_1=\frac{1}{4}$, $c_2 = \frac{1}{2}$ e $n_0 = max(0,12) = 12$

A expressão vale.

Logo $\frac{1}{2}n^2-3n=\theta(n^2)$

$\blacksquare$
