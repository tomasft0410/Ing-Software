require 'rails_helper'

RSpec.describe "Comentarios", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/comentarios/new/1"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/comentarios/index/1"
      expect(response).to have_http_status(:success)
    end
  end
end
