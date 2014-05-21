require "spec_helper"

describe Forum::PostsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/forum/posts").to route_to("forum/posts#index")
    end

    it "routes to #new" do
      expect(:get => "/forum/posts/new").to route_to("forum/posts#new")
    end

    it "routes to #show" do
      expect(:get => "/forum/posts/1").to route_to("forum/posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/forum/posts/1/edit").to route_to("forum/posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/forum/posts").to route_to("forum/posts#create")
    end

    it "routes to #update" do
      expect(:put => "/forum/posts/1").to route_to("forum/posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/forum/posts/1").to route_to("forum/posts#destroy", :id => "1")
    end

  end
end
