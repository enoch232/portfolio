class AddMadeofToProject < ActiveRecord::Migration
  def change
    add_column :projects, :madeof, :string
  end
end
