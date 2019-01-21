# README

My personal website.

### Setup development environment

Dependencies - you must have Ruby 2.4.1 installed.

Follow this (gist)[https://gist.github.com/tadast/9932075] to get SSL set up with puma.

```
# Clone repository
$  git clone https://github.com/cmhnk/corinne92.git

# Install gems
$  bundle install

# Start server; navigate to https://localhost:3000
$  puma -b 'ssl://127.0.0.1:3000?key=/Users/macuser/.ssh/server.key&cert=/Users/macuser/.ssh/server.crt'

# Deploy to Heroku
$  git push heroku master
```