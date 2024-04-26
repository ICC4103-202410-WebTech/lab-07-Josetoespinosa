class Post < ApplicationRecord

    has_many :posttotags
    has_many :tags, through: :posttotags

    validates :title, presence: true
    validates :content, presence: true
    validates :user_id, presence: true

    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "negative answers is not allowed" }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "negative answers is not allowed" }
    before_save :set_time_now_publish_date

    belongs_to :user



    def set_time_now_publish_date
        self.published_at = Time.zone.now
    end
    
end