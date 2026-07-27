# Demo DAO JDBC

![Java](https://img.shields.io/badge/Java-21-orange)
![JDBC](https://img.shields.io/badge/JDBC-Puro-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1)
![Status](https://img.shields.io/badge/Status-Concluído-success)
![License](https://img.shields.io/badge/License-MIT-green)

Projeto desenvolvido como parte da minha jornada de estudos em Java, com foco na
compreensão dos fundamentos da persistência de dados utilizando JDBC e do padrão
DAO (Data Access Object).

Este repositório representa uma etapa importante da minha evolução como 
desenvolvedor backend, priorizando o entendimento dos conceitos antes da 
utilização de frameworks como Spring Boot e Spring Data JPA.

---

## Objetivo

Este projeto tem como foco consolidar os fundamentos do JDBC e aplicar boas
práticas de organização da camada de persistência utilizando o padrão DAO.

Todo o acesso ao banco de dados foi implementado manualmente para facilitar a 
compreensão de conceitos que, posteriormente, são abstraídos por frameworks como
Spring Data JPA e Hibernate.

---

## Tecnologias utilizadas

- Java
- JDBC
- MySQL
- SQL
- Git

---

## Conceitos praticados

Durante o desenvolvimento deste projeto foram aplicados conceitos como:

- Padrão DAO (Data Access Object)
- Interfaces e Polimorfismo
- CRUD utilizando JDBC
- PreparedStatement
- ResultSet
- Tratamento de exceções
- Gerenciamento de conexões
- Mapeamento de objetos para registros do banco de dados
- Relacionamento entre entidades

---

## Estrutura do projeto

```text
src
├── application
├── db
├── model
│   ├── dao
│   │   └── impl
│   └── entities
```

### application

Contém as classes responsáveis pela execução da aplicação e pelos testes 
das operações implementadas.

### db

Responsável pelo gerenciamento da conexão com o banco de dados e pelo tratamento
de exceções relacionadas ao JDBC.

### model.entities

Contém as entidades que representam as tabelas do banco de dados.

### model.dao

Define os contratos das operações de acesso aos dados.

### model.dao.impl

Implementa os contratos da camada DAO utilizando JDBC.

---

## Funcionalidades

### Seller

- Inserir vendedor
- Atualizar vendedor
- Remover vendedor
- Buscar vendedor por ID
- Buscar vendedores por departamento
- Listar todos os vendedores

### Department

- Inserir departamento
- Atualizar departamento
- Remover departamento
- Buscar departamento por ID
- Listar todos os departamentos

---

## Pré-requisitos

Antes de executar o projeto, é necessário possuir:

- Java 21
- MySQL 8
- JDBC
- Git

---

## Como executar

1. Clone o repositório:

git clone https://github.com/devbruto93/demo-dao-jdbc.git

2. Execute o script SQL localizado em:

sql/create-database.sql

Esse script criará o banco de dados e todas as tabelas utilizadas pela aplicação.

3. ### Adicionando o MySQL Connector/J

O driver JDBC do MySQL já está disponível na pasta `lib`.

Caso a versão disponível não funcione aqui está o link para download
 https://downloads.mysql.com/archives/c-j/

Basta adicioná-lo ao Build Path da sua IDE antes de executar a aplicação.

4. Crie um arquivo chamado `db.properties` na raiz do projeto utilizando como 
base o arquivo `db.properties.example`.

Exemplo:

user=seu_usuario
password=sua_senha
dburl=jdbc:mysql://localhost:3306/coursejdbc
useSSL=false

5. Atualize as credenciais de acordo com a configuração do seu ambiente.

6. Execute a classe `Program.java`.

---

## Observações

Este projeto foi desenvolvido exclusivamente para fins de estudo.

A proposta foi implementar todas as operações de acesso ao banco de dados
utilizando apenas a API JDBC, sem o uso de frameworks ou ORMs.

Também não foi utilizado um gerenciador de dependências como Maven ou Gradle,
pois o objetivo era manter o projeto o mais próximo possível do ambiente 
utilizado durante os estudos, priorizando o entendimento dos fundamentos antes
da utilização de abstrações oferecidas pelo ecossistema Spring.
---

## Aprendizados

Durante o desenvolvimento deste projeto foram consolidados conhecimentos sobre:

- criação e gerenciamento de conexões com banco de dados;
- execução de consultas e comandos SQL utilizando JDBC;
- utilização de `PreparedStatement` e `ResultSet`;
- mapeamento de registros para objetos Java;
- organização da camada de persistência utilizando o padrão DAO;
- separação de responsabilidades entre as camadas da aplicação.

---

## Próximos passos

Os próximos projetos têm como objetivo aplicar esses mesmos conceitos utilizando
tecnologias mais modernas do ecossistema Java, como:

- Spring Boot
- Spring Data JPA
- Hibernate
- PostgreSQL
- Docker

---

## Autor

**Douglas Modesto**

Backend Developer | Java | Spring Boot | SQL

Este repositório faz parte da minha jornada de estudos e da construção do meu 
portfólio como desenvolvedor Backend Java.

## Créditos

Este projeto foi desenvolvido durante o curso **Java COMPLETO – Programação Orientada a Objetos + Projetos**, ministrado por Nélio Alves na Udemy.