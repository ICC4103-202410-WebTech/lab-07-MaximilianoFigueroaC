class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :post_tags, through: :posts
    has_many :tags, through: :post_tags

    validates :name, presence: { message: 'How you dont have a name? give me your name'}
    validates :email, presence: { message: 'What! is 2024, how you dont have an email'}, uniqueness: { message: 'Is alredy taken, try with another one'}, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'FORMAT NOT VALID!' }
    validates :password, presence: { message: 'You need to protect your information! create a password'}, length: { minimum: 6, message: 'I must be at least 6 characters!' }

    before_save :downcase_email

    private

    def downcase_email
        self.email.downcase!

    end
end