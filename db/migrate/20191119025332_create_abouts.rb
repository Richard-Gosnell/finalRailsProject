class CreateAbouts < ActiveRecord::Migration[6.0]
  def change
    create_table :abouts do |t|
      t.string :about_us_text

      t.timestamps
    end
  end
end
