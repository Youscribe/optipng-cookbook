
default['optipng']['source']['version'] = "0.7.4"
default['optipng']['source']['prefix'] = "/opt/optipng-#{node['optipng']['source']['version']}"
default['optipng']['source']['bindir'] = "/usr/local/bin"
default['optipng']['source']['force_recompile'] = false

default['optipng']['source']['url'] = "http://sourceforge.net/projects/optipng/files/OptiPNG/optipng-#{node['optipng']['source']['version']}/optipng-#{node['optipng']['source']['version']}.tar.gz"
default['optipng']['source']['checksum'] = '520b5d5a9405dbdc5c905dd0cff87211e69c4ed2059744037510e613fe8237ff' # Sha256

default['optipng']['source']['default_configure_flags'] = [
  "-prefix=#{node['optipng']['source']['prefix']}",
  "-bindir=#{node['optipng']['source']['bindir']}"
]
