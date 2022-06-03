FROM node:12-alpine3.15
LABEL "repository"="https://github.com/broadinstitute/github-tag-action"
LABEL "homepage"="https://github.com/broadinstitute/github-tag-action"
LABEL "maintainer"="Greg Malkov"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
