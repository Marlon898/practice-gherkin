# Praticando linguagem Gherkin
# O objetivo deste documento é aplicar a linguagem Gherkin para relatar cenários de teste de login de usuário no site da americanas.

Language: PT
Funcionalidade: Login de usuário no site: https://www.americanas.com.br/

Cenário: Acessar tela de login

Dado que fulano esteja na tela inicial
Quando mover o mouse para "olá, faça seu login ou cadastre-se"
E clicar no botão "faça seu login"
Então o sistema exibe a tela de login

Cenário: Acessar formulário de cadastro de novo usuário

Dado que fulano esteja na tela de login
Quando mover o mouse para "olá, faça seu login ou cadastre-se"
E clicar no botão "cliente novo?Cadastrar"
Então o sistema exibe a tela de cadastro de novo usuário

Cenário: Cadastrar novo usuário

Dado que fulano esteja na tela de cadastro de novo usuário
Quando ele preencher o campo "nome completo" com o valor "Seu Nome Completo"
E selecionar o campo "gênero" com o valor "Feminino ou Masculino"
E preencher o campo "data de nascimento" com o valor "Data váida: 00/00/0000"
E preencher o campo "CPF" com o valor "Cpf válido: 000.000.000-00"
E preencher o campo "telefone" com o valor "Telefone válido: (00) 0000-0000"
E selecionar o campo "receber notificações por WhatsApp"
E preencher o campo "e-mail" com o valor "Email válido: seu_email@valido.com"
E selecionar o campo "receber e-mails promocionais"
E preencher o campo "senha" com o valor "sua_senha"
E clicar no botão "criar seu cadastro"
Então o sistema exibe a mensagem "Usuário cadastrado com sucesso"

Cenário: Login de usuário já cadastrado

Dado que fulano seja um usuario cadastrado e esteja na tela de login
Quando ele preencher o campo "e-mail" com o valor "Email válido: seu_email@valido.com"
E preencher o campo "senha" com o valor "sua_senha"
E clicar no botão "continuar"
Então o sistema exibe a tela de usuário logado

Cenário: Tentativa de login de usuario com senha incorreta

Dado que fulano seja um usuario cadastrado e esteja na tela de login
Quando ele preencher o campo "e-mail" com o valor "Email válido: seu_email@valido.com"
E preencher o campo "senha" com o valor "senha_incorreta"
E clicar no botão "continuar"
Então o sistema exibe a mensagem "Usuário ou senha incorreta"

Cenário: Tentativa de login de usuário com e-mail incorreto

Dado que fulano seja um usuario cadastrado e esteja na tela de login
Quando ele preencher o campo "e-mail" com o valor "email_incorreto"
E preencher o campo "senha" com o valor "sua_senha"
E clicar no botão "continuar"
Então o sistema exibe a mensagem "Usuário ou senha incorreta"

Cenário: usuário sem cadastro

Dado que eu seja um usuário que comprou no site sem se Cadastrar

