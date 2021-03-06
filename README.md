#The KC Ruby Group website.

A pretty, consolidated wrapper for a Meet-up event feed, a twitter list, and a vimeo video channel.

## Local Setup

This website runs on:

1. Ruby 1.9.3
2. Rails 3.0.9

To install Ruby, first install RVM (http://rvm.io/rvm/install).  Currently, the command you'll need to run is

````
\curl -sSL https://get.rvm.io | bash -s stable --ruby
````

You may have to open a new bash window after installation.

With RVM, you can now easily download and install different rubies -- including ol' 1.9.3.  Install RVM 1.9.3 with:

````
rvm install 1.9.3
````

Now clone git@github.com:databasically/kcruby.git (or your own fork) into a directory with:

````
git clone git@github.com:databasically/kcruby.git
cd kcruby
````

Now run the bundle install command to get all of the gems that this project needs. 

````
bundle install
````

Almost there!  This project requires a database, and it uses Twitter for authorization.  Ignore Twitter for now, and just set up the database/project with:

````
cp config/omniauth.yml.example config/omniauth.yml
cp config/database.yml.example config/database.yml
bundle exec rake db:setup
````

And now you should be ready to go.  Let's start up your app with:

````
bundle exec rails server
````

## Vagrant setup

Requires:

* VirtualBox
* Vagrant
* Vagrant omnibus installer (vagrant plugin install vagrant-omnibus)
* Librarian-chef (gem install librarian-chef)

Run:

````
librarian-chef install
vagrant up
vagrant provision
vagrant ssh
rails server
````
