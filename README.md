method_visibility
====================

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org for releasing valuable namespace for others***

Description
-----------

Get visibility for a method name.

Features
--------

* Kernel#method_visibility
* Module#instance_method_visibility

Usage
-----

### Overview

```ruby
require 'method_visibility'

class Foo
  private; def modified_foobar; end
end

class Bar < Foo
  protected :modified_foobar
end

Bar.new.method_visibility :modified_foobar    #=> :protected (1.8.7: String, 1.9~: Symbol)
```

Requirements
-------------

* [Ruby 2.5 or later](http://travis-ci.org/#!/kachick/method_visibility)

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
