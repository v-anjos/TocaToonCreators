#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
	int dia = 0, opcao = 0, tempovida = 0, felicidade = 5, limpeza = 10, fome = 0, contdia = 0;
	int tempoDoente = 0, opcaoJogatina, acasoDoente, jogatina, doente, jogardnv;
	char nome[50], nomeTreinador[50];

	printf(" __Bem-vindo ao Tochipet__");
	printf("\nDigite o seu nome treinador: ");
	scanf("%s", &nomeTreinador);
	printf("Escreva o nome do seu Tochipet: ");
	scanf("%s", &nome);
	srand(time(NULL));

	while( opcao != 6){
			
			printf("\n==================MENU===================");
			printf("\n1-Avançar tempo");
			printf("\n2-Alimentar");
			printf("\n3-Jogar");
			printf("\n4-Dar banho");
			printf("\n5-Ver status");
			printf("\n6-Desligar");
			printf("\n%s, o que você deseja fazer com %s?\n", nomeTreinador, nome);
			scanf("%d", &opcao);
			acasoDoente = rand() % 100 + 1;
			
			if(acasoDoente <= 33){
				doente = 1 ;
				
			}else{
				doente = 0;
			}
			
			switch (opcao)
			{
			case 1:
				tempovida = tempovida + 8;
				fome = fome + 4;
				limpeza = limpeza - 2;
				contdia++;

				if(tempovida == 24){
					dia++ ;
					tempovida = 0 ;
				}
				if(doente){
					tempoDoente = tempoDoente + 8 ;
				}
				if(tempoDoente >= 24){
					printf("\n",nomeTreinador, ",eu estou curado!");
					doente = 0 ;
					tempoDoente = 0 ;
				}
				if(tempoDoente >= 16){
					if(rand() % 100 + 1 <= 66){
						printf("\n",nomeTreinador, ",eu estou curado!");
						doente = 0 ;
						tempoDoente = 0 ;
					}
				}
				else if(tempoDoente >= 8){
					if(rand() % 100 + 1 <= 66){
						printf("\n",nomeTreinador, ",eu estou curado!");
						doente = 0 ;
						tempoDoente = 0 ;						
					} 
				}

				break;
			case 6:
				printf("\nDesligando Tochipet...\n");
				break;
			
			default:
				printf("\nOpção ainda não implementada.\n");
				break;
			}
	
	}
	return 0;
}
