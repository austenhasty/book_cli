require "dotenv/load"
require "rest-client"

class Api

  API_URL = "https://www.googleapis.com/books/v1"

  def self.call_api(query)
  books_string = RestClient.get("#{API_URL}/volumes?q=#{query}&key=#{ENV["API_KEY"]}&maxResults=5")
  books_hash = JSON.parse(books_string)

  books_array =  books_hash["items"].map do |book|
    {"title" => book["volumeInfo"]["title"], "authors" => (book["volumeInfo"]["authors"].join (" , ")), "publisher"=> book["volumeInfo"]["publisher"]}
    end
    books_array.each_with_index do |book, index|
       puts "#{index + 1}: #{book["title"]}
       #{book["authors"]}
       #{book["publisher"]}"
     end
   end

end
