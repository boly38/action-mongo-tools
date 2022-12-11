# action-mongo-tools
Add mongo shell and/or mongo tools to github actions 

- Ubuntu-22.04 [runner](https://github.com/actions/runner-images/tree/main/images/linux) comes without mongo binaries.

In order to add mongosh and mongodump/mongorestore, you could add this action.

Example:
```yaml
- name: Setup mongo tools - only shell
  uses: boly38/action-mongo-tools@stable
```

You could select wich one to install using parameters:

Example that will install `mongosh` only
```yaml
 - name: Setup mongo tools - only shell
   uses: boly38/action-mongo-tools@stable
   with:
     mongo-shell: "true"
     mongo-tools: "false"
```

Another working sample: cf. [example.yml](./.github/workflow/example.yml)

# contributing
PRs extending the functionality are welcome and will be reviewed.