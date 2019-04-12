class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :confirmable, :recoverable, :rememberable, :validatable
  
    has_one :profile, dependent: :destroy, autosave: true
    accepts_nested_attributes_for :profile
  # after_create :send_admin_mail

    protected
    def password_required?
      confirmed? ? super : false
    end

end
