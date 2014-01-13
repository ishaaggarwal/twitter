class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   has_many :follows
   has_many :tweets
  # Setup accessible (or protected) attributes for your model
  default_scope -> { order('created_at DESC') }
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body


end
