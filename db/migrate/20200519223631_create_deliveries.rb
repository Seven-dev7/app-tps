class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
    	t.datetime 	:date
    	t.string	:first_adress
    	t.string	:type
    	t.string	:weight
    	t.string	:quantity
    	t.string	:first_hour
    	t.string	:second_adress
    	t.string	:second_hour
    	t.boolean	:succes
      t.timestamps
    end
  end
end
