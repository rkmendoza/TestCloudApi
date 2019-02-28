#!groovy

@Library('common')
import com.riskiq.jenkins.Slack


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

        stage ('Setup') {
            steps {
                script {
                    slack = new Slack(this, env, params, '#pt-health', ':cloud:')
                }
            }
        }

        stage ('Test') {
            steps  {
                script {
                    if (params.Scenario == 'All') {
                            sh "mvn clean test"
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

    post {
        success {
            script {
                slack.success("Test cloud tests all passed!")
            }
        }
        failure {
            script {
                slack.failure("Test cloud test(s) failed")
            }

        }
    }

}
