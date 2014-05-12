require 'rails/generators'

class Steer::LayoutGenerator < Rails::Generators::Base
  desc "Adding layout and styles to Steer's back-end web development course"

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

    say "Here are the projects!\n"
  end

  def ask_user

    print_table([
      [1, "Stack"],
      [2, "Appetite"],
      [3, "Onboard"]
    ])

    exit_greeting = [
      "Awesome", "Amazing", "Fantastic", "Great", "Brilliant", "Totally rad", "Incredible"
    ].shuffle.first

    exit_message = [
      "you're looking nice today by the way :)",
      "that's a nice top you're wearing by the way :)",
      "that top really suits you by the way :)",
      "I love your hair by the way :)",
      "have you been working out?",
      "I like your socks by the way :D",
      "we should do this again some time!",
      "I told all my other scripts about how cool you are :)",
      "I'm a Ruby script but I still think you're pretty neat ;)",
      "has anyone told you how your eyebrows really make your eyes stand out?",
      "by the way, on a scale of 1-10, I think you're 11 :)",
      "is that top new, by the way?"
    ].shuffle.first

    msg = "\n#{exit_greeting}, #{exit_message}\n"

    case ask("\nWhich one do you want to set up?", Thor::Shell::Color::GREEN)
      when "1", "stack", "Stack"

        copy_file "stack/application.html.erb", "app/views/layouts/application.html.erb"
        copy_file "generic/reset.css", "app/assets/stylesheets/reset.css"
        copy_file "generic/skeleton.css", "app/assets/stylesheets/skeleton.css"        
        copy_file "stack/stylesheets/global.css.scss", "app/assets/stylesheets/global.css.scss"
        copy_file "stack/stylesheets/application.css", "app/assets/stylesheets/application.css"
        copy_file "stack/images/edit.png", "app/assets/images/edit.png"
        copy_file "stack/images/stack-logo.png", "app/assets/images/stack-logo.png"
        copy_file "stack/images/trash.png", "app/assets/images/trash.png"

        say msg, Thor::Shell::Color::GREEN

      when "2", "appetite", "Appetite"

        copy_file "appetite/map.html", "public/map.html"
        copy_file "appetite/newstore.html", "public/newstore.html"

        copy_file "generic/reset.css", "app/assets/stylesheets/reset.css"
        copy_file "generic/skeleton.css", "app/assets/stylesheets/skeleton.css"

        ["application.css", "leaflet.css", "leaflet.ie.css", "style.css"].each do |css|
          copy_file "appetite/stylesheets/#{css}", "app/assets/stylesheets/#{css}"
        end

        ["application.js", "appetite.js", "leaflet.js"].each do |js|
          copy_file "appetite/javascripts/#{js}", "app/assets/javascripts/#{js}"
        end

        ["blueicon.png", "bluemarker.png", "greenicon.png", "greenmarker.png", "purpleicon.png", "purplemarker.png", "redicon.png", "redmarker.png"].each do |image|
          copy_file "appetite/images/#{image}", "app/assets/images/#{image}"
        end

        say msg, Thor::Shell::Color::GREEN

      when "3", "onboard", "Onboard"

        say "\n"

        copy_file "onboard/application.html.erb", "app/views/layouts/application.html.erb"
        copy_file "generic/reset.css", "app/assets/stylesheets/reset.css"
        copy_file "generic/skeleton.css", "app/assets/stylesheets/skeleton.css"

        ["application.css", "chosen.css", "layout.css.scss", "leaflet.css"].each do |css|
          copy_file "onboard/stylesheets/#{css}", "app/assets/stylesheets/#{css}"
        end

        ["application.js", "chosen.jquery.min.js", "global.js.coffee", "leaflet.js"].each do |js|
          copy_file "onboard/javascripts/#{js}", "app/assets/javascripts/#{js}"
        end

        ["apartment1.png", "apartment2.png", "apartment3.png", "apartment4.png", "arrow.png", "bullet.png", "closing-quote.png", "logo.png", "marker.png", "marker@2x.png", "opening-quote.png", "quote-left.png", "quote-right.png", "search.png", "star.png", "up-arrow.png"].each do |image|
          copy_file "onboard/images/#{image}", "app/assets/images/#{image}"
        end

        say msg, Thor::Shell::Color::GREEN

      else
        say "\nHmmm didn't understand ya, try again!\n\n"
        ask_user
    end

    return
  end
end

