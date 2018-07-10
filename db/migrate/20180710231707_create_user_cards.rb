class CreateUserCards < ActiveRecord::Migration[5.2]
  def change
    create_table :user_cards do |t|
      t.integer :user_id
      t.integer :card_id
      t.string :condition
      t.date :date_acquired
      t.timestamps
    end
  end
end
