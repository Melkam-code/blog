require 'rails_helper'

RSpec.describe NewsController, type: :controller do
  describe '#world_news' do
    it 'should return success response' do 
        get :world_news
        expect(response).to have_http_status(:ok)
    end
  end
end