class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.boolean :found, default: false
      t.string :address

      t.timestamps
    end
  end
end
