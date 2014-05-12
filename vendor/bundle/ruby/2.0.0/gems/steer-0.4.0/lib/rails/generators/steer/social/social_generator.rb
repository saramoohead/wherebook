require 'rails/generators'
require 'rbconfig'

class Steer::SocialGenerator < Rails::Generators::Base
  desc "Setup Omniauth gem for use with twitter, facebook etc."

  # Commandline options can be defined here using Thor-like options:
  # class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"

  # I can later access that option using:
  # options[:my_opt]


  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  # Generator Code. Remember this is just suped-up Thor so methods are executed in order

  def install

    say "         888
         888
         888
.d8888b  888888 .d88b.   .d88b.  888d888
88K      888   d8P  Y8b d8P  Y8b 888P\"
\"Y8888b. 888   88888888 88888888 888
     X88 Y88b. Y8b.     Y8b.     888
 88888P'  \"Y888 \"Y8888   \"Y8888  888     \n\n", Thor::Shell::Color::RED

    say "Omniauthorise away!"

    copy_file "config/omniauth.rb", "config/initializers/omniauth.rb"

    if (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
      copy_file "config/secrets_win.yml", "config/secrets.yml"
    else
      copy_file "config/secrets_mac.yml", "config/secrets.yml"
    end

  end

end
