#---
# Excerpted from "Crafting Rails 4 Applications",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/jvrails2 for more book information.
#---
module MongoMetrics
  class MuteMiddleware
    def initialize(app)
      @app = app
    end
  
    def call(env)
      MongoMetrics.mute! { @app.call(env) }
    end
  end
end
