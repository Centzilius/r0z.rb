class ApiController < ApplicationController
  def flashinfo
    render :file => 'api/flashinfo.json.erb', ':content_type' => 'application/json'
  end
end
