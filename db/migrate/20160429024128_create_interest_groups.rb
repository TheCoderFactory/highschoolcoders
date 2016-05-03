class CreateInterestGroups < ActiveRecord::Migration
  def change
    create_table :interest_groups do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
