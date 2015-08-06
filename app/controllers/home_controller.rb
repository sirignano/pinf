class HomeController < ApplicationController
  def index
  	@owned_project = Project.where("user_id = #{current_user.id}")
  	all_project_id = ConnectP2u.where("user_id = #{current_user.id}")
  	@all_project = []
  	all_project_id.each do |a|
  		@all_project << Project.where("id = #{a.id}").first
  	end
  end
end
