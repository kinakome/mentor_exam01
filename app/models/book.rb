class Book < ApplicationRecord
  belongs_to :author
  validates :title, presence: true, if: :match?
  validates :price, presence: true, if: :match?
	def match?
	  # validates :title, uniqueness: true && validates :auther, uniqueness: true
	end
  private
  def price_with_tax
    price * 1.08
  end
end
