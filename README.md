# Database

Desenvolvido com _MySQL_, modela a forma como os dados são guardados no sistema.

## Modelos

`Polo`, `Curso`, e `Autorizacao` são manualmente preenchidos.

`ConfirmacaoToken` guarda tokens temporários, usados para a confirmação de ações consideradas serem perigosas. Tais ações podem apenas serem executadas se o token for informado e existir no banco.

`Usuario` guarda as informações de um usuário do sistema, este não sendo necessariamente um estudante. Quando um login é feito, um `Token` é criado e associado a este até o fim da sessão.

`Estudante` é a tabela principal.

![Diagrama EER](doc/EER%20Diagram.png)
<div align="right"><i>Diagrama EER</i></div>

## Interface

O banco de dados não deve ser acessado pelo _backend_ com comandos como `SELECT` ou `INSERT`. O _backend_ não deve precisar saber quais tabelas existem.

Aqui, uma série de _procedures_ (_Queries_ pré-fabricadas) estão disponíveis para serem chamadas e estas retornam apenas o necessário.

Para o _backend_, basta saber quais _procedures_ existem e quais os campos são retornados. Isso garante a divisão entre os sistemas.

## Implementação

É necessário ter um servidor _MySQL_ em funcionamento.

O script `createDatabase.sql` gera o banco de dados vazio.

O script `populateDatabase.sql` popula o banco de dados com dados essenciais (Polos, Cursos, etc).

## Desenvolvimento

O arquivo `univespers-model.mwb` é o _Model_, e pode ser aberto com _MySQL Workbench_. Ele pode ser usado para modificar o banco de dados e gerar um novo script.

Detalhe: O script deve ser modificado. Todas as instâncias de `UUID_TO_BIN(UUID())` devem ser substituídas por `(UUID_TO_BIN(UUID()))`. Isso se deve ao fato de `DEFAULT` esperar um valor constante por padrão, mas aceita funções entre `()`.
