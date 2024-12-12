class Store < ApplicationRecord
  has_one :manager
  has_many :contacts
  
  accepts_nested_attributes_for :manager
  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true
end
