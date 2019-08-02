class Phone < ApplicationRecord
  belongs_to :contact, optional: true
  validates_presence_of :phone
end
