# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

    def index
      @users = User.all
    end

    def show
      @user = current_user
    end

    def edit
      @user = current_user
    end

    def add_money
      @user = current_user
      @user_params = params.require(:user).permit(:dinero)
      if @user.update(dinero: @user_params[:dinero].to_i + current_user.dinero)
        redirect_to users_show_path
      end
    end


  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  end
end
