class Contact < ApplicationRecord
  validates :phone, :email, :name, :message, presence: true
end
