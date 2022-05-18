pipelineJob("$JOB") {
  	environmentVariables {
      env("REPO", "$APPLICATION_REPOSITORY")
    }
    definition {
        cps {
           script(readFileFromWorkspace('file'))
      	   sandbox()
        }
    }
}
