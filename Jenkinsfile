pipeline {
    agent any

    environment {
        NODE_VERSION = 'NodeJS 22.2.0'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Instalar Dependências') {
            steps {
                script {
                    tool name: env.NODE_VERSION, type: 'NodeJS'
                }
                sh 'npm install'
            }
        }
        stage('Executar Testes') {
            steps {
                sh 'npm test'
            }
        }
    }

    post {
        success {
            echo 'Build e testes concluídos com sucesso!'
        }
        failure {
            echo 'A build falhou. Verifique os logs.'
        }
    }
}
