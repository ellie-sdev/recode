Algoritmo "Projeto_AgenciaTurismo"

//Usando conceitos de programa��o estruturada (Vetor),
//criar em pseudoc�digo um menu para simular um cadastro
//para uma ag�ncia de viagens com as seguintes fun��es:
//cadastro de cliente e cadastro de destino,
//criar tamb�m uma consulta para cada estrutura de dados.

Var

   listCliente: vetor[1..3,1..3] de caractere //matriz com inf dos clientes
   listViagem: vetor[1..3,1..2] de caractere //matriz com inf das viagens
   linha,coluna, opcao: inteiro
   opcao2: caractere

inicio
   escreval ("=== Seja vem vindo a Ag�ncia de Viagens Recode Pro 2023! ===")
   escreval ()
   escreval ("Escolha uma das op��es a seguir:")
   escreval ()
   escreval ("    Digite 1 para cadastrar um novo cliente")
   escreval ("    Digite 2 para cadastrar uma nova viagem")
   escreval ("    Digite 3 para consultar os clientes cadastrados")
   escreval ("    Digite 4 para consultar as viagens cadastradas")
   escreval ("    Digite 5 para sair do programa")

   leia (opcao)

   escolha (opcao)
   caso 1
      para linha <- 1 ate 3 faca

         para coluna <- 1 ate 3 faca

            se coluna = 1 entao
               escreva("Digite o nome do cliente ",linha,": ")
               leia (listCliente[linha,coluna])
            senao
               se coluna = 2 entao
                  escreva("Digite a idade do cliente ",linha,": ")
                  leia (listCliente[linha,coluna])
               senao
                  escreva("Digite o email do cliente ",linha,": ")
                  leia (listCliente[linha,coluna])
               fimse
            fimse
         fimpara

      fimpara

   caso 2
      para linha <- 1 ate 3 faca

         para coluna <- 1 ate 2 faca

            se coluna = 1 entao
               escreva("Digite o local do destino ",linha,": ")
               leia (listViagem[linha,coluna])
            senao
               escreva("Digite o valor do pacote do destino ",linha,": ")
            fimse

         fimpara
      fimpara

   caso 3
      se listCliente[1,1] = "" entao
         escreval ("Ainda n�o h� clientes cadastrados!")
      senao
         escreval(listCliente[linha,coluna])
      fimse

   caso 4
      se listViagem[1,1] = "" entao
         escreval ("Ainda n�o h� destinos cadastrados!")
      senao
         escreval(listViagem[linha,coluna])
      fimse

   caso 5
      limpatela

   outrocaso
      escreval ("N�mero incorreto. Insira uma op��o correta!")

   fimescolha

   escreval ()
   escreval ("Deseja realizar outra opera��o?")
   escreval ("    s - sim")
   escreval ("    n - nao")

   leia (opcao2)

   se opcao2 = "s" entao
      escreval ()
      escreval ("    Digite 1 para cadastrar um novo cliente")
      escreval ("    Digite 2 para cadastrar uma nova viagem")
      escreval ("    Digite 3 para consultar os clientes cadastrados")
      escreval ("    Digite 4 para consultar as viagens cadastradas")
      escreval ("    Digite 5 para sair do programa")
      leia (opcao) //como repetir o c�digo do menu de novo??

      escolha (opcao)
      caso 1
         para linha <- 1 ate 3 faca

            para coluna <- 1 ate 3 faca

               se coluna = 1 entao
                  escreva("Digite o nome do cliente ",linha,": ")
                  leia (listCliente[linha,coluna])
               senao
                  se coluna = 2 entao
                     escreva("Digite a idade do cliente ",linha,": ")
                     leia (listCliente[linha,coluna])
                  senao
                     escreva("Digite o email do cliente ",linha,": ")
                     leia (listCliente[linha,coluna])
                  fimse
               fimse
            fimpara

         fimpara

      caso 2
         para linha <- 1 ate 3 faca

            para coluna <- 1 ate 2 faca

               se coluna = 1 entao
                  escreva("Digite o local do destino ",linha,": ")
                  leia (listViagem[linha,coluna])
               senao
                  escreva("Digite o valor do pacote do destino ",linha,": ")
               fimse

            fimpara
         fimpara

      caso 3
         se listCliente[1,1] = "" entao
            escreval ("Ainda n�o h� clientes cadastrados!")
         senao
            para linha <- 1 ate 3 faca

               para coluna <- 1 ate 2 faca

                  escreval(listCliente[linha,coluna])
                  fimpara
                  fimpara
               fimse

            caso 4
               se listViagem[1,1] = "" entao
                  escreval ("Ainda n�o h� destinos cadastrados!")
               senao
                  escreval(listViagem[linha,coluna])
               fimse

            caso 5
               limpatela

            outrocaso
               escreval ("N�mero incorreto. Insira uma op��o correta!")

            fimescolha
         senao
            limpatela
         fimse

Fimalgoritmo