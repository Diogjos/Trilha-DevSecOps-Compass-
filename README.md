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





