class Dog < ActiveRecord::Base
  validates_presence_of :name, :age, :age_unit, :weight, :weight_unit, :breed, :stage, :size
end
