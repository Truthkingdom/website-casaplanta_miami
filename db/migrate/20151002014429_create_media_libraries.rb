class CreateMediaLibraries < ActiveRecord::Migration
  def change
    create_table :media_libraries do |t|
      t.string :name, default: "CasaPlanta Miami Media"

      t.timestamps null: false
    end
  end
end
