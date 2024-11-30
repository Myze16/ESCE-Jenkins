(echo "#-#-# Construindo imagem..." && docker compose -f "./jenkins-ngrok/docker-compose.yml" build) &&

(echo "#-#-# Levantando container..." && docker compose -f "./jenkins-ngrok/docker-compose.yml" up -d) &&

(echo "#-#-# Pegue as credenciais para acessar o Jenkins:" && docker exec jenkins-ngrok cat /var/jenkins_home/secrets/initialAdminPassword)