class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name
      t.references :book, index: true, foreign_key: true
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
