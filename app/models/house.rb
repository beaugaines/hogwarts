class House < ActiveRecord::Base
  attr_accessible :name
  has_many :students, dependent: :destroy
end