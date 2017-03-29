class User < ApplicationRecord
	has_many :posts
	has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise_for :users, controllers: {registration: "users/registrations"}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:basic, :admin, :guest], default: {role: 0}
end
