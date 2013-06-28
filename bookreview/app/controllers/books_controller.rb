class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.all
  end
    
  def create
    @book = Book.new(params[:book])
    if @book.save
      redirect_to new_book_path
    end
  end
    
end
