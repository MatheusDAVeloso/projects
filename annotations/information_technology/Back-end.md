Back-end é a parte de um sistema web ou aplicação que lida com o server-side. É responsável por fazer lógica de negócios seguras, lidar com várias requisições e devolver uma resposta ao cliente.

Um boa arquitetura de backend ajuda na escalabilidade e eficiência, mesmo com o crescimento de usuários da base e momentos de pico.

Ele é composto por algumas coisas como
- Servidores
	- Responsável por fazer queries em databases, fazer regras de negócios através das solicitações do usuário, devolver respostas de requisições e agendar scripts para tarefas de lógica.
- Database
	- Responsável por fazer o manejamento dos dados guardados

Uma API é a ponte responsável por fazer a comunicação do back-end e do front-end, mantendo ambos sincronizados. Quando em um aplicativo de compras o usuário adiciona algo ao carrinho, essa ação é enviado para o back-end, e ao fazer a regra de negócios, devolve a resposta e o front-end adiciona o item visualmente ao carrinho.

Serviços em nuvem como Google Cloud, AWS, dentre outros, auxiliam as aplicações a terem disponibilidade a mais de 99% do tempo aos clientes.