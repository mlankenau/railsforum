require "spec_helper"

describe Forum::ThreadsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/forum/threads").to route_to("forum/threads#index")
    end

    it "routes to #new" do
      expect(:get => "/forum/threads/new").to route_to("forum/threads#new")
    end

    it "routes to #show" do
      expect(:get => "/forum/threads/1").to route_to("forum/threads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/forum/threads/1/edit").to route_to("forum/threads#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/forum/threads").to route_to("forum/threads#create")
    end

    it "routes to #update" do
      expect(:put => "/forum/threads/1").to route_to("forum/threads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/forum/threads/1").to route_to("forum/threads#destroy", :id => "1")
    end

  end
end
