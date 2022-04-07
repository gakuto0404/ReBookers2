class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @books = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end


  private

  def book_params
    params.require(:book).permit(:title, :body) # 後ろの(の中)がわからない 2022/3/27 23:55
  end
end
