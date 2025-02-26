+++
title = "Framework W5 2H"
date = 2024-01-01T10:00:00-03:00
draft = false
categories = ["Projeto de Software"]
tags = ["SQL", "Python"]
+++

## Introdução ao W5 2H na Gestão de Projetos de Software

O método W5 2H é uma ferramenta eficaz para planejar e gerenciar projetos de software, assegurando que todos os aspectos cruciais sejam considerados. Ele se baseia em sete perguntas fundamentais: **What, Why, Where, When, Who, How, How Much.**

### Aplicação do W5 2H na Gestão de Projetos:

#### W5 (Cinco Perguntas "W")

*   **What? (O quê?)**
    *   Desenvolver software para atender clientes ou mercados.
    *   Definir escopo, requisitos, funcionalidades e metas do projeto.
    *   Selecionar metodologias de desenvolvimento (ágil, cascata, híbrida).
*   **Why? (Por quê?)**
    *   Solucionar problemas ou otimizar processos com tecnologia.
    *   Responder a demandas de mercado ou exigências de clientes.
    *   Automatizar tarefas, aumentar a eficiência e promover inovação.
*   **Where? (Onde?)**
    *   Desenvolvimento: interno, terceirizado ou remoto.
    *   Implementação: on-premise, nuvem ou híbrida.
    *   Equipes: distribuídas globalmente ou centralizadas.
*   **When? (Quando?)**
    *   Estabelecer cronograma com marcos e prazos.
    *   Priorizar entregas em sprints (ágil) ou fases (tradicional).
    *   Coordenar prazos com stakeholders e equipe.
*   **Who? (Quem?)**
    *   Equipe de desenvolvimento (DEVs, QA, DevOps, UX/UI).
    *   Gestores de projeto (Gerente de Projeto, Product Owner, Scrum Master).
    *   Clientes, usuários finais e stakeholders.

#### 2H (Duas Perguntas "H")

*   **How? (Como?)**
    *   Utilizar metodologias de gestão (PMBOK, Scrum, Kanban, XP).
    *   Empregar ferramentas de gestão (Jira, Trello, Azure DevOps, GitHub).
    *   Implementar pipelines CI/CD para automação.
    *   Definir estratégias de mitigação de riscos e qualidade.
*   **How Much? (Quanto custa?)**
    *   Calcular orçamento (desenvolvimento, infraestrutura, manutenção).
    *   Estimar horas de trabalho e alocar recursos.
    *   Analisar viabilidade financeira e ROI.

---

## W5 2H para Desenvolvimento Seguro de Software

Aplicando o framework W5 2H para guiar o aprendizado e a prática de desenvolvimento seguro de software.

### W5 (Cinco Perguntas "W")

*   **What? (O quê?)**
    *   Desenvolvimento seguro visa criar aplicações resilientes a ciberataques.
    *   Princípios chave: Security by Design, codificação segura, controle de acesso, criptografia, testes de segurança.
    *   Técnicas importantes: OWASP Top 10, Threat Modeling, análise de vulnerabilidades.
*   **Why? (Por quê?)**
    *   Prevenir falhas de segurança que levam a vazamentos de dados e fraudes.
    *   Reduzir custos de correção e garantir conformidade (LGPD, GDPR, ISO 27001).
    *   Aumentar a confiança do usuário e proteger a reputação.
*   **Where? (Onde?)**
    *   Aprender: cursos online (Pluralsight, Udemy), certificações (CSSLP, CEH).
    *   Aplicar: projetos corporativos, acadêmicos, open-source.
    *   Implementar: web, mobile, cloud, IoT, embedded systems.
*   **When? (Quando?)**
    *   Integrar desde o início do ciclo de vida de desenvolvimento (SDLC).
    *   Presente em todas as fases do DevSecOps (planejamento, codificação, testes, deploy).
    *   Continuamente, com atualizações frente a novas ameaças.
*   **Who? (Quem?)**
    *   Desenvolvedores, arquitetos, engenheiros de segurança, DevOps, CISOs.
    *   Comunidades de segurança: OWASP, SANS, MITRE.
    *   Empresas focadas em compliance e normas de segurança.

### 2H (Duas Perguntas "H")

*   **How? (Como?)**
    *   Estudar frameworks de segurança: OWASP ASVS, SAMM, NIST SSDF.
    *   Utilizar análise de código: estático (SAST), dinâmico (DAST), fuzz testing.
    *   Ferramentas: SonarQube, Snyk, Burp Suite, ZAP, CodeQL.
    *   Praticar com bug bounties, CTFs e simulação de ataques.
*   **How Much? (Quanto custa?)**
    *   Aprendizado gratuito: materiais OWASP, blogs, cursos open-source.
    *   Certificações avançadas: custos elevados (CSSLP, OSCP, CEH).
    *   Implementação em projetos: investimento em ferramentas, treinamento, auditorias.

---

## Exemplos Práticos: Prevenindo Injeção de SQL em Python

O uso do W5 2H no desenvolvimento seguro guia a identificação e mitigação de riscos, como a vulnerabilidade de injeção de SQL.

A injeção de SQL ocorre quando um atacante manipula queries SQL para contornar a segurança, como no exemplo clássico `" OR 1=1 --"`.

### Código Vulnerável a Injeção de SQL

Este código demonstra uma prática **insegura**, onde a entrada do usuário é diretamente inserida em uma query SQL sem validação, abrindo brecha para ataques.

```python
import sqlite3

def login(username, password):
    conn = sqlite3.connect('secure_app.db')
    cursor = conn.cursor()
    # QUERY VULNERÁVEL A SQL INJECTION
    query = f"SELECT * FROM users WHERE username = '{username}' AND password = '{password}'"
    print("Query Executada:", query) # Exibindo a query para análise
    cursor.execute(query)
    user = cursor.fetchone()
    conn.close()
    if user:
        return "Login bem-sucedido!"
    else:
        return "Acesso negado!"

# Simulação de ataque de SQL Injection
print(login("' OR 1=1 --", "senhaqualquer"))
```
