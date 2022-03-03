module AuthorizationHelper
  private
  def confirm_login
    unless current_user
      redirect_to login_path, notice: 'You need to login to perform this operation!'
    end
  end
end
