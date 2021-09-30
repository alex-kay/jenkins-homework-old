# jenkins-homework
Jenkins homework

## Tasks

* connect static slave node
* create declarative job
* add parameter environment
* trigger on push and pr
* skip build if commit message is "SKIP_CI"
* create zip file with suffix $BRANCH_NAME and store it like artifact and build_number
* create shared library to send slack notification with build status
* in parallel ping 3 different servers and if ping failed - stop the job
* move all logic to shared library

## my actions

1. Create VMs with Jenkins in GCP
2. Installed necessary plugins, plus GCE plugin
3. Created a multibranch pipeline, added SCM with Jenkinsfile
4. Configured GCE plugin to create worker instances based on an image with java installed (otherwise Jenkins didn't want to connect with the nodes)
