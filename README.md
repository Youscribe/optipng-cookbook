Description
===========

Install optipng.

> OptiPNG is a PNG optimizer that recompresses image files to a smaller size, without losing any information. This program also converts external formats (BMP, GIF, PNM and TIFF) to optimized PNG, and performs PNG integrity checks and corrections. 

Requirements
============

## Platform:

* Ubuntu - default package recipe
* ALL - source recipe

## Coobooks:

* apt
* build-essential

Attributes
==========

`attributes/default.rb`
`attributes/source.rb`

Recipes
=======

default
-------

Just an interface - calls out to a particular install recipe based on the install_method attribute

-------
install_package
-------

Installs optipng from package

-------
install_source
-------

Compiles optipng from source.


Usage
=====

Include `recipe[optipng]` on systems where you want to install optipng.

Set default['optipng']['install_method'] attribute to choose package ( default ) or source install.

License and Author
==================

Author:: Guilhem Lettron <guilhem.lettron@youscribe.com>

Copyright:: 2012, Youscribe, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
