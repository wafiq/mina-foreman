# From: https://gist.github.com/mralex/749d3e29c89ea0ea1b0fddf9ddadb057

# # Modules: yarn
# Adds settings and tasks for managing Yarn with Mina.
#
#     require 'mina/yarn'

# ## Settings
# Any and all of these settings can be overridden in your `deploy.rb`.

# ### yarn_bin
# Sets the yarn path.

set_default :yarn_bin, 'yarn'

# ### yarn_options
# Sets the options for installing packages via yarn.

set_default :yarn_options, lambda { %{--production} }

# ## Deploy tasks
# These tasks are meant to be invoked inside deploy scripts, not invoked on
# their own.

namespace :yarn do
  # ### yarn:install
  # Installs packages.
  desc "Install package dependencies using yarn."
  task :install do
    queue %{
      echo "-----> Installing package dependencies using yarn"
      #{echo_cmd %[#{yarn_bin} install #{yarn_options}]}
    }
  end

  # ### yarn:setup
  # Installs latest yarn.
  desc "Install latest version of yarn."
  task :setup do
    queue %{
      echo "-----> Installing yarn"
      #{echo_cmd %[npm install -g yarn]}
    }
  end
end
