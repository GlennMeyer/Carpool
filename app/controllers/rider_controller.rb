class RiderController < ApplicationController
  before_action :authenticate_user!
  
  def create
    user = User.find(current_user.id)
    user.commute.create_rider(rider_params)
    redirect_to edit_rider_path(user.commute.rider)
  end

  def edit
    @rider = Rider.find(current_user.commute.rider.id)

    @drivers = Driver.all

    @message = Message.new
  end

  private

  def rider_params
    params.require(:rider).permit!
  end
end
