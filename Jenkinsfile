
pipeline {
    agent { docker { image 'node:16.13.1-alpine' } }

   stages {
     stage('build') {
           steps {        
                   sh '''#!/bin/bash
                   
__start_kcs() {
  local cur  prev opts
   COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}" 
  prev="${COMP_WORDS[COMP_CWORD - 1]}"
  # opts="$(kubectl get ns --no-headers=true | cut -d" " -f1| tr "\n" " ")"
  timeout  5s kubectl get nodes &>/dev/null 
  timeout=$?
  if [[ "$timeout" -ne "0" ]]
   then
  echo "\n\tconnect to the cluster you stupid\n"
  return 1
  else
    opts="$(kubectl get ns --no-headers=true | cut -d" " -f1)"
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
     return 0
  fi
}

                   '''
           }
     }
   }
}

