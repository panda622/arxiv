require 'rails_helper'

RSpec.describe "Articles", type: :request do
  before(:each) do
    user = FactoryBot.create(:user)
    sign_in user
  end

  describe "GET /index" do
    it "returns http success" do
      get "/articles"
      expect(response).to have_http_status(:success)
    end

    it "search author" do
      get "/articles?search_query=David Prendergast"
      expect(response.body).to include("David Prendergast")
    end

    it "search author more" do
      get "/articles?search_query=Dedduwakumara"
      expect(response.body).to include("Dedduwakumara")
    end
  end

  describe "GET /save" do
    it "returns http success" do
      post "/articles/save"
      expect(response).to have_http_status(:success)
    end
  end

end
