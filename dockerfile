# File name needs to be dockerfile without any filename extension

# We need linux, node, and hello.js
FROM node:21-alpine3.18

# WORKING AREA: /app
WORKDIR /app

# Which files/directories go to /app: COPY <source> <destination>
# First . is source(this directory), second . is destionation(this directory)
COPY . .

# Run this command after build
CMD node hello.js