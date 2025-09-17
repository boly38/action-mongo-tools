# Testing the Action

This document describes how to test the action both locally and through GitHub.

## Local Testing

To test the action locally, you'll need:

- [Act](https://github.com/nektos/act) - A tool for running GitHub Actions locally
- Docker installed on your machine

### Installation

- Install Act following the instructions at https://github.com/nektos/act#installation

### Running Tests

- From the root of the repository, run:
```bash
# show workflow events
act list
# or `gh act list` if act is installed as gh client extension
# dry run pull request event
act -n pull_request
# run pull request event
act pull_request
```

This will execute the integration test workflow locally using Act.

## GitHub Testing

The integration tests will automatically run on:
- Every Pull Request
- Manual trigger through the GitHub Actions interface

The workflow will:
1. Install the action from the local repository
2. Verify that all MongoDB tools are correctly installed
3. Perform a functional test including:
   - Creating a test user
   - Creating test data
   - Testing mongodump
   - Testing mongorestore
   - Verifying data integrity

## Notes

- The local tests using Act might behave slightly differently from GitHub Actions due to environment differences
- Make sure you have enough disk space for Docker images when testing locally
- The integration tests require Docker to be running locally