+++
title = "Algoritmos de Escalonamento"
date = 2025-03-18T14:20:00-03:00
draft = false
categories = ["Sistemas Operacionais"]
tags = ["UNIX", "Hardware", "Software"]
+++

## Politicas de Escalonamento

### Carga de trabalho

Conjunto de processos que precisma ser executados em um sistema

#### Exemplo

$P1, P2,P3,P4$ sãp processos que possuem tarefas a realizar. Nesse caso, a carga de trabalho é composta por $P1, P2,P3,P4$ e cada um tem suas próprias caracteristicas.

### Suposições sobre carga de trabalho

> Essas suposições vão se tornando inválidas
- Todos os processos precisam do mesmo tempo para finalizar suas tarefas.
- Todos os processos serão admitidos ao mesmo tempo
- Um processo será executado ininterruptamente até concluir (*preemptividade*).
- Todos os processos só irão utilizar a CPU (não usam I/O)
- Sabe-se previamente o tempo de execução necessário para cada processo.

## Métricas de Escalonamento

Para comparar os algoritmos de escalonamento, precisamos de algumas métricas

Por enquanto usamos o **TURNAROUND**:

$$T_\text{TURNAROUND} = T_\text{CONCLUSÃO} - T_\text{CHEGADA}$$

É uma métrica de **performance**, que mede o quão bem os recursos do sistema estão sendo utilizados.

> Tem outra métrica depois

## Algoritmos de Escalonamento (não-preemptivos)

### First In, First Out (FIFO)

Os processos que chegam primeiro serão executados primeiro (como uma *fila*), e ele é **não-preemptivo**.

#### Exemplo 1

Considerando os processos $A,B,C$ na ordem respectiva, podemos calcular:

|Processo | Chega        | Execução | Conclusão     |
|--------|-------------|-------|------------|
|A| 0        | 10    | 10  |
|B|  0      | 10    | 20 |
|C|   0    | 10    | 30 |

$$T_\text{TURN A} = 10$$
$$T_\text{TURN B} = 20$$
$$T_\text{TURN C} = 30$$
$$T_\text{TURN MÉDIO} = 20$$

#### Exemplo 2
|Processo | Chega        | Execução | Conclusão     |
|--------|-------------|-------|------------|
|A| 0        | 100    | 100  |
|B|  0      | 10    | 110 |
|C|   0    | 10    | 120 |

$$T_\text{TURN A} = 100$$
$$T_\text{TURN B} = 110$$
$$T_\text{TURN C} = 120$$
$$T_\text{TURN MÉDIO} = 110$$

O processo $A$ acaba atrapalhando os processos menores, gerando o **Efeito Comboio**

### Shortest Job First (SJF)

Agora os processos que possuem o menor tempo de execução total serão executados primeiro, ele é **não-preemptivo**.

#### Exemplo 2 (Com SJF)

|Processo | Chega        | Execução | Conclusão     |
|--------|-------------|-------|------------|
|B|  0      | 10    | 10 |
|C|   0    | 10    | 20 |
|A| 0        | 100    | 120  |

$$T_\text{TURN A} = 120$$
$$T_\text{TURN B} = 10$$
$$T_\text{TURN C} = 20$$
$$T_\text{TURN MÉDIO} = 50$$

#### Exemplo 3

E se A chegar em $t=0$ só que B e C chegarem ambos em $t=10$?

|Processo | Chega        | Execução | Conclusão     |
|--------|-------------|-------|------------|
|A| 0        | 100    | 100  |
|B|  10      | 10    | 110 |
|C|   10    | 10    | 120 |

$$T_\text{TURN A} = 100$$
$$T_\text{TURN B} = 100$$
$$T_\text{TURN C} = 110$$
$$T_\text{TURN MÉDIO} = 103,3333\dots$$

A performance acaba semelhante ao *FIFO*, então precisamos de um algoritmo **preemptivo**
> A partir daqui algumas das suposições propostas anteriormente já são inválidas

## Troca de Contexto

Toda vez que um processo é interrompido, uma troca de contexto é realizada.

Toda troca de contexto possui um custo de desempenho ao sistema.

## Algoritmos de Escalonamento (preemptivos)

### Shortest Remaining Time (SRT)

Algoritmo **preemptivo**, ele é semelhante ao SJF, porém ele realiza uma troca de contexto *sempre que um novo processo é admitido na fila* ou outro processo termina.

> Ele acha os menores tempos **restantes** dos processos

|Processo | Chega        | Execução | Conclusão     |
|--------|-------------|-------|------------|
|A| 0        | 100    | 120  |
|B|  10      | 10    | 20 |
|C|   10    | 10    | 30 |

$$T_\text{TURN A} = 120$$
$$T_\text{TURN B} = 10$$
$$T_\text{TURN C} = 20$$
$$T_\text{TURN MÉDIO} = 50$$

## Nova Métrica de Escalonamento

Quando estamos lidando com sistemas interativos precisamos de uma nova métrica para medir a responsividade do sistema:

- **Tempo de Resposta**

$$T_\text{RESPOSTA} = T_\text{PRIM. EXECUÇÃO} - T\text{CHEGADA}$$

## Algoritmos de Escalonamento (considerando as novas demandas)

### Round Robin (RR)

Ao invés de esperar os processos até terminarem, o Round Robin atribui a cada processo uma **fatia de tempo (quantum)**, onde cada processo é executado pela duração dessa fatia antes de ser interrompido para dar lugar ao próximo processo da fila.

> Faltou escrever sobre *Fairness* aqui, pesquise depois...

#### Exemplo 4

Suponho $\text{Quantum} = 1$, considerando a casrga de trabalho

|Processo | Chega        | Execução | Conclusão     |
|--------|-------------|-------|------------|
|A| 0        | 5    | -  |
|B|  0      | 5    | - |
|C|   0    | 5    | - |

$$T_\text{TURN A} = 120$$
$$T_\text{TURN B} = 10$$
$$T_\text{TURN C} = 20$$
$$T_\text{TURN MÉDIO} = 50$$

### Problema com Overhead

Por conta das trocas de contexto ele possui um dos piores turnarounds, e o overhead dele também acaba sendo maior. 

