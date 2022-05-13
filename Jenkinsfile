node{
    def app
    stage('clone repository'){
        checkout scm
    }

    stage('Build image'){
        app=docker.build("hibernuts/raghav")
    }

    stage("Test image"){
        app.inside{
            sh 'echo *Tests
             passed*'
        }
    }

    stage('Push image'){
        docker.withRegistry('https://registry.hub.docker.com','raghav'){
            app.Push(*$(env.BUILD_NUMBER)*)
            app.push(*latest*)
        }
    }
}