# Install nvm:
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Configure nvm shell context:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install Node.js via nvm:
nvm install node
nvm use node
