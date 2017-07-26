require 'rails_helper'

RSpec.describe "Shoots", type: :request do
  describe "GET /shoots" do
    it "works! (now write some real specs)" do
      get shoots_path
      expect(response).to have_http_status(200)
    end
  end
end
