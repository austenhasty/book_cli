require "dotenv/load"
require "rest-client"
require "pry"
require "json"

class Cli


  def self.run_app
    UserPrompts.new
  end

end
