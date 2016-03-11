require 'rails_helper'

RSpec.describe 'ShowsControllerRoutes', type: :routing do
  specify '/shows should route to ShowsController index action' do
    expect(:get => '/shows').to route_to(
      controller: 'shows',
      action: 'index')
  end
  
end
