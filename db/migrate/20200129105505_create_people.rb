class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :gender
      t.string :age
      t.string :height
      t.string :body
      t.string :hair

      t.timestamps
    end
  end
end
