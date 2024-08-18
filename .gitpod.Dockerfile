# Use an appropriate base image
FROM gitpod/workspace-full:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y wget unzip

# Install Kotlin
RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.9.0/kotlin-compiler-1.9.0.zip && \
    unzip kotlin-compiler-1.9.0.zip -d /opt && \
    rm kotlin-compiler-1.9.0.zip

# Add Kotlin to PATH
ENV PATH="/opt/kotlin-compiler/bin:${PATH}"

# Optional: Install Java (needed for running Kotlin programs)
RUN apt-get install -y openjdk-17-jdk
