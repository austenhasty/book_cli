require "pry"

class UserPrompts

  def initialize
    system("clear")
    ReadingList.new
    UserPrompts.command_list
  end

# home screen / list of commands user can input to run the program
  def self.command_list
    # system("clear")
    puts "Welcome to the Google Books CLI! Please choose from the following options: "

    puts " s: Search for a book"
    puts " v: View Reading List"
    puts " q: Exit Program"
    puts ""
    input = gets.chomp.downcase
    # controls user input
    case input
    when "s"
      Book.safe_search
    when "v"
      ReadingList.view_reading_list
    when "q"
      self.quit_program
    else
      system("clear")
      puts "It looks like you have entered an invalid command. Lets try again."
      puts ""
      puts ""
    end
    self.command_list
  end

# closes the program
    def self.quit_program
      system("clear")
      puts "Thank you for using the Google Books CLI tool"
      puts "Goodbye"
      puts ""
      abort
    end

# quick and easy way to return to home screen or exit if user is done
    def self.return_or_quit
      puts "Please select r to return to the home screen or q to exit the program."
      choice = gets.chomp.downcase
      case choice
      when "r"
        self.command_list
      when "q"
        self.quit_program
      else
        self.return_or_quit
      end
    end

end
