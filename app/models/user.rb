class User < ApplicationRecord


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         number = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{7,100}+\z/i
         validates :password, presence: true , format: { with: number }
         validates :lastname, presence: true
         validates :firstname, presence: true
         validates :firstname_kana, presence: true
         validates :lastname_kana, presence: true
         validates :birthday, presence: true
end