class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Be sure to add migrations accordingly
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  ROLES = %w[admin entrepreneur tutor student guest]
  SELECTABLE_ROLES = %w[entrepreneur tutor student]
end
