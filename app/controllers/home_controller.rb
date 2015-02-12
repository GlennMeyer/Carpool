class HomeController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @commute = Commute.create(commute_params)

    @user.commute = @commute

    redirect_to edit_commute_path(@user.commute)
  end

  def edit
    @commute = Commute.find(current_user.id)

    @commutes = Commute.where("id != #{current_user.id}")
  end

  def inbox
  end

  def test
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
