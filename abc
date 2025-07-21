pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'pwd'                                # sh pwd doesnot work, it has to be sh 'pwd
                sh 'ls'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running Tests...'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }
}



