# agent-ansible
i

## Build
Build and annotate the agent image
```
oc new-build https://github.com/akram/agent-ansible
oc label is agent-ansible role=jenkins-slave
```

## Run
Create your pipeline reference this correct agent with node

```
oc new-build https://github.com/akram/pipes#ansible
```

