class UsersController < ApplicationController

  # editファイルを起動する？
  def edit
  end

#記述の挙動、両方renderではだめ？
  def update
    if current_user.update(user_params)
         redirect_to root_path
    else
      render :edit
    end
    end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
