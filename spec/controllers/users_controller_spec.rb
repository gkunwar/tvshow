require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context "GET#index" do
    let!(:user){ create(:user) }
    before(:each){ get :index }

    it "return all users" do
      expect(json).to match_array([{ name: user.name }.with_indifferent_access])
    end
  end
end
