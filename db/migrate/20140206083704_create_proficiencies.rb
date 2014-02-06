class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      # t.belongs_to is an important
      # part of a join table
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :experience
      t.boolean :education
      t.timestamps
    end
  end
end
