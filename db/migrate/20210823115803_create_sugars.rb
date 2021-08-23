class CreateSugars < ActiveRecord::Migration[6.1]
  def change
    create_table :sugars do |t|
      t.string :body

      t.timestamps
    end
  end
end
