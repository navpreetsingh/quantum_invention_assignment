class JoinTableLinkUser < ActiveRecord::Migration
  def change
    create_join_table :links, :users do |t|
      t.index [:link_id, :user_id]
      t.index [:user_id, :link_id]
    end
  end
end
