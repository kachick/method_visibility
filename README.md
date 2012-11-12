method_visibility
====================

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

* Ruby - [1.8.7 or later](http://travis-ci.org/#!/kachick/method_visibility)
* [visibility_predicates](http://kachick.github.com/visibility_predicates/)

Install
-------

```bash
gem install method_visibility
```

Build Status
-------------

[![Build Status](https://secure.travis-ci.org/kachick/method_visibility.png)](http://travis-ci.org/kachick/method_visibility)

Link
----

* [Home](http://kachick.github.com/method_visibility/)
* [code](https://github.com/kachick/method_visibility)
* [API](http://kachick.github.com/method_visibility/yard/frames.html)
* [issues](https://github.com/kachick/method_visibility/issues)
* [CI](http://travis-ci.org/#!/kachick/method_visibility)
* [gem](https://rubygems.org/gems/method_visibility)

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.

