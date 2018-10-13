class List < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 15}}
  validates :user_id, {presence: true}
  
  def user
    return User.find_by(id: self.user_id)
  end
end
