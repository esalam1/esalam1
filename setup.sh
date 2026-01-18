#/bin/bash

# 1. Print message to make sure the script has started

echo "Starting System Setup..."

# 2. Check if we are running in WSL (Good practice to verify the OS)
# We look for the word "Microsoft" in the version file

if grep -q "Microsoft" /proc/version; then
    echo "WSL detected. Good to go."
else
    echo "Warning: Not strictly WSL, but we will proceed."
fi

# 3. Update list of available packages

echo "Updating package lists..."
sudo apt update

# 4. Install essential tools
# -y means "Say yes to all prompts" so it doesnt wait for you

echo "Installing base tools..."
sudo apt-get install -y git curl unzip python3 python3-pip

# 5. Print success 

echo "Setup complete! You are good to go."
