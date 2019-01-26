require 'spec_helper'

describe Api::V1::ApiController, type: :controller do
  before do
    class Dummy 
      def initialize(data = nil) end
      def save!() true end
      def errors() return [1] end
      def update(attrs = nil) true end
      def destroy() true end
      def self.human_attribute_name(attr, value) '' end
      def self.i18n_scope() '' end
    end

    Rails.application.routes.draw do
      namespace :api do
        namespace :v1 do
          resources :api
        end
      end
    end
  end

  after do
    Rails.application.reload_routes!
  end

  describe 'The #index action' do
    it 'renders 200' do
      controller.stub(:collection).and_return([])
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'The #create action' do
    before do
      controller.stub(:resource_class).and_return(Dummy)
      controller.stub(:create_params).and_return(nil)
    end

    it 'renders 201' do
      post :create
      expect(response).to have_http_status(201)
    end

    it 'renders 422' do
      errors = ActiveModel::Errors.new(Dummy.new).tap {|e| e.add(:key, 'value')}
      allow_any_instance_of(Dummy).to receive(:save!).and_return(false)
      allow_any_instance_of(Dummy).to receive(:errors).and_return(errors)
      post :create
      expect(response).to have_http_status(422)
    end
  end

  describe 'The #show action' do
    it 'renders 200' do
      controller.stub(:resource).and_return(Dummy.new)
      get :show, params: { id: 1 }
      expect(response).to have_http_status(200)
    end

    it 'renders 404' do
      controller.stub(:try_find_resource).and_raise(ActiveRecord::RecordNotFound.new)
      get :show, params: { id: 1 }
      expect(response).to have_http_status(404)
    end
  end

  describe 'The #update action' do
    before do
      controller.stub(:update_params).and_return(nil)
    end

    it 'renders 200' do
      controller.stub(:resource).and_return(Dummy.new)
      put :update, params: { id: 1 }
      expect(response).to have_http_status(200)
    end

    it 'renders 404' do
      controller.stub(:try_find_resource).and_raise(ActiveRecord::RecordNotFound.new)
      put :update, params: { id: 1 }
      expect(response).to have_http_status(404)
    end

    it 'renders 422' do
      controller.stub(:resource).and_return(Dummy.new)
      controller.stub(:update).and_raise(ActiveRecord::RecordInvalid.new)
      put :update, params: { id: 1 }
      expect(response).to have_http_status(422)
    end
  end

  describe 'The #destroy action' do
    it 'renders 204' do
      controller.stub(:resource).and_return(Dummy.new)
      post :destroy, params: { id: 1 }
      expect(response).to have_http_status(204)
    end

    it 'renders 404' do
      controller.stub(:try_find_resource).and_raise(ActiveRecord::RecordNotFound.new)
      post :destroy, params: { id: 1 }
      expect(response).to have_http_status(404)
    end
  end
end
