# Proficiency Test

### Motivação

Teste desenvolvido como forma de avaliação e proficiencia em Ror.


### Descrição

O sistema em questão compõe um aplicativo WEB utilizando as melhores práticas de desenvolvimento onde:

1 - É possível cadastrar 2 entidades básicas: Estudantes e Cursos

2 - Após executar o cadastro de cursos e estudantes, inicia-se um processo de matrícula, ou seja, uma “tela” onde seja possível vincular um Estudante a um Curso, registrando inclusive a data e hora que o mesmo foi vinculado.

### Detalhes técnicos/Decisões técnicas tomadas

Na execução do projeto foram utilizadas das seguintes tecnologias: RubyOnRails (tradução/locale de models, controllers e/ou views somente em pt-BR), utilização da gem Responders, utilização da gem Enumerate It, e PostgreSQL.
Tais gems foram adotadas para melhor desenvolvimento e robustes da aplicação. A arquitetura ficou por parte do padro MVC do rails, não sendo necessárias modificações arquiteturais. Nos cadastros básicos e matrícula é desejável que seja realizado as validações e máscaras Javascript para tornar mais agradável o uso da aplicação WEB.

### Como compilar/rodar o projeto e os testes (caso aplicável)

- Baixe a copia código do repositório:

  - `> git@github.com:toniesteves/proficiency-test.git`

  - Va para a raiz do dir do projeto e instale as dependências com os comandos:

  - `> cd proficiency-test`

  - `> bundle install`

  - `> rake db:create`

  - `> rake db:migrate`
  
  - Para rodar os testes:
  
  - `> rspec spec/models`
  
  (Obs: para este projeto apenas foram criados os testes de Model)
  
  - Para iniciar o server local, digitar os seguintes comandos na raiz do projeto:

  - `> rails server`
  
  - Projeto disponível em:
  
    https://serene-reaches-38405.herokuapp.com/
