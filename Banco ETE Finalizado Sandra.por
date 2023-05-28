programa {
	
//inclua biblioteca Util --> u
	funcao inicio() {
	// DECLARAÇÃO DE VARIÁVEIS
		cadeia 
			nomeTitular = "",
			resposta = ""
		inteiro 
			opcao,
			agenciaContaCorrente = 0,
			numeroContaCorrente = 0,
			digitoContaCorrente = 0,
			digitoContaPoupanca = 1
			
		logico 
			menu = verdadeiro
		
		real 
			valor,
			saldoContaCorrente = 0.0,
			saldoContaPoupanca = 0.0

		escreva("\nBANCO ETE, SEJA BEM VINDO(A), PREZADO(A) CLIENTE!\n ")
	// CRIANDO A  CONTA DO USUÁRIO
		escreva("\nDigite seu nome: ")
		leia(nomeTitular) 
	// GUARDA OS DADOS DA VARIÁVEL NOME
		escreva("Digite o número de Agência: ")
		leia(agenciaContaCorrente)
	// GUARDA OS DADOS DA VARIÁVEL AGÊNCIA
		escreva("Digite o número de conta: ")
		leia(numeroContaCorrente) 
	// GUARDA OS DADOS DA VARIÁVEL CONTA
		escreva("Digite o número do dígito verificdor: ")
		leia(digitoContaCorrente)
	// GUARDA OS DADOS DA VARIÁVEL DÍGITO VERIFICADOR
	// MENU DO DEPÓSITO INCIAL
		escreva("\nDeseja Realizar o seu primeiro depósito na conta?\n \t 1 - S / 2 -  N\n")
		escreva("\n opção: ")
		leia(opcao)
	// GUARDA OS DADOS DA VARIÁVEL OPÇÃO PARA EXECUÇÃO DA CONDIÇÃO ESCOLHA
		escolha(opcao) { 
	// ESTRUTURA ESCOLHA
		caso 1:
	//OPÇÃO 1 REALIZA O DEPÓSITO NA CONTA CORRENTE
		escreva("\nInforme o valor do depósito: ")
		leia(valor) 
	// GUARDA O VALOR INDICADO NO DEPÓSITO NA CONTA CORRENTE
		saldoContaCorrente = saldoContaCorrente + valor
	// ACUMULA OS VALORES DOS DEPÓSITOS EFETUADOS
		
	// LIMPA A TELA PARA A PRÓXIMA EXECUÇÃO DO PROGRAMA
		escreva("\nDepósito realizado com sucesso! \n")
	 // MÉTODO DA BIBLIOTECA AGUARDE 
		
		escreva("\nCONTA CRIADA COM SUCESSO! \n")
		
		pare
		caso 2:
		escreva("\nConta CRIADA COM SUCESSO! \n")
 	// CONTA CRIADA
		
		}

		faca { 
	// MENU PARA OPERAÇÕES DE ACORDO COM OS REQUISITOS SOLICITADOS 
		escreva("\n\tBanco ETE\n")
	     escreva("1 - Operações na Conta Corrente\n")
	     escreva("2 - Operações na Conta Poupança\n")
	     escreva("0 - Sair\n")
		leia(opcao) // GUARDA O VALOR DO MENU PARA A CONDIÇÃO ESCOLHA
		
		escolha(opcao) { 
		caso 1: 
	// MENU DAS OPERAÇÕES DA CONTA CORRENTE 
		escreva("Escolha uma opção:\n")
		escreva("1 - Saque\n")
		escreva("2 - Depósito\n")
		escreva("3 - Exibir saldo\n")
		escreva("\n\n0 - Voltar para o menu principal\n")
		leia(opcao) 
	// GUARDA A OPÇÃO ESCOLHIDA PARA SUA EXECUÇÃO
		
		escolha(opcao) {
		caso 0:
			         			
		pare
		caso 1:
	// SACA VALORES DA CONTA CORRENTE

		escreva("Digite o valor do saque: ")
		leia(valor) 
	// GUARDA O VALOR QUE FOI SACADO
		
		se(valor > saldoContaCorrente) { 
	// CONDIÇÃO PARA CASO O SALDO SEJA INSUFICIENTE PARA SAQUE
		escreva("Saldo insuficiente.")
		
							            
		} senao {
					      
		saldoContaCorrente = saldoContaCorrente - valor 
	// CONDIÇÃO PARA SALDO SEJA SUFICIENTE PARA OPERAÇÃO SAQUE 
		escreva("Saque realizado com sucesso!\n")
		
	
		 }
		pare
		caso 2:
	// OPÇÃO PARA REALIZAR DEPÓSITO
		escreva("\nDigite o valor do depósito: ")
							
		leia(valor) 
				
	// GUARDA O VALOR DO DEPÓSITO
		saldoContaCorrente = saldoContaCorrente + valor 
	// ACUMULADOR PARA VALORES DEPOSITADOS
	
		escreva("Depósito realizado com sucesso!\n")
		
		pare
		caso 3: 
	// OPÇÃO PARA EXIBIR DADOS DA CONTA CORRENTE
	
		escreva("Agência: ", agenciaContaCorrente)
		escreva("\nNúmero da Conta Corrente: ", numeroContaCorrente," - ", digitoContaCorrente)
		escreva("\nNome do Titular: ", nomeTitular)
		escreva("\nSaldo da Conta Corrente: ", saldoContaCorrente)
		escreva("\n\nPressione ENTER para voltar para o menu")
		
		pare
		caso contrario:
		escreva("Opção inválida!")
		
		}
		pare
		caso 2: 
	// MENU DAS OPERAÇÕES DA CONTA POUPANÇA
		escreva("Escolha uma opção:\n")
		escreva("1 - Aplicar na poupança\n")
		escreva("2 - Resgate\n")
		escreva("3 - Exibir saldo\n")
		escreva("\n\n0 - Voltar para o menu principal\n")
		leia(opcao)
		
		escolha(opcao) { 
	// OPÇÃO PARA OPERAÇÃO DE APLICAÇÃO NA POUPANÇA
		caso 0:
		pare
		caso 1: 
	// ESSA OPÇÃO REALIZA APLICAÇÕES NA POUPANÇA CASO O SALDO SEJA SUFICIENTE PARA A OPERAÇÃO
		escreva("\nDigite o valor a ser aplicado na poupança:")
		leia(valor)
	// GUARDA O VALOR APLICADO NA POUPANÇA
		se (valor > saldoContaCorrente) { 
	// CONDIÇÃO PARA INDICAR QUE O SALDO É INSUFICIENTE
		escreva("Saldo insuficiente.")
		
		
		} senao { 
	// ESTRUTURA PARA APLICAÇÃO NA CONTA POUPANÇA
		saldoContaCorrente = saldoContaCorrente - valor
	// CONDIÇÃO QUE RETIRA O VALORES DA CONTA CORRENTE E APLICA NA POUPANÇA 
		saldoContaPoupanca = saldoContaPoupanca + valor 
	// CONDIÇÃO QUERECEBE VALORES DAS APLICAÇÕES RETIRADA DA CONTA CORRENTE
		escreva("\nAplicação realizada com sucesso!")
		
		
		}
		pare
		caso 2: 
	// ESSA OPÇÃO REALIZA O RESGATE DE VALORES DA POUPANÇA PARA CONTA CORRENTE
		escreva("Digite o valor do resgate:")
		leia(valor) 
	// GUARDA O VALOR RESGATADO
		se(valor > saldoContaPoupanca) { 
	// CONDIÇÃO PARA INFORMAR QUE O SALDO É INSUFICIENTE PARA ESSA OPERAÇÃO
		escreva("Saldo insuficiente.")
		
		
		} senao {						
		saldoContaPoupanca = saldoContaPoupanca - valor 
	// CONDIÇÃO QUE INDICA QUE O VALOR RESGATADO SERÁ RETIRADO DA POUPANÇA
		saldoContaCorrente = saldoContaCorrente + valor 
	// CONDIÇÃO QUE INDICA QUE O VALOR RESGATADO SERÁ ATRIBUÍDO NA CONTA CORRENTE
		escreva("\nResgate realizado com sucesso.")
		
		}
		pare 
		caso 3: 
	// MENU QUE EXIBE OS DADOS DA CONTA POUPANÇA
	 	escreva("\n Conta poupança criada automaticamente!")
		escreva("\nAgência: ", agenciaContaCorrente)
		escreva("\nNúmero da Conta Corrente: ", numeroContaCorrente," - ", digitoContaPoupanca)
		escreva("\nNome do Titular: ", nomeTitular)
		escreva("\nSaldo da Conta Poupança: ", saldoContaPoupanca)
		escreva("\n\nPressione ENTER para voltar para o menu")
		leia(resposta)
		
		pare
		caso contrario: 
	// CASO O USUÁRIO INFORME UMA OPÇÃO INVÁLIDA
		escreva("Opção inválida!")
		
	
		}
		pare
		caso 0: 
	// MENU QUE EXIBE OS DADOS DA CONTA CORRENTE
		escreva("Agência: ", agenciaContaCorrente)
		escreva("\nNúmero da Conta Corrente: ", numeroContaCorrente," - ", digitoContaCorrente)
		escreva("\nNome do Titular: ", nomeTitular)
		escreva("\n\nPressione ENTER para entrar na conta")
		leia(resposta)
	
		pare
		}			
	    
  // Comentário final ao sair do banco.
   		escreva("\n OBRIGADO(A) POR UTILIZAR O BANCO ETE!\n" + "\n"+ nomeTitular+"!"+"VOLTE SEMPRE!\n")
	} enquanto(menu == verdadeiro) 
	                                       
			}			
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */