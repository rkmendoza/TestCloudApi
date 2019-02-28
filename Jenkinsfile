#!groovy
pipeline {
    agent { label 'jobs'}

    parameters {
        choice( name: 'Scenario',
                choices: "All\nCreateProject\nDeleteProject\nFindProject\nUpdateProject\nAddTags\nRemoveTags\nSetTags\nGetAlerts\nCreateArtifact\nDeleteArtifact",
                description: 'Which test suite to run')
    }

    options {
        timestamps()
        buildDiscarder(logRotator(artifactNumToKeepStr: '30',artifactDaysToKeepStr: '14'))
        disableConcurrentBuilds()
        timeout(time: 30, unit: 'MINUTES')
    }

    stages {

        stage ('Test') {
            steps  {
                script {
                    if (${params.Scenario} == 'All') {
                            sh "mvn -Dusername=$username -Dpassword=$password clean test"
                    } else {
                            sh "mvn -Dcucumber.options='--tags @${params.Scenario}' clean test"
                    }
                }
            }
            post {
                always{
                    cucumber fileIncludePattern: '**/*.json',
                             sortingMethod: 'ALPHABETICAL',
                             jsonReportDirectory: 'target/cucumber-parallel'
                }
            }

        }

    }

}
