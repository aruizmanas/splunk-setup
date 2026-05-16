FROM splunk/splunk:latest

USER root

# Create the user 'hector', add to splunk group, and give it sudo permissions
RUN microdnf update -y && \
    microdnf install -y sudo && \
    useradd -m -G splunk hector && \
    echo "hector ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Change ownership of Splunk directories to hector
RUN chown -R hector:splunk /opt/splunk /opt/container_artifact

# Set the environment variable for Splunk to use 'hector'
# We do not switch USER here to allow the entrypoint to run as root initially
ENV SPLUNK_USER=hector
