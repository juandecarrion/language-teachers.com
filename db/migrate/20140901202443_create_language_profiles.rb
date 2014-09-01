class CreateLanguageProfiles < ActiveRecord::Migration
  def change
    create_table :language_profiles do |t|
      t.string :language
      t.text :body
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
