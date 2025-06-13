FROM n8nio/n8n:latest

# Switch to root user to install system packages
USER root

# Install Python, pip, and build dependencies
RUN apk add --no-cache \
    python3 \
    py3-pip \
    curl \
    ffmpeg \
    build-base \
    python3-dev \
    g++ \
    musl-dev \
    libffi-dev \
    openssl-dev \
    cargo \
    pkgconfig \
    portaudio-dev

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Update PATH to use the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Install pipx in the virtual environment
RUN pip install --no-cache-dir pipx
RUN pipx ensurepath

# Switch to the node user for Python package installations
#USER node

# Install Python packages using pipx as the node user
RUN pip install uv
#RUN pipx install speedtest-cli \
#    && pipx install librosa \
#    && pipx install numpy \
#    && pipx install uv

# Set Python environment variable
ENV PYTHONUNBUFFERED=1