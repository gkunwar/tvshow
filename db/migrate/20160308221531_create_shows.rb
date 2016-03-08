class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :name, null: false
      t.text :note
      t.datetime :schedule, null: false
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
