[![Gem Version](https://badge.fury.io/rb/blogit-admin.png)](http://badge.fury.io/rb/blogit-admin)
[![Code Climate](https://codeclimate.com/github/KatanaCode/blogit-admin/badges/gpa.svg)](https://codeclimate.com/github/KatanaCode/blogit-admin)
[![Test Coverage](https://codeclimate.com/github/KatanaCode/blogit-admin/badges/coverage.svg)](https://codeclimate.com/github/KatanaCode/blogit-admin/coverage)
[![Blogit-admin](https://gemnasium.com/KatanaCode/blogit-admin.png)](https://gemnasium.com/KatanaCode/blogit-admin)
[![Travis CI](https://travis-ci.org/KatanaCode/blogit-admin.png)](https://travis-ci.org/KatanaCode/blogit-admin.png)



# Blogit Admin

An admin backend for the [Blogit](http://github.com/katanacode/blogit) project

## Installation

Follow the installation instructions for blogit first of all.

To install blogit-admin...

Add this to your Gemfile

``` ruby
gem "blogit-admin"
```

...and run `bundle install` to install the gem.

Next, run:

``` bash
bundle install
``` 

then add the following to your routes.rb file:

``` bash
# config/routes.rb
mount Blogit::Admin::Engine => "/blog/admin"
```

## Authentication

**Blogit-Admin** is not an authentication solution. Authentication is too application specific. Instead, we expect you to add your own authentication solution.

To make sure this works as expected with **Blogit Admin**, please make sure your `ApplicationController` defines the following methods:


``` ruby
# Checks that the current user has permission to access the current action.
#   This method may redirect if you prefer.
#
# Returns true if the user (Blogger) is permitted
# Returns false if the user (Blogger) is not permitted
def authenticate_blogger
end

# The sign out URL to leave the admin dashboard 
#
# Returns a String with a URL path that your application must recognised with a DELETE HTTP request
def blogit_admin_sign_out_url
end

# The currently signed in Blogger. Must be an instance of an ActiveRecord::Base model that blogs (you've called the `blogs` method)
# 
# Returns an ActiveRecord::Base subclass instance
def current_blogger
end
```


## Configuration

Running `rails g blogit:install` will add an initializer file named blogit.rb. In here
you can set various configuration options. Please [read the documentation](http://rubydoc.info/gems/blogit/Blogit/Configuration) for a full list of the options available.



## Issues

If you discover a problem with **Blogit** or **Blogit Admin**, please let us know about it. 

**Remember** to search the [issues list](https://github.com/KatanaCode/blogit-admin/issues) first in case your issue has already been raised
by another Githuber

## Documentation

Full documentation is available here: http://rubydoc.info/gems/blogit-admin

## Contributing

You're welcome to contribute to the **Blogit** project. Please consult the [contribution guidelines](http://blogit.katanacode.com/doc/file.Contributing.html) for more info.

## Legal Stuff

Copyright © 2011-2015 [Katana Code Ltd.](http://katanacode.com)

See [LEGAL](MIT-LICENSE) for full details.

## Credits

Developed by [Katana Code](http://katanacode.com)

## About Katana Code

Katana Code are [web developers based in Edinburgh, Scotland](http://katanacode.com/ "Katana Code").
