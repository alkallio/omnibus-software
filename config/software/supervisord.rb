#
# Copyright 2013-2014 Chef Software, Inc.
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

name "supervisord"

default_version "3.3.1"

license "Supervisor"
license_file "LICENSE"
skip_transitive_dependency_licensing true

dependency "python"
dependency "pip"

version("3.3.1") { source md5: "9b228d648320aff16f1e886f3685b569" }

source url: "https://github.com/Supervisor/supervisor/archive/#{version}.tar.gz"

relative_path "pip-#{version}"

build do
    pip "install --install-option=\"--install-scripts=#{install_dir}/bin\" #{name}==#{version}"
end
