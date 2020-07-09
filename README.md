# Automação de aplicação Web com Ruby/Capybara/Cucumber

## Pré-requisitos:

- Visual Studio Code
- Ruby Installer(Windows)
- Cmder
- Docker Desktop for Windows

## Configuração de variáveis de ambiente

- cmder_root C:\qa\tools\cmder

## Primeiros Passos:

- Após baixar e instalar o VSCode, Cmder, o Ruby Installer(LTS) e o Docker Desktop for Windows
- Abrir o Cmder e utilizar o comando "ruby --version" para verificar a versão do Ruby instalada.
- Verificada a versão utilizar "ridk install" para fazer a instalação do quit de dev do Ruby, ao executar esse comando deve aparecer três opções. Digitar 3 e enter. Esperar finalizar e enter novamente.
- Agora vamos utilizar o comando "gem install bundler" será instalado o gerenciador de dependência do Ruby.
- Verificar a versão do bundler instalada, usar "bundler --version"
- Verificar configuração de ambiente do ruby "gem env"

#### Criando o projeto:

- Criar uma pasta no computador no lugar desejado.

- Abrir o VSCode, clicar em File ---> Open Folder  ou utilizar o atalho Ctrl + o 

  ​	![image-20200709161114553](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709161114553.png)

- Selecionar a pasta do projeto.

  ![image-20200709161204639](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709161204639.png)

- Abrir o Cmder na pasta do projeto:

  ![image-20200709161301338](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709161301338.png)

-  Utilizar o comando `bundle init` , esse comando ira criar um arquivo chamado  Gemfile, esse arquivo é onde iremos adicionar as "gems" nossas dependências do projeto.  

  ![image-20200709162321483](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709162321483.png)

- Após adicionar as dependências e salvar, voltar para o Cmder e utilizar o comando,  `bundle install` esse comando ira baixar todas nos dependências.

  ![image-20200709162751336](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709162751336.png)

  ​	**<u>Extra:</u>** Observar que dentro da pasta do seu projeto apareceu um arquivo com o nome de "Gemfile.lock", esse arquivo
  é um registro da instalação das dependências.

  ![image-20200709162818471](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709162818471.png)

  

- Ainda no Cmder, utilizar o comando,  `cucumber --init` esse comando vai criar a estrutura básica, para se trabalhar com cucumber no Ruby.

  ![image-20200709163258487](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709163258487.png)

- Dentro da pasta support, existe um arquivo chamado "envi.rb", dentro dela é onde iremos fazer as configurações para utilização das dependências.

  ![image-20200709163449988](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709163449988.png) 

- Após adicionar as configurações e salvar. 

- Executar no Cmder o seguinte comando,  `cucumber` esse comando ira executar o cucumber do nosso projeto.![image-20200709163816011](C:\Users\guiga\AppData\Roaming\Typora\typora-user-images\image-20200709163816011.png)

  