class CreateSheep < ActiveRecord::Migration[6.1]
  def change
    create_table :sheep do |t|
      t.string :body

      t.timestamps
    end
  end
end
