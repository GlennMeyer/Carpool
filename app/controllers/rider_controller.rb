class RiderController < ApplicationController
  def create
    user = User.find(current_user.id)
    user.commute.create_rider(rider_params)
    redirect_to root_path
  end

  private

  def rider_params
    params.require(:rider).permit!
  end
end
