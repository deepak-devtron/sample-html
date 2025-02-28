# Use your base image (example: Alpine)
FROM alpine:latest

# Install any necessary dependencies (if needed)
RUN apk update && apk add bash

# Logging directly when container starts
ENTRYPOINT echo "Container starting..." >> /var/log/container.log && \
    echo "Initialization complete." >> /var/log/container.log && \

# Replace "your-main-command-here" with your container's main command
# For example, if you are running a web server, you might use:
# CMD ["nginx", "-g", "daemon off;"]

