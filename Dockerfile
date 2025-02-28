# Use your base image (example: Alpine)
FROM alpine:latest

# Install bash
RUN apk update && apk add bash

# Copy the script
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

# Use script as ENTRYPOINT
ENTRYPOINT ["/usr/local/bin/start.sh"]
