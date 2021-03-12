class CreateSaveArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :save_articles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
