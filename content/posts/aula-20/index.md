+++
title = 'Processos'
date = 2025-03-11T12:06:13-03:00
draft = false
categories = ["Sistemas Operacionais"]
tags = ["Hardware", "Software", "UNIX"]
+++


> Consulte o slide original para as ilustrações que são bem *úteis*

## Programas Vs. Processos

### Programas
- Conjunto de instruções armazenados na memória *secundária*
- **Passivo**, não consome recursos além do armazenamento

### Processos
- Execução ativa de um programa pelo sistema operacional
- **Ativo**, utiliza recursos do sistema como memória RAM, CPU e I/O

> Quando um programa é executado, um processo é criado no SO

## Estados dos processos

1. Novo
2. Pronto (admitido na fila de prontos)
3. Executando (ele foi escalonado, pode voltar pra fila de prontos)
4. Terminado (concluiu todas as instruções ou sofreu um erro fatal)
5. Esperando (quando solicita uma instrução de I/O, depois volta pra fila de prontos)

## Onde o processo existe

Um processo existe na memória principal enquanto está sendo executado.

Ele é gerenciado pelo SO, que aloca recursos como:
- **CPU** para a execução de instruções
- **RAM** para armazenar dados e variáveis
- **E/S** para interações externas


O  SO atribui a cada processo um *espaço de endereçamento*, que é dividido em diferentes segmentos:

- Segmento de Código (Texto): O código do programa em execução. Daqui são extraídas as
instruções a serem executadas pela CPU. 
- Segmento de Dados: Armazena as variáveis globais e estáticas
- Heap: Utilizado para alocação dinâmica de memória
- Pilha (Stack): Guarda as chamadas de função enquanto não retornam.

#### Virtualização de memória

- O SO cria a ilusão de que cada processo possui um espaço de endereçamento contínuo e exclusivo.
- O SO em conjunto com a **Unidade de Gerenciamento de Memória (MMU)** traduz os endereços virtuais para endereços físicos.

## Process Control Block (PCB)
Estrutura para gerenciar os processos, mantida pelo Kernel e contém todas as informações necessárias para controlar e monitorar cada processo.

- Tempo de CPU
- Inicio e fim dos segmentos de memória
- PID - Identificador único
- Estado do processo
- Dono (usuário)
- Prioridade


## Comunicação entre Processos (IPC)

Conjunto de mecanismos que permite que processos cooperativos troquem
informações entre si.

### Compartilhamento de Memória

- Uma região de memória compartilhada é utilizada para os processos se comunicarem.

- Os processos devem garantir que não escrevam ou alterem os mesmos dados simultaneamente (problema do Produtor-Consumidor)

### Troca de Mensagens

Utiliza filas para enviar e receber mensagens

Pode ser:

- Síncrona - O processo remetente ou receptor espera a conclusão da operação.
- Assíncrona - Não há espera, a operação continua enquanto a mensagem é enviada ou recebida.


