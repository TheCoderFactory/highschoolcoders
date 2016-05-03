class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :owned_groups, class_name: 'InterestGroup'
  has_many :group_members
  has_many :interest_groups, through: :group_members
end
