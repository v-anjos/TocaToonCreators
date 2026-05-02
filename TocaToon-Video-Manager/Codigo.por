programa
{
	cadeia nomesFilmes[10]
	inteiro anosLancamentos[10], vezesLocado[10], quantidade = 0
	logico locado[10] // Verdadeiro = locado / Falso = Disponivel 
	
	funcao filmesDisponiveis(){
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		escreva("\n---- FILMES DISPONIVEIS ----\n")
		inteiro i
		para(i = 0; i < quantidade; i++){
			se(locado[i] == falso){
				escreva("\n", i, " - ", nomesFilmes[i])
			}
		}
	}
	
	funcao cadastrarFilme(){
		inteiro i
		se(quantidade >= 10){
			escreva("\nLimite Maximo atingido!\n")
			retorne 
		}
		
			escreva("\nDigite o nome do filme (apenas minúsculas, sem acento): ")
			leia(nomesFilmes[quantidade])
			para(i = 0; i <= quantidade - 1; i++){
				se(nomesFilmes[i] == nomesFilmes[quantidade]){
					escreva("Filme já cadastrado!\n")
					retorne
				}
			}
			escreva("Digite o ano de lançamento entre 1888 e 2025: ")
			leia(anosLancamentos[quantidade])
			se(anosLancamentos[quantidade] < 1888 ou anosLancamentos[quantidade] > 2025){
				escreva("Ano de lançamento inválido. Tente novamente: ")
				leia(anosLancamentos[quantidade])
			}
			vezesLocado[quantidade] = 0
			locado[quantidade] = falso
			quantidade++
			escreva("\nFilme cadastrado com sucesso!")
			escreva("\n------------------------------------------\n")
	}

	funcao filmesLocados(){
		inteiro i, locacoes
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		locacoes = validadorDeLocacao()
		se( locacoes == 1){
		escreva("\n---- FILMES LOCADOS ----\n")
		para(i = 0; i < quantidade; i++){
			se(locado[i]){
				escreva(nomesFilmes[i], "\n")
				}
			}
		}senao{
		escreva("\nNenhum filme Locado!\n")	
		escreva("------------------------------------------\n")
		}
	}
	
	funcao listarFilmes(){
		escreva("\n---- LISTA DE FILMES ----\n")
		filmesLocados()
		filmesDisponiveis()
	}
	funcao inteiro validadorDeLocacao(){
		inteiro i, statusLocacao = 0
		para (i = 0; i < quantidade; i++){
			se(locado[i]){
				retorne 1
			}						
		}
		retorne 0		
	}


	funcao alugarFilme(){
		inteiro opcao
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		escreva("\n---- LISTA DE FILMES ----\n")
		filmesDisponiveis()
		escreva("\nEscolha a opção do filme desejado (Numero): ")
		leia(opcao)
		se(opcao < 0 ou opcao >= quantidade){
			escreva("\nOpção Invalida!\n")
			retorne
		}
		se(locado[opcao]){
			escreva("\nFilme já está locado.\n")
			retorne
		}
		locado[opcao] = verdadeiro
		vezesLocado[opcao] = vezesLocado[opcao] + 1
		escreva("\nFilme Locado com sucesso!")
		escreva("\n------------------------------------------\n")
	}

	funcao devolverFilme(){
		inteiro i, opcao
		logico temLocados = falso

		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		escreva("\n---- LISTA DE FILMES ----\n")
		para(i = 0; i < quantidade; i++){
			se(locado[i]){
				escreva("\n", i, " - ", nomesFilmes[i])
				temLocados = verdadeiro
			}
		}
		se(temLocados==falso){
			escreva("\nNenhum filme locado no momento.\n")
			retorne
		}
		escreva("\nEscolha a opção que você deseja devolver (número): ")
		leia(opcao)
		se(opcao < 0 ou opcao >= quantidade){
			escreva("\nOpção inválida.\n")
			retorne
		}
		se(locado[opcao] == falso){
			escreva("\nEsse filme não está mais locado\n")
			retorne
		}
		locado[opcao] = falso
		escreva("\nFilme devolvido com sucesso!")
		escreva("\n------------------------------------------\n")
	}

	funcao filmeMaisLocado(){
		inteiro i, indiceMaior = -1, maiorQuantidade=-1
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		para(i = 0; i < quantidade; i++){
			se(vezesLocado[i] > maiorQuantidade){
				maiorQuantidade = vezesLocado[i]
				indiceMaior= i
			}
		}
		escreva("\n---- FILME MAIS LOCADO ----\n")
		escreva("\nFilme mais locado: ", nomesFilmes[indiceMaior])
		escreva("\nAno de lançamento: ", anosLancamentos[indiceMaior])
		escreva("\nQuantidade de vezes locado: ", vezesLocado[indiceMaior])
		se(locado[indiceMaior]){
			escreva("\nFilme locado.\n")
		}senao{
			escreva("\nFilme disponível.\n")
		}
		escreva("\n------------------------------------------\n")
	}

	funcao buscarFilme(){
		cadeia nomeBusca
		inteiro i
		logico encontrado = falso
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		escreva("\nDigite o nome do filme que você deseja encontrar (apenas minúsculas, sem acento): ")
		leia(nomeBusca)
		para(i = 0; i < quantidade; i++){
			se(nomesFilmes[i]==nomeBusca){
				encontrado=verdadeiro
				escreva("\nFilme encontrado")
				escreva("\nNome: ", nomesFilmes[i])
				escreva("\nAno de lançamento: ", anosLancamentos[i])
				escreva("\nQuantidade de vezes locado: ", vezesLocado[i])
				se(locado[i]){
					escreva("\nFilme locado.\n.")
					retorne
				}senao{
				escreva("\nFilme disponível.\n")
				retorne
				}
			}	
		}
		se(encontrado == falso){
			escreva("\nFilme não encontrado.\n")
		}
	}

	funcao atualizarDadosDoFilme(){
		cadeia novoNome
		inteiro i, j, k, novoAno, opcao, novaQuantidadeLocacoes
		logico novoStatus
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		escreva("\nAtualizar dados do filme")
		escreva("\nFilmes cadastrados")
		para(i = 0; i < quantidade; i++){
			escreva("\n", i, " - ", nomesFilmes[i])
		}
		escreva("\nInforme o número do filme que você deseja atualizar: ")
		leia(opcao)
		se(opcao < 0 ou opcao >= quantidade){
			escreva("Opção inválida!\n")
			retorne
		}
		escreva("\nQual dado você deseja atualizar?")
		escreva("\n1-Nome")
		escreva("\n2-Ano de lançamento")
		escreva("\n3-Quantidade de vezes locado")
		escreva("\n4-Status (locado/disponível)")
		escreva("\nEscolha: ")
		leia(j)
		escolha(j){
			caso 1: 
			escreva("\nEscreva o novo nome do filme: ")
			leia(novoNome)
			nomesFilmes[opcao] = novoNome
			escreva("\nNome atualizado com sucesso!\n")
			pare

			caso 2: 
			escreva("\nEscreva o novo ano do lançamento do filme: ")
			leia(novoAno)
			anosLancamentos[opcao] = novoAno
			escreva("\nAno de lançamento atualizado com sucesso!\n")
			pare

			caso 3:
			escreva("\nEscreva a nova quantidade de vezes que o filme foi locado: ")
			leia(novaQuantidadeLocacoes)
			vezesLocado[opcao] = novaQuantidadeLocacoes
			escreva("\nQuantidade de locações atualizado com sucesso!\n")
			pare

			caso 4:
			escreva("\nInforme o novo status(1-Locado/2-Diponível): ")
			leia(k)
			se(k == 1){
				locado[opcao] = verdadeiro
			}senao{
				locado[opcao] = falso
			}
			escreva("\nStatus atualizado com sucesso!\n")
			pare

			caso contrario: 
			escreva("\nOpção inválida!\n")
		}
	}

	funcao estatisticasGerais(){
		real taxaOcupacao
		inteiro i, totalLocados = 0
		se(quantidade == 0){
			escreva("\nNenhum filme cadastrado!\n")
			retorne
		}
		para(i = 0; i < quantidade; i++){
			se(locado[i]){
				totalLocados++
			}
		}
		taxaOcupacao = (totalLocados * 100.0) / quantidade
		escreva("\n---- ESTATISTICAS GERAIS ----\n")
		escreva("\nTotal de filmes cadastrados: ", quantidade)
		escreva("\nTotal de filmes locados: ", totalLocados)
		escreva("\nPercentual de ocupação: ", taxaOcupacao, "%")
		escreva("\n------------------------------------------\n")
	}

	funcao sair(){
		escreva("\nSaindo...\n")
	}

	funcao apresentar(){
		cadeia enter
    		escreva("--------------------------------------------------")
    		escreva("\n               TOCATOON VIDEO MANAGER           ")
    		escreva("\n--------------------------------------------------")
    		escreva("")
    		escreva("\nBem-vindo ao TOCATOON VIDEO MANAGER, um programa desenvolvido")
    		escreva("\npela equipe TocaToonCreators para gerenciar uma videolocadora.")
    		escreva("")
    		escreva("\nPressione Enter para continuar...")
    		leia(enter)

    		escreva("")
    		escreva("\nNosso software permite cadastrar filmes, verificar filmes disponíveis,")
    		escreva("\nalugar e devolver filmes, buscar informações e gerar estatísticas gerais.")
    		escreva("")
    		escreva("\nPressione Enter para continuar...")
    		leia(enter)

    		escreva("")
    		escreva("\nO programa foi criado com atenção aos detalhes para que a gestão da")
    		escreva("\nvideolocadora seja simples, rápida e eficiente, simulando a experiência")
    		escreva("\nde uma videolocadora do ano 2000, onde os clientes precisavam devolver")
    		escreva("\nos filmes alugados.")
    		escreva("")
    		escreva("\nPressione Enter para continuar...")
    		leia(enter)

    		escreva("")
    		escreva("\nEquipe de Desenvolvimento:")
    		escreva("\n - Vinicius")
    		escreva("\n - Kaiky")
    		escreva("\n - Douglas")
    		escreva("")
    		escreva("\nPressione Enter para continuar...")
    		leia(enter)

    		escreva("")
    		escreva("\nEsperamos que você aproveite o programa e que ele facilite a gestão")
    		escreva("\ndos filmes na sua videolocadora!")
    		escreva("\n")
    		escreva("\nSe quiser melhorar, expandir ou criar novas versões, estamos aqui")
    		escreva("TocaToonCreators – Criando ideias, histórias e código.")
    		escreva("\n--------------------------------------------------")
    		escreva("")
    		escreva("\nPressione Enter para voltar ao menu principal...")
    		leia(enter)
		
	}

	funcao menu(){
		inteiro opcao = 0
		enquanto (opcao != 10){
			escreva("\n---- MENU ----\n")
            	escreva("1 - Cadastrar um filme\n")
            	escreva("2 - Listar Filmes\n")
            	escreva("3 - Filmes locados\n")
            	escreva("4 - Alugar um filme\n")
            	escreva("5 - Devolver um filme\n")
            	escreva("6 - Filme mais locado\n")
            	escreva("7 - Buscar filme\n")
            	escreva("8 - Atualizar dados de um filme\n")
            	escreva("9 - Estatísticas gerais\n")
            	escreva("10 - Sair do programa\n")
            	escreva("Escolha uma opção: ")
            	leia(opcao)

            	escolha (opcao){
            		caso 1:
            		
            		cadastrarFilme()
            		
            		pare 

            		caso 2: 
            		
            		listarFilmes()
            		
					pare

					caso 3: 
				
					filmesLocados()
				
					pare	

           			caso 4: 
           		
           			alugarFilme()
           		
           			pare

           			caso 5:
           		
           			devolverFilme()
           		
           			pare

           			caso 6: 
           		
           			filmeMaisLocado()
           		
           			pare

           			caso 7: 
           		
           			buscarFilme()
           		
           			pare

           			caso 8: 
           		
           			atualizarDadosDoFilme()
           		
           			pare

           			caso 9: 
           		
           			estatisticasGerais()
           		
           			pare

           			caso 10: 

           			sair()

           			pare

					caso contrario: 
					escreva("\nOpção invalida! Tente novamente.\n")
            	}
            	
		}
		
	}

	funcao menuPrincipal(){
		inteiro opcao = 0
		enquanto (opcao != 3){
			escreva("\n---- MENU PRINCIPAL ----\n")
			escreva("1 - Iniciar Programa\n")
			escreva("2 - Exibir Explicação\n")
			escreva("3 - Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			escolha(opcao){
				caso 1: 
				
				menu()
				
				pare

				caso 2:
				
				apresentar()
				
				pare

				caso 3:
				
				sair()
				
				pare

				caso contrario:
				
				escreva("\nOpção invalida! Tente novamente.\n")
			}
		}
	}
	
	funcao inicio()
	{
		menuPrincipal()
	}
}
