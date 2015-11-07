class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :value

      t.timestamps
    end
  end
end
