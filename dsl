pipelineJob("$JOB") {
  	environmentVariables {
      env("APPLICATION_REPOSITORY", "$REPO")
    }
    definition {
        cps {
           script(readFileFromWorkspace('file'))
      	   sandbox()
        }
    }
}
