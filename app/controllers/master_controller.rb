# frozen_string_literal: true

class MasterController < ApplicationController
  def home
    if user_signed_in?
      @posts = current_user.feed.paginate page: params[:page], per_page: 10
      render 'master/feed'
    else
      @posts = Post.paginate(page: params[:page], per_page: 10)
      render 'posts/index'
    end
  end

  def help; end

  def about; end

  def contact; end
end
