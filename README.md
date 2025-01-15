# Trabalho Compass - Linux e Aws
## Criação e Monitoramento de um servidor local Nginx
Este projeto configura um servidor Nginx e realiza monitoramento com script automatizado.
## Tecnologias Utilizadas
1. **Nginx**
   - Servidor web    [Site Oficial](https://nginx.org/)
2. **Linux**
   -  Sistema operacional de codigo aberto    [Site Oficial](https://linuxmint.com/)
3. **Bash e Cron**
   -  Criação de script e automatização de tarefas
## Estrutura de DIretórios
- /home/diogo/Compasso/Projeto_Nginx/
- │
- ├── log/                         
- │   └── nginx_online.log          
- │   └── nginx_offline.log         
- ├── monitor_nginx.sh                     
              
## Passo 1 : Instalar Nginx 
- sudo apt update
- sudo apt install nginx -y
- sudo systemctl start nginx
- sudo systemctl enable nginx
- systemctl status nginx
## Passo 2 : Configurar Script de Monitoramento
O script **monitor_nginx.sh** verifica o status do serviço Nginx e registrar se ele está online ou offiline em arquivos de log
- O script usa o comando *systemctl* para verificar se o serviço está ativo
- se online ele grava uma mensagem no arquivo *nginx_online.log*
- senão a mensagem vai para o arquivo *nginx_offiline.log*
- A mensagem inclui data,hora e status
## Passo 3 : Automatizar script
Configuramos o arquivo **cron** para rodar o script **monitor_nginx.sh** a cada 5 minutos
- crontab -e
- */5 * * * * /home/diogo/Compasso/Projeto_Nginx/scripts/monitor_nginx.sh
A caca 5 minutos ele vai executar o script automaticamente
## Passo 4 : Teste
Visualise os logs pelo terminal usando o comando **cat** ou por algum editor de texto

