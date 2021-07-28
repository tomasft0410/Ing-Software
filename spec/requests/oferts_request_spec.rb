require 'rails_helper'

RSpec.describe "Oferts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/oferts/index/1"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/oferts/new/1"
      expect(response).to have_http_status(:success)
    end
  end
end
