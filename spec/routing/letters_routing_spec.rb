require "rails_helper"

RSpec.describe LettersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/letters").to route_to("letters#index")
    end

    it "routes to #new" do
      expect(:get => "/letters/new").to route_to("letters#new")
    end

    it "routes to #show" do
      expect(:get => "/letters/1").to route_to("letters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/letters/1/edit").to route_to("letters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/letters").to route_to("letters#create")
    end

    it "routes to #update" do
      expect(:put => "/letters/1").to route_to("letters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/letters/1").to route_to("letters#destroy", :id => "1")
    end

  end
end
