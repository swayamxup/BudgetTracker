# Start from the same Node.js Alpine image
FROM node:20-alpine

# This command installs Git, which is useful for many tools.
# It also installs packages needed for SQLite if you use it.
RUN apk add --no-cache git build-base g++

# You can add other dependencies here if your app needs them