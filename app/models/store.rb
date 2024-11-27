class Store < ApplicationRecord
  has_one :manager
  
  accepts_nested_attributes_for :manager
end
