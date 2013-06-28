class ReviewsController < ApplicationController
  
  def new
    @book = Book.find(params[:id])
    @review = @book.reviews.build
  end
  
  def create
    @book = Book.find(params[:id])
    @review = @book.reviews.build(params[:review])
    if @review.save
      #redirect_to new_rental_path(:id => @movid.id)
      redirect_to :controller => 'reviews', :action => 'new', :id => @book.id
    end
  end
end
