class Tags < ApplicationRecord
    has_many :posttotags
    has_many :posts, through: :posttotags

    validates :name, presence: true,uniqueness: true

end