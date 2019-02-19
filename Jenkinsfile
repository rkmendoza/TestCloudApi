#!groovy
pipeline {
    agent { label 'master'}

    parameters {
        choice( name: 'Scenario',
                choices: "All\nCreateProject\nDeleteProject\nFindProject\nUpdateProject\nAddTags\nRemoveTags\nSetTags\nGetAlerts\nCreateArtifact\nDeleteArtifact",
                description: '')
    }

    tools {
        maven 'Maven3'
    }

    stages {

        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage('checkout') {
            steps {
                git credentialsId: 'git-credentials', url: 'https://mauro-icox@bitbucket.org/riskiq/test-cloud.git', branch: 'develop'
            }
        }

        stage ('Test') {
            steps  {
                script {
                    if ("${Scenario}" == 'All') {
                        withCredentials([usernamePassword(credentialsId: 'mauro', passwordVariable: 'password', usernameVariable: 'username')]) {
                            sh "mvn -Dusername=$username -Dpassword=$password clean test"
                        }
                    } else {
                        withCredentials([usernamePassword(credentialsId: 'mauro', passwordVariable: 'password', usernameVariable: 'username')]) {
                            sh "mvn -Dcucumber.options='--tags @${Scenario}' -Dusername=$username -Dpassword=$password clean test"
                        }
                    }
                }
            }
            post {
                always{
                    cucumber fileIncludePattern: '**/*.json',
                             sortingMethod: 'ALPHABETICAL',
                             jsonReportDirectory: 'target/cucumber-html-reports'
                }
            }

        }

    }
    options {
        timestamps()
        buildDiscarder(logRotator(artifactNumToKeepStr: '5',artifactDaysToKeepStr: '14'))
        disableConcurrentBuilds()
        skipDefaultCheckout()
        timeout(time: 1, unit: 'DAYS')
    }
}
