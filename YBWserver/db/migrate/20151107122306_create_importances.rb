class CreateImportances < ActiveRecord::Migration
  def change
    create_table :importances do |t|
      t.string :value

      t.timestamps
    end
  end
end
