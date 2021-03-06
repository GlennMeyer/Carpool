class RideshareController < ApplicationController
  before_action :authenticate_user!
  
  def remove
    rideshare = Rideshare.find(params[:id])
    rider = Rider.find(rideshare.rider_id)
    rideshare.update(rider_id: nil)
    rider.update(looking: true)
    
    Message.create({
        recipient_id: rideshare.driver.user.id,
        sender_id: rider.user.id,
        message: 'Rider has left the carpool.'
      })

    if current_user.commute.driver
      redirect_to show_rideshare_path
    else
      redirect_to edit_rider_path
    end
  end

  def show
    @message = Message.new

    if current_user.commute.driver != nil
      @riders = current_user.commute.driver.riders
    else
      @driver = current_user.commute.rider.rideshare.driver
    end
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
      redirect_to show_rideshare_path
    else
      flash[:alert] = 'Carpool full.  Invite is no longer valid.'
      message.destroy_all
      redirect_to edit_rider_path(current_user)
    end
  end
end