class OrganizationsController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@orgs = Organization.all
	end

	def show
		@org = Organization.find(params[:id])
	end

end
