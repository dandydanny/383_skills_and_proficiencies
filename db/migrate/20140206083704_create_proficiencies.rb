class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :experience
      t.boolean :education

      t.timestamps
    end
  end
end
