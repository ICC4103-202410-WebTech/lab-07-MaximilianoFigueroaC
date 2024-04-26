class Post < ApplicationRecord
    belongs_to :user
    has_many :child_posts, class_name: 'Post', foreign_key: 'parent_post_id', dependent: :destroy
    belongs_to :parent_post, class_name: 'Post', optional: true
    has_many :post_tags, dependent: :destroy
    has_many :tags, through: :post_tags

  
    validates :title, presence: { message: 'It’s a book without a name!, how can I get it. Insert a name' }
    validates :content, presence: { message: 'should not be empty. Share your thoughts!' }
    validates :user_id, presence: { message: 'uuuu a ghost write this book!. A post needs its author.' }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: 'can’t be less than zero. Math rules!' }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: 'can’t be less than zero. Likes are always positive!' }
    
    before_create :set_default_published_at
    before_validation :set_default_published_at, on: :create
  
    private
  
    def set_default_published_at
        self.published_at ||= Time.zone.now
    end
end

