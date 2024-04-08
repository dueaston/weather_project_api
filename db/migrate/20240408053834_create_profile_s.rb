class CreateProfileS < ActiveRecord::Migration[7.1]
  def change
    create_table :profile_s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
