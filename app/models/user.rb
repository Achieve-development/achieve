class User < ActiveRecord::Base
  has_many :blogs, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

  mount_uploader :image, ImageUploader

  # validates :name, presence: true, length: { maximum: 50 }

  def self.create_unique_string
    SecureRandom.uuid
  end

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

  def self.find_for_facebook_oauth(auth, _signed_in_resource = nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first

    unless user
      user = User.new(
        name: auth.extra.raw_info.name,
        provider: auth.provider,
        uid: auth.uid,
        email: auth.info.email || User.create_unique_email,
        password: Devise.friendly_token[0, 20]
      )
      user.skip_confirmation! # メールアドレスによる本人確認をスキップする
      user.save
    end
    user
  end

  def self.find_for_twitter_oauth(auth, _signed_in_resource = nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first

    unless user
      user = User.new(
        name: auth.info.nickname,
        provider: auth.provider,
        uid: auth.uid,
        email: User.create_unique_email,
        password: Devise.friendly_token[0, 20]
      )
      user.skip_confirmation! # メールアドレスによる本人確認をスキップする
      user.save
      
    end
    user
  end

  private

  def self.create_unique_email
    User.create_unique_string + '@example.com'
  end
end
