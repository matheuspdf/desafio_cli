# Sovereing Counter
Este repositório contém um módulo em Elixir para registrar e numerar os nomes dos reis e rainhas de Cumbúquia, exibindo-os com seus respectivos números de sucessão em algarismos romanos.

## Sumário
- [Visão Geral](#visão-geral)
- [Pré-requisitos](#Pré-requisitos)
- [Início Rápido](#início-rápido)
- [Como Buildar](#como-buildar)
- [Rodar os Testes](#rodar-os-teste)
- [Exemplo de Uso](#exemplo-de-uso)
- [Licença](#licença)
<br><br>

# Visão Geral
O módulo SovereignCounter permite que os usuários insiram uma lista de nomes de reis e rainhas de Cumbúquia, um por linha. A entrada é considerada completa quando uma linha em branco é inserida. O programa então numera os nomes com numerais romanos e exibe a lista completa.
<br><br>

# Pré-requisitos
Primeiro, será necessário [instalar o Elixir](https://elixir-lang.org/install.html) em versão igual ou superior a 1.16. Com o Elixir instalado, você terá a ferramenta de build mix.
<br><br>

# Início Rápido
Para começar, siga os passos abaixo:

  1. Clone o repositório e navegue até ele:
```bash
git clone https://github.com/matheuspdf/desafio_cli.git
cd desafio_cli
```

  2. Instale as dependências:
  ```bash
mix deps.get
```
<br>

# Como Buildar
Para buildar o projeto, utilize o comando:
```
mix escript.build
```
Isso irá compilar o código-fonte do projeto.

<br>

# Rodar os Testes
Para rodar os testes, utilize o comando:
```
mix test
```
<br>

# Exemplo de Uso
Aqui está um exemplo de como utilizar o SovereignCounter no terminal:

1. Após buildado o projeto, execute o arquivo:
```
./desafio_cli
```
2. Siga as instruções para inserir os nomes dos reis e rainhas, um por linha:
```
Digite os nomes dos reis e rainhas, um por linha. Deixe em branco para terminar:
Aegon
Aenys
Maegor


Aegon I
Aenys I
Maegor I
```

## Demonstração
![gif teste](/docs/gif.gif)



# Licença
[MIT License](./LICENSE)

