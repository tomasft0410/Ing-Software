require 'rails_helper'

RSpec.describe "ValoracionServicios", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/valoracion_servicios/index/1"
      expect(response).to have_http_status(:success)
    end
    it 'should render the page view' do
      get '/valoracion_servicios/index/1'
      expect(response).to render_template(:index)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/valoracion_servicios/new/1"
      expect(response).to have_http_status(:success)
    end
  end
end
