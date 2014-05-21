require 'spec_helper'

describe "Forum::Posts" do
  describe "GET /forum_posts" do
    it "works! (now write some real specs)" do
      get forum_posts_path
      expect(response.status).to be(200)
    end
  end
end
