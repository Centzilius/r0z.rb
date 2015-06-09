class MainController < ApplicationController
  def index
  	id_not_zero = true
  	if params[:id] == "0"
  	  id_not_zero = false
  	end
  	id = params[:id].to_i
    if id == 0 and id_not_zero
      redirect and return
    elsif id.nil?
      redirect and return
    elsif id < 0
      redirect and return
    else
      @flash = Flash.find(params[:id])
    end
  end
  def redirect
    new_id = rand(0..Flash.count)
    redirect_to(:id => new_id)
  end
  def flashratio
  	data = FastImage.size("http://sandpapr.pw/flash/"+@flash.id.to_s+".swf")
  	byebug
  	ratio = data[0]/data[1]
  	return ratio
  end
  helper_method :flashratio
end
