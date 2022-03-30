programa
{
	//1 PARA 
	//1- A prefeitura de uma cidade fez uma pesquisa entre 20 de seus habitantes,
	//coletando dados sobre o salário e número de filhos. A prefeitura deseja saber:
	//a) média do salário da população;
	//b) média do número de filhos;
	//c) maior salário;
	//d) percentual de pessoas com salário até R$100,00.

	//programas - objetivos - nome
	//variaveis
	//entradas
	//processamentos - desvios condicionais (se), repetição
	//saida
	//fim

	funcao inicio()
	{
		const inteiro HABITANTES = 20 //para somente alterar aqui

		real salarioArray [HABITANTES] //declarei a caixa/vetor dos salarios
		inteiro filhosArray [HABITANTES] //declarei a caixa/vetor dos filhos
		
		real salario = 0.0
		inteiro filhos = 0
		real mediaSalario = 0.0 
		inteiro mediaFilhos = 0 
		real maiorSalario = 0.0 
		real percentual = 0.0   
		real somaSalario = 0.0
		inteiro somaFilhos = 0
		
		para (inteiro index = 0; index < HABITANTES; index ++) //loop para DIGITAR E GRAVAR O QUE DIGITEI
		{											//em que crio variavel x
			escreva ("digite seu salario: ")				//esse x vai ate 19, pq comeca no 0
			leia (salario)								//x vai somento de 1 em 1
			
			escreva ("digite nº de filhos: ")
			leia (filhos)

			salarioArray [index] = salario // gravando na caixa/memoria os salarios que eu digitar na parte superior
			filhosArray [index] = filhos	 // gravando na caixa/memoria os filhos que eu digitar na parte superior
		} 
		
		para (inteiro index = 0; index < HABITANTES; index ++) //loop para FAZER A TROCA DO MAIOR SALARIO 
		{
			se (salarioArray [index] > maiorSalario)		//se o que tiver na caixa > maiorsalario,
			{										//grave na caixa o maior salario
				maiorSalario = salarioArray [index]
			}
			se (salarioArray [index] <= 100)				//se o que tiver na caixa <= 100 reais
			{
				percentual++							//vai adicionar o percentual de cada habitante, ex:
			}										// HAB 1, percentual 1 ; HAB 2, percentual 2...
			
			somaSalario += salarioArray [index]			//ainda no loop, a soma dos salarios vai ser a soma + salario
			somaFilhos += filhosArray [index]				//ainda no loop, a soma dos filhos vai ser a soma + filhos		
		}
		
		mediaSalario = somaSalario / HABITANTES				//fora do loop (pq primeiro precisa de todos os valores dos salarios, media do salarios
		mediaFilhos = somaFilhos / HABITANTES				//fora do loop (pq primeiro precisa de todos os valores dos filhos, media do filhos

		real perc = (100 / HABITANTES) * percentual			//per = porcentagem que queremos = 100 pelo nº de HAB (pq precisa da quantidade de hab (5,0%) *percentual de todos que calculamos acima
		
		escreva ("\nmedia de Salario é: R$", mediaSalario)
		escreva ("\nmedia dos Filhos é: ", mediaFilhos)
		escreva ("\no maior Salario é: R$", maiorSalario)
		escreva ("a porcentagem de pessoas com salário até R$100,00 é de: ", perc, "%")












	//fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */