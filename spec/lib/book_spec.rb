require "spec_helper"
require "book"

describe Book do
  describe ".get_books" do
    it {expect(Book).to respond_to :get_books}
  end

  describe ".safe_search" do
    it {expect(Book).to respond_to :safe_search}
  end
end
