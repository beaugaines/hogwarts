class Student < ActiveRecord::Base
  attr_accessible :name, :house_id
  belongs_to :house
  delegate :name, to: :house, prefix: true

  after_create :assign_house

  private

  def assign_house
    self.house_id = House.all.sample.id
    save!
  end
  
end
