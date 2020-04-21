# book_cli

This is a Ruby-based CLI application that allows the user to query the Google Books API and gives them the option to save books locally in a reading list. 

Note-- this applicaton is NOT connected to a database so the data will not persist when the user quits the application.

## Installation and Setup

1. Make sure Ruby is installed in your terminal
  * `ruby -v` will tell you what version you have installed

2. Fork and clone the repository

3. Aquire a key to the Google Books API from: https://developers.google.com/books (follow the steps on the website)

4. Using your API key, make sure to create a .env file and enter the key as shown, with the API key wrapped in quotation marks(" ").  
<img width="743" alt="Screen Shot 2019-10-29 at 9 46 46 PM" src="https://user-images.githubusercontent.com/48666288/67829917-12dca800-fa96-11e9-8dc1-640a2e0a53ce.png">

5. Make sure you then create a .gitignore file and hide your .env file inside of it. This will allow you to use your API key without the risk of sharing it publicly.
<img width="847" alt="Screen Shot 2019-10-29 at 9 47 24 PM" src="https://user-images.githubusercontent.com/48666288/67830351-89c67080-fa97-11e9-86fb-16d7fcbf5f93.png">

6. Run bundle install to install all neccessary gems.

7. Lastly, run the program by typing: ruby bin/run.rb
