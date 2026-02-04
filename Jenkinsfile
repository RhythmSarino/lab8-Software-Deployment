pipeline {
    agent any

    environment {
        RESULTS_DIR = "results"
    }

    stages {
        stage('Prepare') {
            steps {
                sh 'rm -rf results'
                sh 'mkdir results'
            }
        }

        stage('Verify Environment') {
            steps {
                sh 'python3 --version'
                sh 'robot --version'
            }
        }

        stage('Run Robot Tests') {
            steps {
                sh 'robot --outputdir results tests/Lab8.robot'
            }
        }
    }

    post {
        always {
            step([$class: 'RobotPublisher',
                outputPath: 'results',
                outputFileName: 'output.xml',
                reportFileName: 'report.html',
                logFileName: 'log.html',
                passThreshold: 100,
                unstableThreshold: 80
            ])
        }
    }
}
