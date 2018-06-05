class User < ApplicationRecord
  
  # User can votes documents and videos
  acts_as_voter

  # Devise for authentication
  # Include default devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable, :lockable, 
         :timeoutable , :omniauthable , 
         :omniauth_providers => [:facebook] 
         # :session_limitable

  # User model has many administrators
  has_many :administrators , dependent: :destroy
  
  # User can consult videos,
  # so, we have to save history
  has_many :video_histories
  has_many :videos , :through => :video_histories

  # User can consult documents,
  # so, we have to save history
  has_many :document_histories
  has_many :documents , :through => :document_histories

  has_many :document_favoris , dependent: :destroy

  # User can add many comments
  has_many :comments

  # User belongs to Instit
  belongs_to :institute

  # Avatr image for user with Paperclip
  has_attached_file :avatar, styles: { medium: "300x300", thumb: "100x100" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


  # Validation rules
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :password, presence: true
  validates :section, presence: true
  validates :school_year, presence: true
  validates :cin_number, presence: true 
  validates :phone_number, presence: true , length: {is: 8}
  validates :institute_id, presence: true

  # Override devise new session for facebook authetication
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  # Authentication with omniauth devise
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end

  

end
