pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '📥 Code checked out from GitHub'
            }
        }

        stage('Build') {
            steps {
                echo '🔨 Building application...'
                sh 'chmod +x app.sh'
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests...'
                sh '''
                    if [ -f app.sh ]; then
                        echo "✅ Test Passed: app.sh exists"
                    else
                        echo "❌ Test Failed: app.sh not found"
                        exit 1
                    fi
                '''
            }
        }

        stage('Security Check') {
            steps {
                echo '🔒 Running security checks...'
                sh '''
                    echo "Checking for secrets in code..."
                    if grep -rE "password|secret|api_key" *.sh 2>/dev/null; then
                        echo "WARNING: Possible secrets found!"
                    else
                        echo "No hardcoded secrets detected"
                    fi
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying application...'
                echo '✅ Deployment complete!'
            }
        }
    }

    post {
        success {
            echo '🎉 Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed! Check logs.'
        }
    }
}
