Scenario: Cadastro de "aluno" feito com sucesso
 Given o cpf "00000000000" não foi cadastrado
 And o mail "jv@gmail.com" não foi cadastrado
 When o sistema recebe uma solicitação de cadastro de um "aluno"
 And o cpf é "00000000000"
 And o nome é "João Vitor"
 And o mail é "jv@gmail.com"
 And a senha é "12345678"
 Then o sistema armazena o "aluno" na sua lista de "alunos" cadastrados
 And ele retorna uma mensagem de confirmação para o usuario

Scenario: "Cpf" ja cadastrado
 Given o "cpf" "00000000000" já foi cadastrado
 When o sistema recebe uma solicitação de cadastro de um "aluno"
 And o cpf é "00000000000"
 And o nome é "João Vitor"
 And o mail é "jv@gmail.com"
 And a senha é "12345678"
 Then o sistema retorna uma mensagem para o usuario avisado que o "cpf" "00000000000" ja foi cadastrado
 And o "aluno" não é armazenado no sistema

Scenario: Senha com menos de 8 digitos
 Given o cpf "00000000000" não foi cadastrado
 And o mail "jv@gmail.com" não foi cadastrado
 When o sistema recebe uma solicitação de cadastro de um "aluno"
 And o cpf é "00000000000"
 And o nome é "João Vitor"
 And o mail é "jv@gmail.com"
 And a senha é "12345"
 Then o sistema retorna uma mensagem para o usuario avisado que a senha deve possuir 8 digitos
 And o "aluno" não é armazenado no sistema
