class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name, default: "CasaPlanta Miami Blog"

      t.timestamps null: false
    end
  end
end
