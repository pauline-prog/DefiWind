class PagesController < ApplicationController
  def home
  	@posts = Post.all
  end

  def meteo
  end
end
