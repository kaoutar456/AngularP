pipeline { 
    agent any 
    tools {nodejs "NODEJS"} 
    stages { 
        stage('Build') { 
            steps { 
                sh 'npm install' 
            } 
        } 
        stage('Deliver') { 
            steps { 
                sh 'chmod -R +rwx ./jenkins/scripts/deliver.sh' 
                sh 'chmod -R +rwx ./jenkins/scripts/kill.sh' 
                sh './jenkins/scripts/deliver.sh' 
                message d'entrée : 'Vous avez fini d'utiliser le site Web ? (Cliquez sur « Continuer » pour continuer)' 
                sh './jenkins/scripts/kill.sh' 
            } 
        } 
    } 
}