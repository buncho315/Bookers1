class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to'/books/index'
  end

  def index
    @book = Book.find(1)
  end

  def show
  end

  def edit
    redirect_to'/edit'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end #private以降自分で追記
end
