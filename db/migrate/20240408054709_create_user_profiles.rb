class CreateUserProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
