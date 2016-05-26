class CreateMyBoices < ActiveRecord::Migration
  def change
    create_table :my_boices do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
