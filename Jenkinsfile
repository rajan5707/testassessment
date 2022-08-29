node(label:'stage-2') {
    
    stage('install') {
       sh "instalScripts.sh"
    }
    stage("Test") {
       sh "deploy.sh"
    }
}
