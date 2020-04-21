require "spec_helper"
require "api"

describe Api do
  describe ".call_api" do
    it { expect(Api).to respond_to :call_api }
  end
end
