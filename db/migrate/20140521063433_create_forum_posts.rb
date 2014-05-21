class CreateForumPosts < ActiveRecord::Migration
  def change
    create_table :forum_posts do |t|
      t.integer :thread_id
      t.string :subject
      t.text :body
      t.integer :author

      t.timestamps
    end
  end
end
