class Contact < ApplicationRecord
    belongs_to :user
    belongs_to :group
    
    has_many :phone, dependent: :destroy
    has_many :address, dependent: :destroy
    accepts_nested_attributes_for :address,:group, allow_destroy: true
    accepts_nested_attributes_for :phone,allow_destroy: true
    # add validation
    validates :name, :email , presence: true
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
