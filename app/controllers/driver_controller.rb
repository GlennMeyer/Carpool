class DriverController < ApplicationController
  before_action :authenticate_user!
  
  def create
    user = User.find(current_user.id)
    user.commute.create_driver(driver_params)

    3.times do
      Rideshare.create({
          driver_id: user.commute.driver.id
        })
    end

    redirect_to edit_driver_path(user.commute.driver)
  end

  def edit
    @driver = Driver.find(current_user.commute.driver.id)

    @message = Message.new

    @riders = Rider.where(looking: true)
  end

  private

  def driver_params
    params.require(:driver).permit!
  end
end
