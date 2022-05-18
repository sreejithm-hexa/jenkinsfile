def jobname = "database/$JOB"
pipelineJob(jobname) {
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
