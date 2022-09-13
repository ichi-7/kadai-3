class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path, notice: 'Book was successfully created.'
    else
      render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
    @book_new = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  def edit
    @book = Book.find(params[:id])
    if @book.user_id != current_user.id
      redirect_to books_path
    end
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book), notice: 'You have updated book successfully.'
  end
    
  private
  
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
