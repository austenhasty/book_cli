require "spec_helper"
require "book"

describe Book do

let!(:harry) { Book.new("Harry Potter", "J.K. Rowling", "Publisher") }

  describe "#new" do
    it "takes in three arguments: a title, author, and publisher" do
      expect{Book.new("Harry Potter", "J.K. Rowling", "Publisher")}.to_not raise_error
    end
  end

  describe "#title" do
    it "has a title" do
      expect(harry.title).to eq("Harry Potter")
    end
  end

  describe "#author" do
    it "has an author" do
      expect(harry.author).to eq("J.K. Rowling")
    end
  end

  describe "#publisher" do
    it "has a publisher" do
      expect(harry.publisher).to eq("Publisher")
    end
  end

end
