require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  before do
    sign_in User.create(email: 'test@mail.com', password: '123456', password_confirmation: '123456')
  end


  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end