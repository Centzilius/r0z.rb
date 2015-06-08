class MainController < ApplicationController
  def index
    if params[:id].nil?
      new_id = rand(0..Flash.count)
      redirect_to id: new_id
    else
      @flash = Flash.find(params[:id])
    end
  end
end
