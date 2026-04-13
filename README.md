# locatech

API REST para gerenciamento de locacao de veiculos, pessoas e alugueis.

Este projeto foi desenvolvido para estudos e aprendizado em Java com Spring.

## Visao geral

O projeto foi desenvolvido com Spring Boot e organiza o dominio em 3 recursos principais:

- `pessoas`
- `veiculos`
- `alugueis`

Os dados sao persistidos em banco H2 em memoria e inicializados automaticamente via `data.sql`.

## Tecnologias

- Java 21
- Spring Boot 4.0.5
- Spring Web MVC
- Spring JDBC
- Spring Validation
- H2 Database
- Springdoc OpenAPI (Swagger UI)
- Lombok
- Maven Wrapper (`mvnw` / `mvnw.cmd`)

## Pre-requisitos

- JDK 21 instalado

## Como executar

Abra o projeto em uma IDE Java (como IntelliJ IDEA ou VS Code com extensoes Java) e execute a classe principal `LocatechApplication`.

API disponivel por padrao em:

- `http://localhost:8080`

## Documentacao da API

Com a aplicacao em execucao:

- Swagger UI: `http://localhost:8080/swagger-ui/index.html`
- OpenAPI JSON: `http://localhost:8080/v3/api-docs`

## Banco H2

- URL JDBC: `jdbc:h2:mem:locatech`
- Usuario: `sa`
- Senha: `password`
- Console web: `http://localhost:8080/h2-console`

O script `src/main/resources/data.sql` cria e popula as tabelas:

- `pessoas`
- `veiculos`
- `alugueis`

## Endpoints principais

Todos os recursos usam paginacao no `GET` de lista com query params `page` e `size`.

### Pessoas

- `GET /pessoas?page={page}&size={size}`
- `GET /pessoas/{id}`
- `POST /pessoas`
- `PUT /pessoas/{id}`
- `DELETE /pessoas/{id}`

Exemplo de body (`POST`/`PUT`):

```json
{
  "nome": "Ana Souza",
  "cpf": "123.456.789-10",
  "telefone": "(11) 98888-7777",
  "email": "ana@email.com"
}
```

### Veiculos

- `GET /veiculos?page={page}&size={size}`
- `GET /veiculos/{id}`
- `POST /veiculos`
- `PUT /veiculos/{id}`
- `DELETE /veiculos/{id}`

Exemplo de body (`POST`/`PUT`):

```json
{
  "marca": "Toyota",
  "modelo": "Corolla",
  "placa": "ABC-1234",
  "ano": 2023,
  "cor": "Prata",
  "valorDiaria": 180.0
}
```

### Alugueis

- `GET /alugueis?page={page}&size={size}`
- `GET /alugueis/{id}`
- `POST /alugueis`
- `PUT /alugueis/{id}`
- `DELETE /alugueis/{id}`

Exemplo de body para `POST /alugueis` (`AluguelRequestDTO`):

```json
{
  "pessoaId": 1,
  "veiculoId": 1,
  "dataInicio": "2026-04-13",
  "dataFim": "2026-04-18"
}
```

## Executar testes

Execute os testes diretamente pela IDE, na pasta `src/test/java` ou na classe `LocatechApplicationTests`.

## Estrutura do projeto

- `src/main/java/.../controllers`: endpoints REST
- `src/main/java/.../services`: regras de negocio
- `src/main/java/.../repositories`: acesso a dados via JDBC
- `src/main/java/.../entities`: modelos de dominio
- `src/main/java/.../dto`: contratos de entrada/saida
- `src/main/resources/application.properties`: configuracoes da aplicacao
- `src/main/resources/data.sql`: criacao e carga inicial do banco

