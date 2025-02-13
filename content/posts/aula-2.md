+++
title = 'Classes em Java'
date = 2025-02-13T13:14:22-03:00
draft = false
categories = ['Estrutura de Dados II']
tags = ['Programação orientada a objetos', 'Java', 'Revisão']
+++

## Classes em Java

Linguagens como Java, C# e C++ seguem o paradigma da *Programação orientada a objeto*, onde os componentes do programa são designados por classes e objetos.

### Cachorro
---
#### Definição
Exemplo de uma classe do tipo **Cachorro** em Java, contendo os componentes básicos de uma classe.

```java
// Classe
public class Cachorro {
    // Atributos
    
    // Constantes
    private final int anoDeNascimento;
    private final String raca;
    private final String cor;
    
    // Variáveis mutáveis
    private int energia;
    private boolean acordado;
    
    // Métodos
    
    // Construtores    
    public Cachorro() {
        anoDeNascimento = 2025;
        raca = "Vira lata";
        cor = "Caramelo";
        energia = 5;
        acordado = true;
    }

    public Cachorro(int anoDeNascimento, String raca, String cor) {
        this.anoDeNascimento = anoDeNascimento;
        this.raca = raca;
        this.cor = cor;
        this.energia = 5;
        this.acordado = true;
    }
    
    // Outros métodos
    public void latir() {
        System.out.println("Au");
    }
    
    public void comer(int quantidade) {
        energia += quantidade;
    }
    
    public void dormir() {
        acordado = false;
    }
    
    public void acordar() {
        acordado = false;
    }
    
    public void andar() {
        energia -= 1;
    }

    // Setters
    public void setEnergia(int energia) {
        if (energia >= 0) {
            this.energia = energia;
        }
    }

    // Getters
    public int getAnoDeNascimento() {
        return this.anoDeNascimento;
    }
    
    public String getRaca(){
        return this.raca;
    }
    
    public String getCor(){
        return this.cor;
    }
    
    public int getEnergia(){
        return this.energia;
    }
    
    public boolean getAcordado(){
        return this.acordado;
    }
}
```

#### Uso

Para usarmos uma classe como `Cachorro` precisamos instanciar ela em outro local, como na própria `Main`:

```java
public class Main {
    public static void main(String[] args) {
        // Criando um cachorro usando o construtor padrão
        Cachorro cachorro1 = new Cachorro();
        
        // Criando um cachorro com valores personalizados
        Cachorro cachorro2 = new Cachorro(2020, "Labrador", "Preto");
        
        // Exibindo informações iniciais
        System.out.println("Cachorro 1: " + cachorro1.getRaca() + ", " + cachorro1.getCor() + ", Ano: " + cachorro1.getAnoDeNascimento());
        System.out.println("Cachorro 2: " + cachorro2.getRaca() + ", " + cachorro2.getCor() + ", Ano: " + cachorro2.getAnoDeNascimento());
        
        // Testando os métodos
        cachorro1.latir();
        System.out.println("Energia do cachorro 1 antes de andar: " + cachorro1.getEnergia());
        cachorro1.andar();
        System.out.println("Energia do cachorro 1 depois de andar: " + cachorro1.getEnergia());
        
        // Alimentando o cachorro
        cachorro2.comer(3);
        System.out.println("Energia do cachorro 2 depois de comer: " + cachorro2.getEnergia());
        
        // Fazendo o cachorro dormir e verificar estado
        cachorro1.dormir();
        System.out.println("Cachorro 1 está acordado? " + cachorro1.getAcordado());
        
        // Acordando o cachorro e verificando
        cachorro1.acordar();
        System.out.println("Cachorro 1 está acordado? " + cachorro1.getAcordado());
    }
}
```
