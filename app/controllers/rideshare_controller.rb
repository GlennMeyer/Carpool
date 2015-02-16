class RideshareController < ApplicationController
  def show
    @riders = current_user.commute.driver.riders
  end

  def update
    rideshare = Rideshare.find_by(driver_id: params[:id], rider_id: nil)
    message = Message.where(recipient_id: current_user.id, sender_id: params[:id], invite: true)
    rider = current_user.commute.rider

    if rideshare 
      rideshare.update(rider_id: rider.id)
      Rider.find(rider.id).update(looking: false)
      flash[:notice] = 'Carpool joined!'
      message.destroy_all
      redirect_to root_path
    else
      flash[:alert] = 'Carpool full.  Invite is no longer valid.'
      message.destroy_all
      redirect_to inbox_path(current_user.id)
    end
  end
end

m = Message.where(recipient_id: 3, sender_id: 1, invite: true)