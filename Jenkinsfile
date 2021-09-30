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

        stage('get_commit_msg') {
          steps {
              script {
                  env.GIT_COMMIT_MSG = sh (script: 'git log -1 --pretty=%B ${GIT_COMMIT}', returnStdout: true).trim()
              }
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
        stage('printenv'){
          steps {
                sh 'printenv > printenv.txt'
            }
        }
    }
    post { 
        always { 
            archiveArtifacts artifacts: '**/*.txt', followSymlinks: false, allowEmptyArchive: true
        }
    }
}
