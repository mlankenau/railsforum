require 'spec_helper'

describe "Forum::Threads" do
  describe "GET /forum_threads" do
    it "works! (now write some real specs)" do
      get forum_threads_path
      expect(response.status).to be(200)
    end
  end
end
