class Tag < ApplicationRecord

    has_many :post_tags, dependent: :destroy
    has_many :posts, through: :post_tags

    # Validations
    validates :name, presence: { message: 'cannot be invisible. What would a tag say?' }, uniqueness: { message: 'It should be unique like jesus!' }
    
    def initialize(attributes = {}) #que shusha es esto ns?
        super(attributes)
    end
end
