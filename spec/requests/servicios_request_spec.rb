require 'rails_helper'

RSpec.describe "Servicios", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/servicios/index"
      expect(response).to have_http_status(:success)
    end
    it 'should render the page view' do
      get '/servicios/index'
      expect(response).to render_template(:index)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/servicios/new"
      expect(response).to have_http_status(:success)
    end
  end
end
