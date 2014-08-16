class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.text :content
      t.integer :status
      t.integer :read_count
      t.integer :thanks_count
      t.references :user, index: true

      t.timestamps
    end
  end
end
