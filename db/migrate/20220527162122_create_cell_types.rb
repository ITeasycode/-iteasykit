class CreateCellTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :cell_types do |t|
      t.string :machine_name
      t.string :type_model
      t.boolean :public
      t.boolean :active
      t.boolean :sortable
      t.boolean :removable
      t.boolean :commentable

      t.timestamps
    end
  end
end
