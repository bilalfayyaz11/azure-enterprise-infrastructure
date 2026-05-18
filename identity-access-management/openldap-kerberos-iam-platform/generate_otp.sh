#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME=$1
echo "Generating simulated OTP enrollment for user: $USERNAME"
echo "Secret: $(openssl rand -base64 20)"
echo "User should add this secret to an authenticator app."
