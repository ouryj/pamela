class HomesController < ApplicationController
  def index
    @books = GoogleBooks.search(params[:search])
  end

  def new
  end
  
end
