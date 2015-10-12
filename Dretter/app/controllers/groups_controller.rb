class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    @groups = current_user.groups.order("created_at DESC")
    GroupsUser.create(user_id: current_user.id, group_id: @group.id)
  end

  def search
    @groups = current_user.groups.order("created_at DESC")
    @searched_group = Group.find_by(key: params[:key])
  end

  def join
    group = Group.find(params[:id])
    GroupsUser.create(user_id: current_user.id, group_id: group.id)
    redirect_to search_groups_path
  end

  def change
    group = Group.find(params[:id])
    current_user.update(active_group_id: group.id)
    redirect_to root_path
  end

  private
  def group_params
    params.require(:group).permit(:name, :key)
  end
end
