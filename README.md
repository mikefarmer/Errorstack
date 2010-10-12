# Errorstack Ruby Gem
This is a simple ruby gem for adding errorstack to your ruby applications.  Errorstack is a service for reporting and reviewing errors in your applications.  You can checkout Errorstack at [http://errorstack.com](http://errorstack.com).

# Installation
    gem install errorstack

# Usage
    
    require 'errorstack'

    # Obtain your errorstack stack key from http://errorstack.com
    # Add message (string) and backtrace (text) to your stack schema.

    Errorstack::STACK_KEY = "YOUR STACK KEY HERE"

    begin
      # some code here that may raise an error
    rescue Exception => e
      # error handling code
      Errorstack.notify(e)
    end

# Contributing

Please feel free to contribute by forking the repo. Pull requests are welcome. Please update/include any applicable tests

# Author

[Mike Farmer](http://github.com/mikefarmer)
