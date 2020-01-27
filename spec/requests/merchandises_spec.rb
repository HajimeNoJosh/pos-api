require 'rails_helper'

RSpec.describe "Merchandises", type: :request do
  describe "GET /merchandises" do
    it "works! (now write some real specs)" do
      get merchandises_path
      expect(response).to have_http_status(200)
    end
  end
end
