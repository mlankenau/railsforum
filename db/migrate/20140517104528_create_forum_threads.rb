class CreateForumThreads < ActiveRecord::Migration
  def change
    create_table :forum_threads do |t|
      t.integer :creator
      t.string :subject
      t.integer :forum_id

      t.timestamps
    end
  end
end
