class Post < ApplicationRecord
    has_many :post_tags, class_name: '::PostTag'
    has_many :tags, through: :post_tags, source: :tag, class_name: '::Tag'
    belongs_to :user
  
    validates :title, presence: { message: "Title can't be blank" }
    validates :content, presence: { message: "Content can't be blank" }
    validates :user_id, presence: { message: "User can't be blank" }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "Answers count must be equal or greater than 0" }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Likes count must be equal or greater than 0" }
    validates :published_at, presence: true
    before_validation :set_published_at

  
    def set_published_at
      self.published_at ||= Time.current
    end
  end