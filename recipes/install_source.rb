#
# Cookbook Name:: optipng
# Recipe:: install_source
# Author:: Guilhem Lettron <guilhem.lettron@youscribe.com>
#
# Copyright 2012, Societe Publica.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "build-essential"

src_filepath  = "#{Chef::Config['file_cache_path'] || '/tmp'}/optipng-#{node['optipng']['source']['version']}.tar.gz"

remote_file node['optipng']['source']['url'] do
  path src_filepath
  checksum node['optipng']['source']['checksum']
  source node['optipng']['source']['url']
  backup false
end

bash "compile_optipng_source" do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    tar zxf #{::File.basename(src_filepath)} -C #{::File.dirname(src_filepath)}
    cd optipng-#{node['optipng']['source']['version']} &&
    ./configure #{node['optipng']['source']['default_configure_flags'].join(" ")} &&
    make && make install
  EOH

  not_if do 
    node['optipng']['source']['force_recompile'] == false && ::File.directory?(::File.dirname(src_filepath) + '/' + ::File.basename(src_filepath, ".tar.gz"))
  end
end
