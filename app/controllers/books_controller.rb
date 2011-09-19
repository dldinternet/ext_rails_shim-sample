class BooksController < ApplicationController

  include ExtRailsShim::ControllerConvention

  # GET /books.json
  def index
    books = Book.order(ext_order_from_params).offset(params[:start]).limit(params[:limit])
    respond_with(books)
  end

  # GET /books/1.json
  def show
    book = Book.find(params[:id])
    respond_with(book)
  end

  # POST /books.json
  def create
    book = Book.new(params[:book])
    book.save
    respond_with(book)
  end

  # PUT /books/1.json
  def update
    book = Book.find(params[:id])
    book.update_attributes(params[:book])
    respond_with(book)
  end

  # DELETE /books/1.json
  def destroy
    book = Book.find(params[:id])
    book.destroy
    respond_with(book)
  end
end
