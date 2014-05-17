class CreateForumForums < ActiveRecord::Migration
  def change
    create_table :forum_forums do |t|
      t.integer :parent_forum_id
      t.string :name
      t.integer :pos
      t.integer :moderator

      t.timestamps
    end
  end
end
