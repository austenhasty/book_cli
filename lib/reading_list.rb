

class ReadingList

  def initialize
    @@reading_list = []
  end

  # allows user to view their reading list and accounts for an empty list
      def self.view_reading_list
        system('clear')
        if @@reading_list.length != 0
          @@reading_list.each_with_index do |book, index|
            puts "#{index + 1}: #{book["title"]}
            #{book["authors"]}
            #{book["publisher"]}"
          end
          puts ""
          UserPrompts.return_or_quit
        else
          puts "Your reading list is currently empty."
          UserPrompts.return_or_quit
        end
      end

  # gives user the option to save one of the books returned from API to reading list
      def self.add_book_to_reading_list(books_array)
        puts "Would you like to add any of these to your reading list? (Y/n)"
        input = gets.chomp.downcase
        if input == "y"
          self.get_book_number(books_array)
        elsif input == "n"
          UserPrompts.command_list
        else
            puts "Please enter a valid command."
            self.add_book_to_reading_list(books_array)
        end
        UserPrompts.return_or_quit
      end


      # gets proper index of the book to add to the reading list
      def self.get_book_number(books_array)
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
          self.get_book_number(books_array)
        end
      end
end
