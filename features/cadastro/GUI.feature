Scenario: Cadastro de "aluno" feito com sucesso
 Given eu escolhi me cadastrar como "aluno"
 And eu estou na janela de cadastro
 And o cpf "00000000000" não foi cadastrado
 And o mail "jv@gmail.com" não foi cadastrado
 When eu coloco o cpf "00000000000"
 And eu coloco o nome "João Vitor"
 And eu coloco o mail "jv@gmail.com"
 And eu coloco a senha "12345678"
 And eu seleciono a opção para me cadastrar
 Then aparece uma mensagem: Bem vindo "aluno" "João Vitor"
 And aparece a tela de Login

Scenario: "Cpf" ja cadastrado
 Given eu escolhi me cadastrar como "aluno"
 And eu estou na janela de cadastro
 And o "cpf" "00000000000" já foi cadastrado
 When eu coloco o cpf "00000000000"
 And eu coloco o nome "João Vitor"
 And eu coloco o mail "jv@gmail.com"
 And eu coloco a senha "12345678"
 Then aparece uma mensagem dizendo que o "cpf" ja foi cadastrado
 And eu não sou cadastrado

Scenario: Senha com menos de 8 digitos
 Given eu escolhi me cadastrar como "aluno"
 And eu estou na janela de cadastro
 And o cpf "00000000000" não foi cadastrado
 And o mail "jv@gmail.com" não foi cadastrado
 When eu coloco o cpf "00000000000"
 And eu coloco o nome "João Vitor"
 And eu coloco o mail "jv@gmail.com"
 And eu coloco a senha "12345"
 Then aparece uma mensagem dizendo que a senha deve ter pelo menos 8 digitos
 And eu não sou cadastrado


