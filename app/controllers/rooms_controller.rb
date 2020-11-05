class RoomsController < ApplicationController
  def new
    # インスタンス変数を入れる意味、users_controllerとの違い
    @room = Room.new
  end
end
