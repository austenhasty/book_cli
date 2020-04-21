

class Book

  # promps user for imput to query API and sort/limit return data
  def self.get_books
    # clears the screen
    system("clear")
    puts "Please enter what you are looking for today: "
    puts ""
    query = gets.chomp.downcase
    results = Api.call_api(query)

    ReadingList.add_book_to_reading_list(results)
  end

  # this search account for error messages from the API so the program doesn't crash. Helps control user input and API response
    def self.safe_search
      begin
        self.get_books
      rescue
        puts "It looks like there was an issue with your search. Let's try again!"
        puts "Press enter to try again"
        puts "(select r to return home or q to quit the program)"
        response = gets.chomp.downcase
      case response
      when "r"
        UserPrompts.command_list
      when "q"
        UserPrompts.quit_program
      else
        self.safe_search
        end
      end
    end

end
