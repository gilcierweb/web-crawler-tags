class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.text :h1
      t.text :h2
      t.text :h3
      t.text :h4
      t.text :h5
      t.text :h6
      t.text :link
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
