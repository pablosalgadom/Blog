class HomeController < ApplicationController
	before_action :set_post, only: [:show]
  def index
  	@posts = Post.all.order(created_at: :desc).page(params[:page]).per(5)
  end
end
