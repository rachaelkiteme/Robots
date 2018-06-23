class RobotsController < ApplicationController
  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new()
    if @robot.save
      flash[:success] = "You have created a robot"
    else 
      flash[:danger] = "You have not created a bot"
  end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def robot params 
    params.require(:robot).permit(:name, :ability, :version, :manufacturer)
end
end
