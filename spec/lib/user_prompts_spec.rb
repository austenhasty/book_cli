require "spec_helper"
require "user_prompts"

describe UserPrompts do
  describe ".command_list" do
    it {expect(UserPrompts).to respond_to :command_list}
  end

  describe ".quit_program" do
    it {expect(UserPrompts).to respond_to :quit_program}
  end

  describe ".return_or_quit" do
    it {expect(UserPrompts).to respond_to :return_or_quit}
  end
end
