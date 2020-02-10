class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.references :person, foreign_key: true
      t.string     :chara,  null: false
      t.timestamps
    end
  end
end
