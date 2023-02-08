class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    book = Book.new(list_params)
    book.save
    redirect_to '/books'
  end

  def show
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
