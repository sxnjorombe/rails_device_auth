require 'rails_helper'

RSpec.describe "Dev::Roles", type: :request do
  describe "GET /dev_roles" do
    it "works! (now write some real specs)" do
      get dev_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
