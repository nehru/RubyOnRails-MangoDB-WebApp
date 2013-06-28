class Review
  include Mongoid::Document
  field :book_id, type: Integer
  field :name, type: String
  field :comment, type: String
  field :rating, type: Integer
  
  belongs_to :book;
end
