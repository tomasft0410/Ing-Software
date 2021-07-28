require 'rails_helper'

RSpec.describe "Carretes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/carretes/index"
      expect(response).to have_http_status(:success)
    end
    it 'should render the page view' do
      get '/carretes/index'
      expect(response).to render_template(:index)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/carretes/new"
      expect(response).to have_http_status(:success)
    end
  end
end
