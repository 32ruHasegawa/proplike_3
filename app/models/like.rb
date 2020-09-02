class Like < ApplicationRecord
  belongs_to :user
  belongs_to :prop

  validates_uniqueness_of :prop_id, scope: :user_id
end
