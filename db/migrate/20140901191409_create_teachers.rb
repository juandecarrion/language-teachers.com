class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
