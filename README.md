# Chapter 12: ActionMailer in Rails 3.2

### Clone Heroku's Cedar Platform Locally with RVM

    rvm install 1.9.2-p290 -n cedar
    rvm use ruby-1.9.2-p290-cedar@global
    rvm rubygems 1.3.7
    gem uninstall bundler json rake rdoc
    gem install bundler -v 1.1.rc.7 --pre

### Initialize the Rails app

    git clone https://github.com/ryansobol/chapter12_actionmailer.git
    cd chapter12_actionmailer
    gem install rails -v 3.2.1
    rails new .
    rails g scaffold user name:string email:string
    rake db:migrate
    rm public/index.html

### Configure Heroku's Cedar Platform

    heroku create --stack cedar --remote production --addons sendgrid:starter
    heroku config:add --app [NAME] MAIL_FROM=[EMAIL_ADDRESS]
    git add .
    git commit
    git push production master
    heroku run rake db:migrate --app [NAME]
    heroku open
    heroku config --app [NAME] | grep SENDGRID
