class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.belongs_to :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
