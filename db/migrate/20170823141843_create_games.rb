class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :username
      t.boolean :outcome
      t.timestamps
    end
  end
end
