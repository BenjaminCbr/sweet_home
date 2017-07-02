# Purpose

Project about real estate for private customers

# Setup

Ruby version: 2.4.0

## Ubuntu

### Rbenv

  Install rbenv.

  NB: on Ubuntu, you might need to install an additional package `sudo apt-get install -y libreadline-dev`)

### Install Redis

   Install Redis

### Install Postgresl

Install PostgresQl:

  - Install postgresql on your system
  For Ubuntu =>
  ```bash
    sudo apt-get install postgresql postgresl-contrib libpq-dev
  ```
  - Need to create a role in postgresql
  ```postgresql
    create role sweet_home_user with createdb login password 'password'
  ```
  - Ubuntu config  => the method for authentification needs to be changed from `peer` to `md5`. See
  (https://stackoverflow.com/questions/18664074/getting-error-peer-authentication-failed-for-user-postgres-when-trying-to-ge)

### Install bundler

Install bundler => `bundle install`

You also need to install an environment for executing Javascript (asset pipeline
compilation). We  use node.js => `sudo apt-get install node.js`
