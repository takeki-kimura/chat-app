class Room < ApplicationRecord
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.timestanps
    end
  end
end
