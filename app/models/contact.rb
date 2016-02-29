class Contact < ActiveRecord::Base
    attr_accessor :name, :email, :message
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :name,    presence: true
    validates :email,   presence: true,
                        format: { with: VALID_EMAIL_REGEX }
end
