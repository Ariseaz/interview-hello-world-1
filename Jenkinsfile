
node {
   

   stage('Unit Test') {
      // run the unit tests
      
         sh "pip install -r requirements.txt"
         sh "pytest -v"
      
   }

   stage('Build Stage') {
       // build the docker image from the source code using the BUILD_ID parameter in image name
         sh "sudo docker build -t flask-app ."
   }
   stage("run docker container"){
        sh "sudo docker run -p 8000:8000 --name flask-app -d flask-app "
    }
}
