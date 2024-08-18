# Use an appropriate base image
FROM gitpod/workspace-full:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y curl unzip

# Install SDKMAN
RUN curl -s "https://get.sdkman.io" | bash && \
    bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install kotlin"

# Optional: Install Java (needed for running Kotlin programs)
RUN apt-get install -y openjdk-17-jdk
