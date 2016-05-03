class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.references :user, index: true, foreign_key: true
      t.references :interest_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
