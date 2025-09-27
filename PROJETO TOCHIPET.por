programa
{
	
	funcao inicio()
	{
	inteiro dia = 0, opcao = 0, tempovida = 0, felicidade = 5, limpeza = 10, fome = 0, contdia = 0
	real doente, cura
	cadeia nome
	
	escreva(" __Bem-vindo ao Tochipet__")
	escreva("\nEscreva o nome do seu Tochipet: ")
	leia(nome)
		enquanto(opcao <= 5){
			escreva("\n==================MENU==================")
			escreva("\n1-Avançar tempo")
			escreva("\n2-Alimentar")
			escreva("\n3-Jogar")
			escreva("\n4-Dar banho")
			escreva("\n5-Ver status")
			escreva("\n6-Desligar")
			escreva("\nO que você deseja fazer com o ", nome, "? ")
			leia(opcao)
			escreva("\n========================================")

			escolha(opcao){
				caso 1:
					tempovida = tempovida + 8
					fome = fome + 4
					limpeza = limpeza - 2			
					contdia++
						
				se(tempovida == 24){
					dia++
					tempovida = 0
					
				}senao{

				pare
				}
				caso 2:
				se(fome >= 4){
					fome = fome - 4
				}senao se(fome <= 0 ){
					felicidade = felicidade - 2

				pare

				}
				caso 3:

				//ACRESCENTAR O JOGAR, COM A FUNÇÂO ALEATORIA

				pare
				
				caso 4:
				se(limpeza >= 10){
					felicidade = felicidade - 6
				}senao{
					limpeza = 10

				pare

							}
				caso 5:
				escreva("\nA idade de ", nome," é: ", dia ," Dia(s) e ", tempovida, " Horas")
				se(fome <= 0){
					escreva("\n Estou Satisfeito, de barriga cheia!!(っ˘ڡ˘ς) ")
					escreva("\n Fome Atual: " ,fome, "|10 ")
				}senao se(fome >= 4 e  fome <= 6){
					escreva("\nEstou ficando com fome!! (￣﹃￣) ")
					escreva("\n Fome Atual: " ,fome, "|10 ")
				}senao se(fome == 8){
					escreva("\nEstou com muita fome!! (｡•́︿•̀｡) ")
					escreva("\n Fome Atual: " ,fome, "|10 ")
				}senao{}


				se(felicidade >= 6){
					escreva("\nEstou Animado!(^‿^)")
					escreva("\n Felicidade Atual: " ,felicidade, "|10 ")
				}senao se(felicidade <= 4){
					escreva("\nEstou ficando entediado! (╯︵╰,)")
					escreva("\n Felicidade Atual: " ,felicidade, "|10 ")
				}senao se(felicidade <=1){
					escreva("\nEstou muito triste (╥﹏╥)")
					escreva("\n Felicidade Atual: " ,felicidade, "|10 ")
				}senao{}
				//ACRESCENTAR O JOGAR, COM A FUNÇÂO ALEATORIA

				se(limpeza >= 8){
					escreva("\nEstou limpo, cheirosin (￣▽￣)ノ＿彡☆")
					escreva("\n Limpeza Atual: " ,limpeza, "|10 ")
				}senao se(limpeza <= 6 ){
					escreva("\nEstou começando a ficar sujo (≧︿≦)") 
					escreva("\n Limpeza Atual: " ,limpeza, "|10 ")
				}senao se(limpeza <= 2 ){
					escreva("\nEstou muito sujo, cheirando mal (╬ಠ益ಠ)") 
					escreva("\n Limpeza Atual: " ,limpeza, "|10 ")
				}senao{}

				pare

				caso contrario:
				se(opcao <= 0 ou opcao > 6){
				escreva("\nOpção Inválida. Digite outra opção.")
				leia(opcao)
				}
				
				pare
					
				}
			se(dia > 7){
				escreva("\nParabens! seu Tochipet ",nome, "completou seus dias por aqui e foi para a Bahia descansar.")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")
				opcao = 6
			}senao se(fome >= 10){
				escreva("\nInfelizmente você não alimentou seu Tochipet e ele acabou indo de arrasta.")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")
				opcao = 6
			}senao se(felicidade <= 0){
				escreva("\nSeu Tochipet ficou triste e virou estampa de camisa.")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")
				opcao = 6
			}senao se(limpeza <= 0){
				escreva("\n",nome, "ficou podre e morreu de infecção desconhecida.")
				escreva("\nA idade de ", nome," foi: ", dia ," Dia(s) e ", tempovida, " Horas")	
				opcao = 6			
			}senao se(opcao == 6){
				escreva("\nDesligando...")				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */