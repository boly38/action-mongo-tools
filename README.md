# action-mongo-tools
Add mongo shell and/or mongo tools to github actions 

- Ubuntu-22.04 [runner](https://github.com/actions/runner-images/tree/main/images/linux) comes without mongo binaries.

In order to add mongosh and mongodump/mongorestore, you could add this action.

Example:
```yaml
- name: Setup mongo tools
  uses: boly38/action-mongo-tools@stable
```

You could select which one to install using parameters:

Example that will install `mongosh` only
```yaml
 - name: Setup mongo tools - only shell
   uses: boly38/action-mongo-tools@stable
   with:
     mongo-shell: "true"
     mongo-tools: "false"
```
NB: `true` is default value for parameters so could be omitted.

Another working sample: cf. [examples](./.github/workflows/).

For install performance reason, man/doc are not unpack by default. You can override this by keeping them with
```
env:
  MONGOTOOLS_KEEP_MAN: true
```

# Immutable releases 

For security reason, since #8, this repository rely on [immutable releases](https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/immutable-releases). 
Instead of using `@stable` as tag, you could rely on fixed immutable release (ex. `@v1.0.4`). 

# contributing
- PRs extending the functionality are welcome and will be reviewed.
- more details on [CONTRIBUTING](./.github/CONTRIBUTING.md) and [TESTING](./TESTING.md)

# use cases

## NodeJS automate backup policy
This action adds some binaries used by project having mongo as dependencies.

For example, cf. [boly38/node-mongotools](https://github.com/boly38/node-mongotools) which is a node wrapper for mongo dump/restore binaries and let you create your own mongo backup using NodeJS App, then GitHub Actions.