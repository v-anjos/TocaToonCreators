programa
{
	inclua biblioteca Util --> u
	inteiro acasoDoente, jogatina 
	logico doente

	funcao inicio()
	{
	inteiro dia = 0, opcao = 0, tempovida = 0, felicidade = 5, limpeza = 10, fome = 0, contdia = 0, tempoDoente = 0, opcaoJogatina
	cadeia nome, nomeTreinador
	
	escreva(" __Bem-vindo ao Tochipet__")
	escreva("\nDigite o seu nome treinador:")
	leia(nomeTreinador)
	escreva("Escreva o nome do seu Tochipet:")
	leia(nome)
	
		enquanto(opcao != 6){
			
			escreva("\n==================MENU===================")
			escreva("\n1-Avançar tempo")
			escreva("\n2-Alimentar")
			escreva("\n3-Jogar")
			escreva("\n4-Dar banho")
			escreva("\n5-Ver status")
			escreva("\n6-Desligar")
			escreva("\n",nomeTreinador, ",o que você deseja fazer com o ", nome, "?")
			leia(opcao)
			acasoDoente = u.sorteia(1, 100)
			
			se(acasoDoente <= 33){
				doente = verdadeiro
				
			}senao{
				doente = falso
			}
			
			escolha(opcao){
				caso 1:
					tempovida = tempovida + 8
					fome = fome + 4
					limpeza = limpeza - 2			
					contdia++
						
				se(tempovida == 24){
					dia++
					tempovida = 0
					
				}se(doente){
					tempoDoente = tempoDoente + 8	
				}se(tempoDoente >= 24){
					escreva("\n",nomeTreinador, ",eu estou curado!")
					doente = falso
					tempoDoente = 0
				}se(tempoDoente >= 16){
					se(u.sorteia(1,100)<=66){
						escreva("\n",nomeTreinador, ",eu estou curado!")
						doente = falso
						tempoDoente = 0
					}
				}senao se(tempoDoente >= 8){
					se(u.sorteia(1,100)<=33){
						escreva("\n",nomeTreinador, ",eu estou curado!")
						doente = falso
						tempoDoente = 0
					}
				}

				pare
				
				caso 2:
				se(fome >= 4){
					fome = fome - 4
				}senao se(fome <= 0 ){
					felicidade = felicidade - 2
				}
				pare
				
				caso 3:

				escreva("\n",nomeTreinador, ",vamos jogar!")
				jogatina = u.sorteia(7, 9)
				escreva("\n",nomeTreinador, "\n7-Pedra \n8-Papel \n9-Tesoura \nEscolha uma opção: " )
				leia(opcaoJogatina)
					se(opcaoJogatina >= 7 e opcaoJogatina <= 9){
						se(jogatina == opcaoJogatina){
							escreva("Opa! Empatamos, vamos novamente.")
						}senao se((jogatina == 7  e  opcaoJogatina == 9) ou (jogatina == 8  e  opcaoJogatina == 7) ou (jogatina == 9  e  opcaoJogatina == 8)){
							felicidade = felicidade + 5
							escreva(nomeTreinador, ",eu ganhei!") 
						}senao{
							felicidade = felicidade + 3
							escreva(nomeTreinador, ",eu perdi!")
						}
					}senao{
						escreva("Opção inválida! \nEscolha uma opção novamente: ")
						leia(opcaoJogatina)	
						se(jogatina == opcaoJogatina){
							escreva("Opa! Empatamos, vamos novamente.")
						}senao se((jogatina == 7  e  opcaoJogatina == 9) ou (jogatina == 8  e  opcaoJogatina == 7) ou (jogatina == 9  e  opcaoJogatina == 8)){
							felicidade = felicidade + 5
							escreva(nomeTreinador, ",eu ganhei!") 
						}senao{
							felicidade = felicidade + 3
							escreva(nomeTreinador, ",eu perdi!")
						}
					}

				pare
				
				caso 4:
				se(limpeza >= 10){
					felicidade = felicidade - 6
				}senao{
					limpeza = 10
				}
				pare

							
				caso 5:
				escreva("\n",nomeTreinador, "minha idade é ", nome," é: ", dia ," Dia(s) e ", tempovida, " Horas")
				se(fome <= 0){
					escreva("\n",nomeTreinador, ",estou Satisfeito, de barriga cheia!! \\(^o^)/ ")
					escreva("\nFome Atual: " ,fome, "|10 ")
				}senao se(fome >= 4 e  fome <= 6){
					escreva("\n",nomeTreinador, ",estou ficando com fome!! /(-_-)\\ ")
					escreva("\nFome Atual: " ,fome, "|10 ")
				}senao se(fome == 8){
					escreva("\n", nomeTreinador, ",estou com muita fome!! (╯°□°)╯ ")
					escreva("\nFome Atual: " ,fome, "|10 ")
				}senao{}

				se(felicidade >= 5){
                    	escreva("\n", nomeTreinador, ",estou Animado! \\(^o^)/")
                    	escreva("\nFelicidade Atual: " ,felicidade, "|10 ")
                	}senao se(felicidade <= 4 e felicidade >=3){
                    	escreva("\n", nomeTreinador, ",estou ficando entediado! /(-_-)\\")
                    	escreva("\nFelicidade Atual: " ,felicidade, "|10 ")
                	}senao se(felicidade <=2){
                    	escreva("\n", nomeTreinador, ",estou muito triste (╯°□°)╯")
                    	escreva("\nFelicidade Atual: " ,felicidade, "|10 ")
               	}

                	se(limpeza >= 8){
                    	escreva("\n", nomeTreinador, ",estou limpo, cheirosin \\(^o^)/")
                    	escreva("\nLimpeza Atual: " ,limpeza, "|10 ")
                	}senao se(limpeza <= 6 ){
                    	escreva("\n", nomeTreinador, ",estou começando a ficar sujo /(-_-)\\") 
                    	escreva("\nLimpeza Atual: " ,limpeza, "|10 ")
               	}senao se(limpeza <= 2 ){
                    	escreva("\n", nomeTreinador, ",estou muito sujo, cheirando mal (╯°□°)╯") 
                    	escreva("\nLimpeza Atual: " ,limpeza, "|10 ")
                	}

				pare

				caso 6:
					escreva("\nDesligando... até logo ", nomeTreinador)
				
				pare

				caso contrario:
				escreva("\nOpção inválida. Digite outra opção!")

				pare

		}
		
		se(opcao != 6){	
			se(fome >= 8){
                        escreva("\n⚠ ALERTA: ", nomeTreinador, ",estou com MUITA fome! (╯°□°)╯\n")
                    }
                se(felicidade <= 2){
                        escreva("\n⚠ ALERTA: ", nomeTreinador, ",estou muito triste! (╯°□°)╯\n")
                    }
                se(limpeza <= 2){
                        escreva("\n⚠ ALERTA: ", nomeTreinador, ",estou muito sujo! (╯°□°)╯\n")
                    }
                se(doente){
                        escreva("\n⚠ ALERTA: ", nomeTreinador, ",preciso de cuidados, estou doente! (u_u)\n")
               }
		}
		
		se(dia > 7){
				escreva("\n")
        			escreva("\t\t\t\t ****    ***   ****    ***   *****   *****  *   *  *****\n")
        			u.aguarde(300)
        			escreva("\t\t\t\t *   *  *   *  *   *  *   *  *    *  *      **  *  *\n")
        			u.aguarde(300)
        			escreva("\t\t\t\t ****   *****  ****   *****  *****   ****   * * *  *****\n")
        			u.aguarde(300)
        			escreva("\t\t\t\t *      *   *  *  *   *   *  *    *  *      *  **      *\n")
        			u.aguarde(300)
        			escreva("\t\t\t\t *      *   *  *   *  *   *  *****   *****  *   *  *****\n")
        			u.aguarde(300)
        			escreva("\n")
        			escreva("\nseu Tochipet ",nome, ",completou seus dias por aqui e foi para a Bahia descansar.")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")
				escreva("\nE você ", nomeTreinador, "Pode ser coroado como um verdadeiro mestre Tochipet")
				opcao = 6
				
			}senao se(fome >= 10){
				escreva("\n")
        			escreva("\t\t\t ****     ***   *   *  *****       ***   *   *  *****  ****\n")
        			u.aguarde(300)
        			escreva("\t\t\t *       *   *  ** **  *          *   *  *   *  *      *   *\n")
        			u.aguarde(300)
        			escreva("\t\t\t *  **   *****  * * *  ****       *   *  *   *  ****   ****\n")
        			u.aguarde(300)
        			escreva("\t\t\t *   *   *   *  *   *  *          *   *   * *   *      *  *\n")
        			u.aguarde(300)
        			escreva("\t\t\t  ****   *   *  *   *  *****       ***     *    *****  *   *\n")
        			u.aguarde(300)
        			escreva("\n")
				escreva("\nInfelizmente você não alimentou seu Tochipet e ele acabou indo de arrasta (X_X).")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")
				opcao = 6
			}senao se(felicidade <= 0){
				escreva("\n")
        			escreva("\t\t\t ****     ***   *   *  *****       ***   *   *  *****  ****\n")
        			u.aguarde(300)
        			escreva("\t\t\t *       *   *  ** **  *          *   *  *   *  *      *   *\n")
        			u.aguarde(300)
        			escreva("\t\t\t *  **   *****  * * *  ****       *   *  *   *  ****   ****\n")
        			u.aguarde(300)
        			escreva("\t\t\t *   *   *   *  *   *  *          *   *   * *   *      *  *\n")
        			u.aguarde(300)
        			escreva("\t\t\t  ****   *   *  *   *  *****       ***     *    *****  *   *\n")
        			u.aguarde(300)
        			escreva("\n")
				escreva("\nSeu Tochipet ficou triste e virou estampa de camisa (X_X).")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")
				opcao = 6
			}senao se(limpeza <= 0){
				escreva("\n")
        			escreva("\t\t\t ****     ***   *   *  *****       ***   *   *  *****  ****\n")
        			u.aguarde(300)
        			escreva("\t\t\t *       *   *  ** **  *          *   *  *   *  *      *   *\n")
        			u.aguarde(300)
        			escreva("\t\t\t *  **   *****  * * *  ****       *   *  *   *  ****   ****\n")
        			u.aguarde(300)
        			escreva("\t\t\t *   *   *   *  *   *  *          *   *   * *   *      *  *\n")
        			u.aguarde(300)
        			escreva("\t\t\t  ****   *   *  *   *  *****       ***     *    *****  *   *\n")
        			u.aguarde(300)
        			escreva("\n")
				escreva("\n",nome, ",ficou podre e morreu de infecção desconhecida (X_X).")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")	
				opcao = 6			
			}
		}
	}
}
