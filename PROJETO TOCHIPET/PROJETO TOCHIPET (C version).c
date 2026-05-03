#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

int main() {
    int dia = 0, opcao = 0, tempovida = 0, felicidade = 5, limpeza = 10, fome = 0, contdia = 0;
    int tempoDoente = 0, opcaoJogatina, acasoDoente, jogatina, doente = 0;
    char nome[50], nomeTreinador[50];

    printf(" __Bem-vindo ao Tochipet__");
    printf("\nDigite o seu nome treinador: ");
    scanf("%49s", nomeTreinador);

    printf("Escreva o nome do seu Tochipet: ");
    scanf("%49s", nome);

    srand(time(NULL));

    while (opcao != 6) {

        printf("\n==================MENU===================");
        printf("\n1-Avançar tempo");
        printf("\n2-Alimentar");
        printf("\n3-Jogar");
        printf("\n4-Dar banho");
        printf("\n5-Ver status");
        printf("\n6-Desligar");
        printf("\n%s, o que você deseja fazer com %s?\n", nomeTreinador, nome);

        scanf("%d", &opcao);

        if (!doente) {
            acasoDoente = rand() % 100 + 1;

            if (acasoDoente <= 33) {
                doente = 1;
            }
        }

        switch (opcao) {

            case 1:
                tempovida += 8;
                fome += 4;
                limpeza -= 2;
                contdia++;

                if (tempovida >= 24) {
                    dia++;
                    tempovida = 0;
                }

                if (doente) {
                    tempoDoente += 8;
                }

                if (tempoDoente >= 24) {
                    printf("\n%s, eu estou curado!", nomeTreinador);
                    doente = 0;
                    tempoDoente = 0;
                }
                else if (tempoDoente >= 16) {
                    if (rand() % 100 + 1 <= 66) {
                        printf("\n%s, eu estou curado!", nomeTreinador);
                        doente = 0;
                        tempoDoente = 0;
                    }
                }
                else if (tempoDoente >= 8) {
                    if (rand() % 100 + 1 <= 66) {
                        printf("\n%s, eu estou curado!", nomeTreinador);
                        doente = 0;
                        tempoDoente = 0;
                    }
                }

                break;

            case 2:
                if (fome >= 4) {
                    fome -= 4;
                }
                else if (fome <= 0) {
                    felicidade -= 2;
                }

                printf("\n%s foi alimentado!", nome);
                break;

            case 3:
                printf("\n%s, vamos jogar!", nomeTreinador);

                jogatina = rand() % 3 + 7;

                printf("\n7-Pedra \n8-Papel \n9-Tesoura \nEscolha uma opção: ");
                scanf("%d", &opcaoJogatina);

                while (opcaoJogatina < 7 || opcaoJogatina > 9) {
                    printf("Opção inválida! Escolha novamente: ");
                    scanf("%d", &opcaoJogatina);
                }

                if (jogatina == opcaoJogatina) {
                    printf("Opa! Empatamos, vamos novamente.");
                }
                else if ((jogatina == 7 && opcaoJogatina == 9) ||
                         (jogatina == 8 && opcaoJogatina == 7) ||
                         (jogatina == 9 && opcaoJogatina == 8)) {

                    felicidade += 5;
                    printf("%s, eu ganhei!", nomeTreinador);
                }
                else {
                    felicidade += 3;
                    printf("%s, eu perdi!", nomeTreinador);
                }

                break;

            case 4:
                if (limpeza >= 10) {
                    felicidade -= 6;
                }
                else {
                    limpeza = 10;
                }

                printf("\n%s tomou banho!", nome);
                break;

            case 5:
                printf("\n%s, minha idade é: %d Dia(s) e %d Horas", nomeTreinador, dia, tempovida);

                if (fome <= 0) {
                    printf("\n%s, estou Satisfeito, de barriga cheia!! \\(^o^)/", nomeTreinador);
                }
                else if (fome >= 4 && fome <= 6) {
                    printf("\n%s, estou ficando com fome!! /(-_-)\\", nomeTreinador);
                }
                else if (fome >= 8) {
                    printf("\n%s, estou com muita fome!! (╯°□°)╯", nomeTreinador);
                }

                printf("\nFome Atual: %d |10", fome);

                if (felicidade >= 5) {
                    printf("\n%s, estou Animado! \\(^o^)/", nomeTreinador);
                }
                else if (felicidade <= 2) {
                    printf("\n%s, estou muito triste (╯°□°)╯", nomeTreinador);
                }
                else {
                    printf("\n%s, estou ficando entediado! /(-_-)\\", nomeTreinador);
                }

                printf("\nFelicidade Atual: %d |10", felicidade);

                if (limpeza >= 8) {
                    printf("\n%s, estou limpo, cheirosin \\(^o^)/", nomeTreinador);
                }
                else if (limpeza <= 2) {
                    printf("\n%s, estou muito sujo, cheirando mal (╯°□°)╯", nomeTreinador);
                }
                else {
                    printf("\n%s, estou começando a ficar sujo /(-_-)\\", nomeTreinador);
                }

                printf("\nLimpeza Atual: %d |10", limpeza);

                if (doente) {
                    printf("\n%s, estou doente! (u_u)", nomeTreinador);
                }

                break;

            case 6:
                printf("\nDesligando... até logo, %s \n", nomeTreinador);
                break;

            default:
                printf("\nOpção inválida. Digite outra opção!\n");
                break;
        }

        if (opcao != 6) {

            if (fome >= 8) {
                printf("\n⚠ ALERTA: %s, estou com MUITA fome! (╯°□°)╯\n", nomeTreinador);
            }

            if (felicidade <= 2) {
                printf("\n⚠ ALERTA: %s, estou muito triste! (╯°□°)╯\n", nomeTreinador);
            }

            if (limpeza <= 2) {
                printf("\n⚠ ALERTA: %s, estou muito sujo! (╯°□°)╯\n", nomeTreinador);
            }

            if (doente) {
                printf("\n⚠ ALERTA: %s, preciso de cuidados, estou doente! (u_u)\n", nomeTreinador);
            }
        }

        if (dia > 7) {

            printf("\n");
            printf("\t\t\t\t ****    ***   ****    ***   *****   *****  *   *  *****\n");
            sleep(1);
            printf("\t\t\t\t *   *  *   *  *   *  *   *  *    *  *      **  *  *\n");
            sleep(1);
            printf("\t\t\t\t ****   *****  ****   *****  *****   ****   * * *  *****\n");
            sleep(1);
            printf("\t\t\t\t *      *   *  *  *   *   *  *    *  *      *  **      *\n");
            sleep(1);
            printf("\t\t\t\t *      *   *  *   *  *   *  *****   *****  *   *  *****\n");
            sleep(1);

            printf("\nSeu Tochipet %s completou seus dias por aqui e foi para a Bahia descansar.", nome);
            printf("\nA idade de %s foi: %d Dia(s) e %d Horas", nome, dia, tempovida);
            printf("\nE você %s pode ser coroado como um verdadeiro mestre Tochipet!\n", nomeTreinador);

            opcao = 6;
        }
        else if (fome >= 10 || felicidade <= 0 || limpeza <= 0) {

            printf("\n");
            printf("\t\t\t ****     ***   *   *  *****       ***   *   *  *****  ****\n");
            sleep(1);
            printf("\t\t\t *       *   *  ** **  *          *   *  *   *  *      *   *\n");
            sleep(1);
            printf("\t\t\t *  **   *****  * * *  ****       *   *  *   *  ****   ****\n");
            sleep(1);
            printf("\t\t\t *   *   *   *  *   *  *          *   *   * *   *      *  *\n");
            sleep(1);
            printf("\t\t\t  ****   *   *  *   *  *****       ***     *    *****  *   *\n");
            sleep(1);

            if (fome >= 10) {
                printf("\nInfelizmente você não alimentou seu Tochipet e ele acabou indo de arrasta (X_X).");
            }
            else if (felicidade <= 0) {
                printf("\nSeu Tochipet ficou triste e virou estampa de camisa (X_X).");
            }
            else if (limpeza <= 0) {
                printf("\n%s ficou podre e morreu de infecção desconhecida (X_X).", nome);
            }

            printf("\nA idade de %s foi: %d Dia(s) e %d Horas\n", nome, dia, tempovida);

            opcao = 6;
        }
    }

    return 0;
}
