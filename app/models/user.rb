class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validate :check_age
  mount_uploader :avatar, AvatarUploader

  has_many :posts

  def check_age
    # binding.pry
    if Time.now.year - self.birth_year < 18
      errors.add(:birth_year, "You should be at least 18 years of age. ")
    end
  end

  # enum status: %w(requested approve reject)
  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    if !approved?
      :not_approved
    else
      super # Use whatever other message
    end
  end
end
