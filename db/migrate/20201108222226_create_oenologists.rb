class CreateOenologists < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.string :nationality
      t.integer :age

      t.timestamps
    end
  end
end
