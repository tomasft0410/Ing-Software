require "rails_helper"

RSpec.describe ServiciosController, type: :controller do
  describe "GET create" do
    it "create correctly" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
