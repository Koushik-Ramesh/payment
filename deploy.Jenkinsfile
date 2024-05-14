pipeline {
    agent any {
    parameters {
        string(name: 'APP_VERSION', defaultValue: '505, description: 'Application Verson to be Deployed')
    }
        stages {
            stage('Deploy') {
                steps {
                    sh "echo Authentication to EKS"
                    sh "aws eks update-kubeconfig --name dev-eks-cluster"
                    sh "kubectl get nodes"
                    sh "kubectl apply -f k8-deploy.yaml"
                }
            }
        }
    }
}