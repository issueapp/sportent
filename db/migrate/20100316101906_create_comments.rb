class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text      :opinion
      t.integer   :story_id
      t.integer   :member_id
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
