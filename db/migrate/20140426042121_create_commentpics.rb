class CreateCommentpics < ActiveRecord::Migration
  def change
    create_table :commentpics do |t|
      t.string :commenter
      t.text :body
      t.references :picture, index: true

      t.timestamps
    end
  end
end
