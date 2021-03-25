# Challenge Zé

Este repositório contém a análise dos dados do challenge do Zé Delivery - Desafio I. A apresentação da análise encontra-se [aqui](apresentacao.md).
<br>
<br>

#### How to run

Para reproduzir esta análise, use o terminal conda para criar um novo ambiente.

- Primeiro, faça download do gerenciador de pacotes conda ou miniconda: 

link: https://docs.conda.io/en/latest/miniconda.html

- No terminal, navegue até challente_escale e digite:

```
conda env create -f environment.yml
```

- Depois de criar o ambiente, é necessário ativá-lo:

```
conda activate ze_delivery
```

- Então, coloque este novo ambiente no kernel do jupyter notebook.
Mais informações [aqui.](https://queirozf.com/entries/jupyter-kernels-how-to-add-change-remove)

```
python -m ipykernel install --user --name=ze_delivery
```

- Abra o jupyter lab e selecione o kernel zé no canto superior direito da tela.
<br>
<br>

#### Estrutura deste diretório
```

|------ desafio I                                 
|            |--- data_inputs_outputs             dados usados nos notebooks (inputs/outputs)
|            |--- images                          imagens usadas nos notebooks e na apresentação
|            |--- notebooks                       notebooks com as análises
|                 |--- data_quality               notebook usado para avaliar a qualidade dos dados
|                 |--- EDA                        notebook contendo a análise exploratória dos dados
|            |--- src                             pacote Python criado especificamente para esta análise
|                 |--- utils.py                   contém as funções mais gerais (usadas nas análises)
|                 |--- paths.py                   contém as variáveis usadas para facilitar a leitura e salvamento de aquivos
|            |--- environment.yml                 contém o nome e versão das bibliotecas usadas neste ambiente 
|            |--- respostas.md                    contém a apresentação dos resultados da análise (para ser utilizado no dia da apresentação do challenge)
|            |--- setup.py                        arquivo python para a criação do pacote src
|            |--- README.md


```
