
node {
   stage('Get Source') {
      // Check if Docker file is present
      git ('https://github.com/Ariseaz/interview-hello-world.git')
      if (!fileExists("Dockerfile")) {
         error('Dockerfile missing.')
      }
   }

   stage('Unit Test') {
      // run the unit tests
      
         sh "pip install -r requirements.txt"
         sh "pytest -v"
      
   }

   
   stage("run docker container"){
        sh "sudo docker run -p 8000:8000 --name flask-app -d flask-app "
    }
}
