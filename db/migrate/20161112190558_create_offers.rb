class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :hotelname
      t.text :hotelchain
      t.text :hotelcity
      t.text :hotelstate
      t.text :promocode
      t.text :offerurl
      t.text :offertext
      t.text :roomcategory
      t.date :offerbegindate
      t.date :offerenddate
      t.date :travelbegindate
      t.date :travelenddate
      t.text :dealphotourl
      t.text :offerdetails

      t.timestamps null: false
    end
  end
end
