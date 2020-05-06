class SearchsController < ApplicationController

  def search
    @model = params[:search_model]
    method = params[:search_method]
    word = params[:search_word]
    @users = User.search(method,word)
    @books = Book.search(method,word)
  end

end
