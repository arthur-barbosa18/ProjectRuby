module Api
  module V1
    class UsersController < ApiController
    	
      def add_role
      	role = Role.find_by(name: params[:user][:name])
      	raise ActiveRecord::RecordNotFound unless role
      	resource.add_role(role)
			render_json(resource)
      end

    end
  end
end