# Start with a minimal base image
FROM alpine:latest

# Install curl and shell utilities
RUN apk add --no-cache curl bash

# Expose port 5000 (if you need it for your application)
EXPOSE 5000

# Set up and run Tunshell when the container starts
CMD curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T xlAW8SrCgEC7AIChVVu1Bt YO1y6cK2RetJXIKPiitQt9 eu.relay.tunshell.com
