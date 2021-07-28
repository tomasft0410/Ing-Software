require 'rails_helper'

RSpec.describe 'Welcome', type: :request do
  describe '/index' do
    it 'should return a successful request' do
      get '/welcome/index'
      expect(response).to have_http_status(:ok)
    end
    it 'should render the page view' do
      get '/welcome/index'
      expect(response).to render_template(:index)
    end
  end
end
