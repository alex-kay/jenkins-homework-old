pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('run-parallel-branches') {
          steps {
            parallel(
              a: {
                  sh "ping -c 3 instagram.com"
              },
              b: {
                sh "ping -c 3 epam.com"
              },
              c: {
                  sh "ping -c 3 facebook.com"
              }
            )
          }
        }
    }
}
