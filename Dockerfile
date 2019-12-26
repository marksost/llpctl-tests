FROM python:3.7-alpine

# Release version
ENV LLPCTL_RELEASE_VERSION=0.2.1

# No pyc
ENV PYTHONDONTWRITEBYTECODE=1

# Add additional APK packages required
RUN apk add --update --no-cache build-base

# Set working directory
WORKDIR /llpctl

# Copy app source
COPY . .

# Install deps w/ pip & setuptools
RUN pip install --editable .

CMD llpctl --help
