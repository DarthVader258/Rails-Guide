class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :keyword
      t.boolean :is_premium, default: false
      t.text :answer

      t.timestamps
    end
  end
end
