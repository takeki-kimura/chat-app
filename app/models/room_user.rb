class RoomUser < ApplicationRecord
  belong_to :room
  belong_to :user
end

  def change
    create_table :rooms_user do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestanps
    end
  end
end

class Room < ApplicationRecord
  has_many :rooms_users
  has_many :users, through: :rooms_users
end
