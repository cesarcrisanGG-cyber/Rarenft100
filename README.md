# rarenft100 — NFT Raro em Sui Move

## Visão Geral

O **rarenft100** é um projeto de NFT não fungível desenvolvido na blockchain **Sui**, utilizando a linguagem **Move (Move 2024 edition)**. O objetivo do projeto é demonstrar, de forma prática, o ciclo completo de desenvolvimento de um smart contract: **criação, compilação, deploy em devnet, validação e lançamento em mainnet**, culminando no mint de um NFT raro.

Este projeto foi desenvolvido como parte de um **bootcamp de blockchain**, com foco em boas práticas, clareza arquitetural e aderência aos padrões oficiais do ecossistema Sui.

---

## Características do NFT

* **Tipo:** NFT não fungível (Non-Fungible Token)
* **Blockchain:** Sui
* **Linguagem:** Move
* **Raridade:** Definida por atributo explícito (`rarity_level = 100`)
* **Imutabilidade:** Metadados definidos no momento do mint
* **Ownership:** Gerenciado nativamente pelo modelo de objetos da Sui

Campos do NFT:

* `name`: Nome do NFT
* `description`: Descrição textual
* `image_url`: URL da imagem associada
* `rarity_level`: Nível de raridade (quanto maior, mais raro)

---

## Arquitetura do Projeto

Estrutura do pacote Move:

```
rarenft100/
├── Move.toml
└── sources/
    └── rarenft100.move
```

### Pontos técnicos relevantes

* Uso de `UID` para identidade única do NFT
* Uso de `TxContext` para criação segura de objetos
* Transferência de ownership via `sui::transfer`
* Compatível com a **Move 2024 edition**
* Código enxuto e focado em legibilidade

---

## Fluxo de Desenvolvimento

1. Criação do pacote Move
2. Implementação do contrato NFT
3. Compilação local (`sui move build`)
4. Deploy inicial na **devnet** para testes
5. Validação do contrato e do mint
6. Deploy final na **mainnet**
7. Mint do NFT oficial em produção

---

## Deploy

### Devnet

* Deploy realizado com sucesso para validação funcional
* Mint do NFT de teste concluído

### Mainnet

* Contrato publicado em mainnet
* NFT oficial mintado com sucesso
* Ownership atribuído à carteira do deployer

> O Package ID e o Object ID podem ser verificados diretamente no **Sui Explorer (mainnet)**.

---

## Segurança e Considerações

* O contrato não possui funções de mutação após o mint
* O NFT é criado como objeto único com `key`
* O modelo de ownership da Sui garante posse explícita
* O projeto prioriza simplicidade e clareza, conforme escopo acadêmico

---

## Tecnologias Utilizadas

* **Sui Blockchain**
* **Move Language**
* **Sui CLI**
* **Sui Explorer**

---

## Status do Projeto

✔ Compilado com sucesso
✔ Deploy em devnet
✔ Deploy em mainnet
✔ NFT mintado e ativo

---

## Observações Finais

O projeto **rarenft100** demonstra domínio dos conceitos fundamentais de smart contracts em Sui Move, incluindo modelagem de NFTs, deploy em múltiplos ambientes e interação via CLI. Ele está pronto para ser utilizado como **projeto de portfólio** ou base para extensões futuras, como controle de supply, coleções ou royalties.

---

## Autor

Projeto desenvolvido por **Crisan Cesar** como parte de um bootcamp de blockchain.

Move Registry:
https://www.moveregistry.com/package/@pkg/rarenft100

