class RailsExamController < ApplicationController
  def index
  end

  def errors
    @authors = Author.created_after("2018-01-01 00:00:00").includes(:books)
  end

  def backend
    # price_ids = Book.group(:price).order('price DESC').count(:product_id).keys
    # price_ranking = price_ids.map { |id| Book.find(id) }
    @authors = Author.all.includes(:books)
  end

  def backend02
    @book = Book.new
    @authers = Author.all
  end
end
