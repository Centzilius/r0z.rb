class MainController < ApplicationController
  def index
    @flash = Flash.find(params[:num])
  end
  def data
    @flash = Flash.new(params.require(:num).permit(:integer))
    @flash.save
    redirect_to @flash
  end
end
