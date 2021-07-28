require 'rails_helper'

RSpec.describe "ComentarioCarretes", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/comentario_carretes/new/1"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/comentario_carretes/index/1"
      expect(response).to have_http_status(:success)
    end
  end
end
