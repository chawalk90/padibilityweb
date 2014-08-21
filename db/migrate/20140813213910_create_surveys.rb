class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
    t.string :first_name
			t.string :last_name
			t.boolean :user_status
			t.string :email
			t.boolean :loooking_for
			t.string :moving_to
			t.boolean :gender
			t.boolean :coed
			t.integer :age
			t.string :roommate_type #or Boolean
			t.string :housing_type #or Boolean?
			t.integer :roommates_estimate
			t.integer :roommates_amount
			t.boolean :roommates_group
			t.string :roommates_names
			t.integer :wake_up
			t.integer :bedtime
			t.integer :max_rent
			t.integer :min_rent
			t.integer :move_in
			t.integer :move_out
			t.integer :bedrooms
			t.boolean :amenities
			t.boolean :apartment_pet
			t.boolean :roommate_pet
			t.string :hometown
			t.string :school
			t.string :company
			t.boolean :terms
			t.string :avatar
			t.boolean :smoke
			t.string :smokeoften
			t.boolean :smokesocially
			t.boolean :smokequit
			t.boolean :drink
			t.string :drinkoften
			t.boolean :drinksocially
			t.boolean :drinkquit
			t.boolean :drugs
			t.string :drugsoften
			t.boolean :drugssocially
			t.boolean :drugsquit
			t.string :interest
			t.string :sexualactivity
			t.boolean :sexprivacy
			t.boolean :roommatesexprivacy
			t.boolean :overnight
			t.string :overnightoften
			t.boolean :roommateovernight
			t.string :realty
			t.boolean :availability
			t.integer :rentprice
			t.string :address
			t.string :otherroom
			t.integer :age_min
			t.integer :age_max
			t.integer :age_mode
			t.string :pad_photo
      t.timestamps
    end
  end
end
