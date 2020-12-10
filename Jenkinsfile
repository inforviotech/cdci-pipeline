pipeline {
    agent any
    
   stages {
       
        stage('Build') {
            steps {
                echo 'Building the Application'
            }
        }

           stage('Build') {
            steps {
                echo 'Testing the Application'
            }
        }

           stage('Build') {
            steps {
                echo 'Deploying the Application'
            }
        }
       

    }
}












// node {
//     def app

//     stage('Clone repository') {
//         /*  test Cloning the Repository to our Workspace */

//         checkout scm
//     }

//     stage('Build image') {
//         /* This builds the actual image */

//         app = docker.build("inforvio/nodeapp")
//     }

//     stage('Test image') {
        
//         app.inside {
//             echo "Tests passed"
//         }
//     }

//     stage('Push image') {
//         /* 
// 			You would need to first register with DockerHub before you can push images to your account
// 		*/
//         docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
//             app.push("${env.BUILD_NUMBER}")
//             app.push("latest")
//             } 
//                 echo "Trying to Push Docker Build to DockerHub"
//     }
// }
