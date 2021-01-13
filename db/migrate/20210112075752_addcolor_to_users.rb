class AddcolorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bg_color_id, :integer
  end
end
