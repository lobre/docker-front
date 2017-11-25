FROM node

# Install ruby
RUN apt-get update -y && \
    apt-get install -y ruby-dev rubygems && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install grunt globally
RUN npm install -g bower grunt-cli gulp

# Install sass
RUN gem install sass

RUN mkdir /app \
    && chown node:node /app

# Define current user
USER node

WORKDIR /app

# Define default command.
CMD ["bash"]
