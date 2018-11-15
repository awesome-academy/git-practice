class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate page: params[:page]
    end
  end

  def help
  end
  
  def hello
  	puts "hello world"
    puts "12345"
  end
end
