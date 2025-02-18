+++
title = 'Evolução do Gerenciamento de Processos'
date = 2025-02-18T15:16:46-03:00
draft = false
categories = ['Sistemas Operacionais']
tags = ['Hardware', 'UNIX', ]
+++

## Sistemas

### Tipos de tratamento de programas
- Sistemas monoprogramados - Carrega apenas um programa por vez.
- Sistemas multiprogramados - Carrega múltiplos programas na memória.

### Problemas dos computadores (da época)

1. A CPU ficava ociosa quando precisava interagir com um dispositivo de E/S.
2. Programadores precisavam levar em consideração as particularidades de hardware de cada sistema para programar.

### Soluções

#### Problema 1 (CPU ociosa)

- Preemptividade: Sistema era capaz de pausar um processo que estivesse aguardando por uma operação de E/S, liberando a CPU (**Troca de contexto**).
- Escalonamento: Sistema escolhe os processos para serem executados de acordo com algumas políticas.

> Problema 2 não é mencionado no resto da aula.

### Controle de acesso compartilhado (multiusuários)

Como previnir o uso excessivo de recursos do computador por um usuário?

- Timesharing - Compartilhamento de tempo da CPU.
- Virtualização de memória - Ilusão de acesso exclusivo à memória. 

Essas tarefas eram feitas pelo **Supervisor**:

![Supervisor do Atlas](https://upload.wikimedia.org/wikipedia/commons/2/26/Ferranti_Atlas_computer_control_console_from_the_University_of_London%2C_about_1964_-_Science_Museum%2C_London_-_DSC05584.jpg)

### Multics e UNIX

**Multics** foi um SO que implementava:
- Multiprogramação
- Timesharing
- Virtualização de memória
- Muito mais...

Então *Dennis Ritchie* e *Ken Thompson* reescreveram em **C** o Multics em uma versão mais simples, gerando o **UNIX**, que era mais modular e adaptável.

### Tipos de sistema

- Sistemas Interativos - Sistemas padrão do dia a dia. 
![KDE Plasma](https://upload.wikimedia.org/wikipedia/commons/a/a1/A_Dell_Inspiron%2C_running_Manjaro_24.0_%22Wynsdey%22_%28KDE_Plasma_6%29.jpg)
- Sistemas de Tempo Real (RTOS) - As tarefas possuem prazo e a troca de contexto precisa ser feita de forma muito rápida
![Robô em marte](https://upload.wikimedia.org/wikipedia/commons/d/d8/NASA_Mars_Rover.jpg)

### Papeis do Sistema Operacional

- Fornecer uma API composta por chamadas de sistema (**syscalls**).
- Gerenciar recursos do sistema.

### Chamadas de sistema (syscalls)
Maneira que uma aplicação requisita um serviço do SO, geralmente relacionado ao hardware (acessar a câmera, acessar um arquivo, etc.).

Exemplos de APIs:
- Windows: Win32
- **UNIX: POSIX**
- Java
