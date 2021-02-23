class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.string :title
      t.string :type
      t.references :course

      t.timestamps
    end
  end
end
