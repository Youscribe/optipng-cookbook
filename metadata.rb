maintainer       "Guilhem Lettron"
maintainer_email "guilhem.lettron@youscribe.com"
name             "optipng"
license          "Apache 2.0"
description      "Install optipng"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"
recipe           "install", "Install optipng on the node"

depends "apt"
depends "build-essential"
