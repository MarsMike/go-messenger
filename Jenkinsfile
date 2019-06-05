pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'Second Test with Blue Ocean Editor'
      }
    }
    stage('Trigger Downstream Job') {
      steps {
        build(job: 'selenium tester firefox+chrome', propagate: true, wait: true)
      }
    }
  }
}