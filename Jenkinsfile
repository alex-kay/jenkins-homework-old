pipeline {
    agent any
    environment{
        SKIP_COMMIT_MSG = "SKIP_CI"
    }
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
                sh "ping -c 3 vk.com"
              },
              c: {
                  sh "ping -c 3 facebook.com"
              }
            )
          }
          
        }
        stage('env'){
          steps {
                sh 'printenv > printenv.txt'
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
            archiveArtifacts artifacts: '**/*.txt', followSymlinks: false, allowEmptyArchive: true
        }
    }
}
