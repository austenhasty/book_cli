

class ReadingList

  attr_accessor :reading_list

  def initialize
    @reading_list = []
  end

  def add_book(book)
    @reading_list << book
  end

  def show
      @reading_list.each_with_index do |book, index|
        puts "#{index + 1}: #{book["title"]}
        #{book["authors"]}
        #{book["publisher"]}"
      end
  end
end
