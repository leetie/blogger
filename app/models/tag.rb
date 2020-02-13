class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings

  #alternative to self.tags.collect in article.rb
  #change to_s method that gets called by default to return the tag name
  #def to_s
  #name
  #end
end
