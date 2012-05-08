class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :title
      t.text :story

      t.timestamps
    end
  end
end
