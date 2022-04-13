class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :coutry
      t.string :state

      t.timestamps
    end
  end
end
