class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :timeoutable

  validates_presence_of :first_name, :last_name, :title, :phone_number
end
