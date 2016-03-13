require 'rails_helper'

RSpec.describe ShowsController, type: :controller do
  let!(:user1){ create(:user) }
  let!(:user2){ create(:user) }
  let!(:user3){ create(:user) }
  let!(:show1){ create(:show, user: user1) }
  let!(:show2){ create(:show, user: user2) }
  let!(:show3){ create(:show, user: user3) }
  let!(:show4){ create(:show, user: user1) }
  let!(:show5){ create(:show, user: user2) }
  let!(:show6){ create(:show, user: user3) }

  context 'GET#index' do
    it "returns the last show of each user ordered by user's created_at" do
      get :index
      expect(assigns(:shows).map{|s| s.id}).to eq([show6.id, show5.id, show4.id])
    end

    it "returns only 3 shows for 3 users" do
      get :index
      expect(assigns(:shows).count).to eq(3)
    end

    it "does not returns the last show of each user ordered by user's created_at in reverse order" do
      get :index
      expect(assigns(:shows).map{|s| s.id}).not_to eq([show4.id, show5.id, show6.id])
    end

    it "does not returns the first show of each user ordered by user's created_at" do
      get :index
      expect(assigns(:shows).map{|s| s.id}).not_to eq([show1.id, show2.id, show3.id])
    end
  end
end
