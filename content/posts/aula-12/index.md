+++
title = 'Kernel'
date = 2025-02-25T13:04:32-03:00
draft = false 
categories = ['Sistemas Operacionais']
tags = ['Hardware', 'Software']
+++

## Definição de Kernel

Serve como uma **ponte entre o hardware e o software**, além de **gerenciar os recursos da máquina** para que os programas usem os componentes da maneira correta.

## Nível de Privilégio

Mecanismo que determina quais instruções um programa pode exectuar e quais recursos pode acessar.

Exemplos principais (existem mais):
- **Modo Kernel (privilegiado)**: Permite acesso completo ao hardware e execução de instruções privilegiadas.
- **Modo usuário (não privilegiado)**: Restringe acesso direto ao hardware e proíbe instruções privilegiadas, sendo necessárias o uso de *chamadas do sistema (syscalls)*.

## Funcionamento das Syscalls

> Vou chamar chamadas de sistema de *syscalls*

1. As syscalls fazem a transição de níveis de privilégio, ao permitirem que um programa executando em modo usuário faça uma solicitação ao SO para executar uma operação em modo kernel.
2. Ao ser executada, a syscall gera uma trap (interrupção gerada por software) à CPU, forçando-a a trocar de *modo* (os da sessão anterior).
3. Após essa interrupção, o kernel assume o controle da CPU para atender à solicitação do programa que executou a chamada de sistema.
4. O resultado da solicitação é colocado em um registrador ou área de memória acessível ao programa.

![Esquema de syscalls](https://upload.wikimedia.org/wikipedia/commons/4/45/Linux_kernel_System_Call_Interface_and_glibc.svg)
*Imagem licenciada como CC-BY-SA 3.0 por Shmuel Csaba Otto Traian, disponível em https://pt.wikipedia.org/wiki/Chamada_de_sistema*

## Tipos de Kernel
![Tipos de Kernel](https://upload.wikimedia.org/wikipedia/commons/d/d0/OS-structure2.svg)
### Kernel Monolítico
Todos os serviços do SO executam em modo kernel.

#### Pros

- Melhor desempenho por conta da comunicação direta entre componentes
- Design mais simples e direto
 
#### Cons

- \- Modularidade
- \+ Manutenção
- Falhas em qualquer componente podem derrubar o sistema

### Microkernel
Apenas funções essenciais executam em modo kernel, enquanto serviços são implementados como processos em modo usuário.

#### Pros

- \+ Modularidade
- Melhor isolamento de falhas
- Manutenção mais fácil

#### Cons

- Desempenho potencialmente menor
- Complexidade na comunicação entre componentes 
- Mais trocas de contexto (overhead)

### Kernel Híbrido
Combina características de ambas as abordagens, mantendo alguns serviços em modo kernel por razões de desempenho.

## Mecanismos e Políticas

### Mecanismos

Implementação de baixo nível que fornece funcionalidade.

#### Exemplos

- Troca de Contexto
- Paginação
- Interrupções

### Políticas

Algoritmo ou estratégia que decide como o mecanismo será utilizado.

- Algoritmo de Escalonamento
- Algoritmo de Substituição
- Política de Tratamento de interrupções

## Interrupções

Mecanismo que permite ao hardware sinalizar eventos ao processador.

- Propósito: Permite que a CPU responda a eventos externos sem verificação constante.
- Funcionamento: Interrompe a execução atual, salva o contexto, executa rotina de tratamento.
- Tipos principais: Hardware (dispositivos de e/s) e Software (traps e exceções)



### Importância
- Permite E/S assíncrona
- Possibilita multitarefa
- Economiza tempo de CPU
- Base para implementação de chamadas de sistema

### Exemplos

- Interrupção de Timer: Permite ao SO retomar controle periodicamente
- Interrupção de Teclado: Notifica quando uma tecla é pressionada
- Interrupção de Disco: Sinaliza conclusão de operação de leitura/escrita
