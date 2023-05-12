class Contact < ApplicationRecord

    validates :nome, presence: true, length: {maximum: 50}
    validates :phone, presence: true

    belongs_to :user

end
