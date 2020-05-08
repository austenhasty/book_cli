require "spec_helper"
require "user_prompts"

describe UserPrompts do

let!(:user) { UserPrompts.new }

  describe "#command_list" do
    it {expect(:user).to respond_to :command_list}
  end

  describe "quit_program" do
    it {expect(UserPrompts).to respond_to :quit_program}
  end

  describe "return_or_quit" do
    it {expect(UserPrompts).to respond_to :return_or_quit}
  end

  describe "view_reading_list" do
    it {expect(UserPrompts).to respond_to :view_reading_list}
  end

  describe "add_book_to_reading_list" do
    it {expect(UserPrompts).to respond_to :add_book_to_reading_list}
  end

  describe "get_book_number" do
    it {expect(UserPrompts).to respond_to :get_book_number}
  end
end
