[ < Back](../README.md)

# HowTo Contribute

Please create an [issue](https://github.com/boly38/action-mongo-tools/issues) describing your goal / question / bug description...

If you're interested in an existing issue, please contribute by up-voting for it by adding a :+1:.

If you want to push some code :
- fork and prepare a feature-git-branch, then create a [pull request](https://github.com/boly38/action-mongo-tools/pulls) that link your issue.
- execute test

You could also be critic with existing ticket/PR : all constructive feedbacks are welcome.

## test
* cf. [TESTING.md](../TESTING.md)


# Maintainer HowTos

## HowTo create a fresh version
- install github client
- create automatically a draft release version using [gh client](https://cli.github.com/) 

Example to create v1.0.3
```bash
gh release create v1.0.3 --draft --generate-notes
```

this will make a new draft release. Verify it in [releases list](https://github.com/boly38/action-mongo-tools/releases)

- ⚠️ the repository apply immutable releases since #8, so you can't modify a release once published
- publish the release when ready