class Book
  include Mongoid::Document
  field :title, type: String
  field :name, type: String
  
  has_many :reviews
end
