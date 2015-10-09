class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
  end

  private
  def group_params
    params.require(:group).permit(:name, :image_url).merge(user_id: current_user.id)
  end
end
