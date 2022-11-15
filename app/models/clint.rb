class Clint < ApplicationRecord
    has_many :phones 
  accepts_nested_attributes_for :phones
  scope :with_phones, ->(include) { includes(:phones) if include.present?  && include.to_bool}
end
