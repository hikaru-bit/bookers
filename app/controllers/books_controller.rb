class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
   book = Book.new(list_params)
   book.save
   redirect_to book_path(book.id), notice: 'Book was successfully created.'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
