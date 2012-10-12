class Tag < ActiveRecord::Base
  attr_accessible :name

  def to_s
    name
  end

  has_many :taggings, :dependent => :destroy
  has_many :articles, :through => :taggings
end
