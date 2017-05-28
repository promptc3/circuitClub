class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
				belongs_to :team
  validates :roll ,presence: true,length: {maximum: 9,minimum: 9}
end
