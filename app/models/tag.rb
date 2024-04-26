class Tag < ApplicationRecord
    """
    has_many :post_tags, dependent: destroy
    has_many :posts, throught: :post_tags
    belongs_to_many :posts
    """

    has_and_belongs_to_many :posts #solo con este funciona para 1 y 2 SOLO ESTA LINEA, pero falla 3


    # Validations
    validates :name, presence: { message: 'cannot be invisible. What would a tag say?' }, uniqueness: { message: 'It should be unique like jesus!' }
    
    def initialize(attributes = {}) #que shusha es esto ns?
        super(attributes)
    end
end
