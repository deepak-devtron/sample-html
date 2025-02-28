# Use Alpine as the base image
FROM alpine:latest

# Install bash (if needed)
RUN apk update && apk add bash

# Use an inline shell command for logging
ENTRYPOINT ["/bin/sh", "-c", "echo 'Container starting...' >> /var/log/container.log && echo 'Initialization complete.' >> /var/log/container.log && tail -f /dev/null"]
