require 'rails_helper'

RSpec.describe "MissingPeople", type: :request do
  describe "GET /missing_people" do
    it "works! (now write some real specs)" do
      get missing_people_path
      expect(response).to have_http_status(200)
    end
  end
end
