require 'rails_helper'

RSpec.describe "ValoracionCarretes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/valoracion_carretes/index/1"
      expect(response).to have_http_status(:success)
    end
    it 'should render the page view' do
      get '/valoracion_carretes/index/1'
      expect(response).to render_template(:index)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/valoracion_carretes/new/1"
      expect(response).to have_http_status(:success)
    end
  end
end
