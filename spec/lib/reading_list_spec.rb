require "spec_helper"
require "reading_list"

describe ReadingList do

let!(:list) { ReadingList.new }

  describe "#new" do
    it "has an array givin by default" do
      expect{ReadingList.new}.to_not raise_error
    end
  end


end
