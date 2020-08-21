#!/usr/bin/env groovy

node {
    stage('checkout') {
        checkout scm
    }

    docker.image('jhipster/jhipster:v6.9.0').inside('-u jhipster') {
        stage('check java') {
            sh "java -version"
        }

    }
}
