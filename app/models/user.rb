class User < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :full_name, presence: true, length: { maximum: 100 }
end
