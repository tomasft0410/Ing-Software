require 'rails_helper'

RSpec.describe "Contratos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/contratos/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/contratos/new"
      expect(response).to have_http_status(:success)
    end
  end
end
