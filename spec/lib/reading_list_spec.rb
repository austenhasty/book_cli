require "spec_helper"
require "reading_list"

describe ReadingList do
  describe ".view_reading_list" do
    it {expect(ReadingList).to respond_to :view_reading_list}
  end

  describe ".add_book_to_reading_list" do
    it {expect(ReadingList).to respond_to :add_book_to_reading_list}
  end

  describe ".get_book_number" do
    it {expect(ReadingList).to respond_to :get_book_number}
  end
end
