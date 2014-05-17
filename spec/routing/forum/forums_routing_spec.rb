require "spec_helper"

describe Forum::ForumsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/forum/forums").to route_to("forum/forums#index")
    end

    it "routes to #new" do
      expect(:get => "/forum/forums/new").to route_to("forum/forums#new")
    end

    it "routes to #show" do
      expect(:get => "/forum/forums/1").to route_to("forum/forums#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/forum/forums/1/edit").to route_to("forum/forums#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/forum/forums").to route_to("forum/forums#create")
    end

    it "routes to #update" do
      expect(:put => "/forum/forums/1").to route_to("forum/forums#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/forum/forums/1").to route_to("forum/forums#destroy", :id => "1")
    end

  end
end
