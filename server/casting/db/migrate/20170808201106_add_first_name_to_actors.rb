class AddFirstNameToActors < ActiveRecord::Migration[5.1]
  def change
    add_column :actors, :first_name, :string
    add_column :actors,	:last_name, :string
    add_column :actors, :email, :string
    add_column :actors, :password, :string
    add_column :actors, :image_url, :string
    add_column :actors, :tel_no, :string
    add_column :actors, :street_address, :string
    add_column :actors, :city, :string
    add_column :actors, :state, :string
    add_column :actors, :zip_code, :string
    add_column :actors, :agent, :string
    add_column :actors, :union, :boolean
    add_column :actors, :ht_feet, :integer
    add_column :actors, :ht_inches, :integer
    add_column :actors, :weight, :integer
    add_column :actors, :eye_color, :string
    add_column :actors, :hair_color, :string
    add_column :actors, :shoe_size, :string
    add_column :actors, :gender, :string
    add_column :actors, :ethnicity, :string
    add_column :actors, :dob, :string
    add_column :actors, :suit_size, :string
    add_column :actors, :dress_size, :string
    add_column :actors, :shirt_size, :string
    add_column :actors, :waist, :integer
    add_column :actors, :inseam, :integer
  end
end
