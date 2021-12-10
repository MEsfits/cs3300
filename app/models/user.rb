class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def owner?
    email == 'kalmathk@cs.com'
  end
end
