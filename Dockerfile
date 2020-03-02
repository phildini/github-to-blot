FROM alpine

LABEL "com.github.actions.name"="Deploy to blot.im"
LABEL "com.github.actions.description"="Automatically publish a github repo to a blot.im repo"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/phildini/github-to-blot"
LABEL "homepage"="https://github.com/phildini/github-to-blot"
LABEL "maintainer"="Phildini <phildini@phildini.net>"

COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/entrypoint.sh"]