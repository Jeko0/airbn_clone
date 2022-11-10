require 'rails_helper'

RSpec.describe 'Properties::Search', type: :request do
  let(:properties) { create_list(:property, 4) }

  context "GET index" do
    before { get properites_search_path }

    it { expect(response).to have_http_status(:ok) }
  end
end
