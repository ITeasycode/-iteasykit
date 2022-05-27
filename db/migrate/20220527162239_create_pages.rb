class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :machine_name
      t.references :cell_type, null: false, foreign_key: true
      t.boolean :public
      t.boolean :active
      t.boolean :removable

      t.timestamps
    end
  end
end
