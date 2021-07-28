require 'rails_helper'

RSpec.describe "Favoritos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/favoritos/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/favoritos/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/favoritos/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/favoritos/edit"
      expect(response).to have_http_status(:success)
    end
  end
end
