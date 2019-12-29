class MicroBotsController < ApplicationController
  def index 
    @micro_bots = MicroBot.all 
    render :index 
  end

  def new 
    @micro_bot = MicroBot.new 
    render :new
  end

  def create 
    @micro_bot = MicroBot.create(micro_bot_params)
    if @micro_bot.valid? 
      redirect_to micro_bot_path(@micro_bot)
    else 
      render :new 
    end
  end

  def show 
    @micro_bot = MicroBot.find(params[:id])
    render :show 
  end

  def edit 
    @micro_bot = MicroBot.find(params[:id])
    render :edit 
  end

  def update 
    @micro_bot = MicroBot.find(params[:id])
    if @micro_bot.update(micro_bot_params)
      redirect_to :show
    else 
      render :show 
    end
  end

  private 

  def micro_bot_params 
    params.require(:micro_bot).permit(:access_token, :device_name)
  end
end
