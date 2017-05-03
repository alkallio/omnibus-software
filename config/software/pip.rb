#
# Copyright 2013-2015 Chef Software, Inc.
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

name "pip"

default_version "9.0.1"

license "MIT License"
license_file "LICENSE"
skip_transitive_dependency_licensing true

dependency "python"
dependency "setuptools"
dependency "zlib"

version("9.0.1") { source md5: "ae605ab1ccdcb7f9e219a400b4bc68b6" }

source url: "https://github.com/pypa/pip/archive/#{version}.tar.gz"

relative_path "pip-#{version}"

build do
  command "#{install_dir}/embedded/bin/python setup.py install --prefix=#{install_dir}/embedded"
end
