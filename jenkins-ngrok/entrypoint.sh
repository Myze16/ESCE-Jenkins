java -jar /usr/share/jenkins/jenkins.war &

echo "Aguardando o Jenkins iniciar na porta 8080..."
while ! nc -z localhost 8080; do
  sleep 2
done

echo "Iniciando o Ngrok..."
ngrok http 8080
