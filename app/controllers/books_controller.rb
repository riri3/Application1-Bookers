class BooksController < ApplicationController
  
  def show
  end
  
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to root_path  #ひとまずトップ画面へ遷移 
  end

  def edit
  end
  
  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
    
end
