Algoritmo "semnome"
Var
times, classificacao: vetor [1..4] de caracter
timetmp: caracter
pontosturno: vetor [1..4, 1..2] de inteiro
totalpontos: vetor [1..4] de inteiro
x, y: inteiro
Inicio
// Nome dos times
para x de 1 ate 4 faca
     escreval("Digite o nome do ", x,"� time: ")
     leia(times[x])
     classificacao[x] <- times[x]
fimpara

// Pontua��o dos times
escreval("Escreva a pontua��o do 1� turno: ")
para y de 1 ate 2 faca
     se(y = 2)entao
          escreval("Escreva a pontua��o do 2� turno: ")
     fimse
     para x de 1 ate 4 faca
          escreval(times[x]," no", y," turno: ")
          leia(pontosturno[x, y])
     fimpara
fimpara

// Total de pnts
para x de 1 ate 4 faca
     totalpontos[x] <- pontosturno[x, 1] + pontosturno[x, 2]
fimpara

// Classificacao
para x de 1 ate 4 faca
     para y de x + 1 ate 4 faca
          se (totalpontos[x] < totalpontos[y]) entao
             timetmp <- classificacao[x]
             classificacao[x] <- classificacao[y]
             classificacao[y] <- timetmp
          senao
               se (totalpontos[x] = totalpontos[y])entao
                  se (pontosturno[x, 2] < pontosturno[y, 2]) entao
                     timetmp <- classificacao[x]
                     classificacao[x] <- classificacao[y]
                     classificacao[y] <- timetmp
                  senao
                       se (pontosturno[x, 2] = pontosturno[y, 2]) entao
                          se (pontosturno[x, 1] < pontosturno[y, 1]) entao
                             timetmp <- classificacao[x]
                             classificacao[x] <- classificacao[y]
                             classificacao[y] <- timetmp
                          fimse
                       fimse
                  fimse
               fimse
          fimse
     fimpara
fimpara

limpatela
escreval("+-------+---------+---------+---------------+---------------+")

// Cabe�alho
escreval("| Times | Turno 1 | Turno 2 | Total de pnts | Classifica��o |")

escreval("+-------+---------+---------+---------------+---------------+")

// Tabela
para x de 1 ate 4 faca
escreval("| ",times[x],"   |   ",pontosturno[x, 1],"   |   ",pontosturno[x, 2],"  |   ",totalpontos[x],"   |   ",classificacao[x],"  |")
escreval("+-------+---------+---------+---------------+---------------+")
fimpara
escreval("time campe�o: ", classificacao[1])
escreval("vice-campe�o: ", classificacao[2])
escreval("pior time do campeonato: ",classificacao[4])

escreval("==============================================")
Fimalgoritmo