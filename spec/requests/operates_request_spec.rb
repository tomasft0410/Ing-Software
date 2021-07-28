require 'rails_helper'

RSpec.describe "Operates", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/operates/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/operates/new"
      expect(response).to have_http_status(:success)
    end
  end
end
