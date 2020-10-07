class Api::V1::Users::UsersBaseController < ApiController
  before_action :set_user
  
  def set_user
    if (params[:user_id].eql?('me') || params[:id].eql?('me')) && current_user
      @user = current_user
    else
      @user = User.find(params[:user_id] || params[:id])
    end
  end
end