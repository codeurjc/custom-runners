FROM gh-runner:base

RUN apt-get update && apt-get install -y \
    maven \
    && rm -rf /var/lib/apt/lists/*

# since the config and run script for actions are not allowed to be run by root,
# set the user to "runner" so all subsequent commands are run as the "runner" user
USER runner

