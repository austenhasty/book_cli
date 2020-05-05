require "pry"

class UserPrompts

  def initialize
    system("clear")
    @@reading_list = []
    command_list
  end

# home screen / list of commands user can input to run the program
  def command_list
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
      safe_search
    when "v"
      view_reading_list
    when "q"
      quit_program
    else
      system("clear")
      puts "It looks like you have entered an invalid command. Lets try again."
      puts ""
      puts ""
    end
    command_list
  end

  # promps user for imput to query API and sort/limit return data
  def get_books
    # clears the screen
    system("clear")
    puts "Please enter what you are looking for today: "
    puts ""
    query = gets.chomp.downcase
    results = Api.call_api(query)

    add_book_to_reading_list(results)
  end

  # this search account for error messages from the API so the program doesn't crash. Helps control user input and API response
    def safe_search
      begin
        get_books
      rescue
        puts "It looks like there was an issue with your search. Let's try again!"
        puts "Press enter to try again"
        puts "(select r to return home or q to quit the program)"
        response = gets.chomp.downcase
      case response
      when "r"
        command_list
      when "q"
        quit_program
      else
        safe_search
        end
      end
    end

    # allows user to view their reading list and accounts for an empty list
        def view_reading_list
          system('clear')
          if @@reading_list.length != 0
            @@reading_list.each_with_index do |book, index|
              puts "#{index + 1}: #{book["title"]}
              #{book["authors"]}
              #{book["publisher"]}"
            end
            puts ""
            return_or_quit
          else
            puts "Your reading list is currently empty."
            return_or_quit
          end
        end

        # gives user the option to save one of the books returned from API to reading list
            def add_book_to_reading_list(books_array)
              puts "Would you like to add any of these to your reading list? (Y/n)"
              input = gets.chomp.downcase
              if input == "y"
                get_book_number(books_array)
              elsif input == "n"
                command_list
              else
                  puts "Please enter a valid command."
                  add_book_to_reading_list(books_array)
              end
              return_or_quit
            end

            # gets proper index of the book to add to the reading list
            def get_book_number(books_array)
              puts "Please enter the number associated with your selection: "
              book_number = gets.chomp.to_i
              case book_number
              when 1
                @@reading_list << books_array[0]
              when 2
                @@reading_list << books_array[1]
              when 3
                @@reading_list << books_array[2]
              when 4
                @@reading_list << books_array[3]
              when 5
                @@reading_list << books_array[4]
              else
                puts "Please enter 1-5."
                get_book_number(books_array)
              end
            end
# closes the program
    def quit_program
      system("clear")
      puts "Thank you for using the Google Books CLI tool"
      puts "Goodbye"
      puts ""
      abort
    end

# quick and easy way to return to home screen or exit if user is done
    def return_or_quit
      puts "Please select r to return to the home screen or q to exit the program."
      choice = gets.chomp.downcase
      case choice
      when "r"
        command_list
      when "q"
        quit_program
      else
        return_or_quit
      end
    end

end
