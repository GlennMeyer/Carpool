class CommuteController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @commute = @user.create_commute(commute_params)

    redirect_to edit_commute_path(@user, @commute)
  end

  def edit
    @commute = Commute.find(params[:id])

    @commutes = Commute.where("user_id != #{current_user.id}")
  end

  def new
    @commute = Commute.new
  end

  def update
    commute = Commute.find(current_user.id)
    commute.update(commute_params)
    redirect_to edit_commute_path(commute)
  end

  private
  def commute_params
    params.require(:commute).permit!
  end
end