# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
