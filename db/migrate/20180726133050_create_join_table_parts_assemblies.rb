class CreateJoinTablePartsAssemblies < ActiveRecord::Migration[5.2]
  def change
    create_join_table :parts, :assemblies do |t|
      t.index [:user_id, :forum_id]
      t.index [:forum_id, :user_id]
    end
  end
end
