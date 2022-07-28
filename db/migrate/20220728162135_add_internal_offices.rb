class AddInternalOffices < ActiveRecord::Migration[7.0]
  def up
    create_table :internal_offices, id: false do |t|
      t.string :id, null: false
      t.string :local_authority__c, null: false
      t.string :membership_number__c, null: false
      t.string :name, null: false
      t.string :billingstreet
      t.string :billingstate
      t.string :billingcity
      t.string :billingpostalcode
      t.decimal :billinglatitude, null: false
      t.decimal :billinglongitude, null: false
      t.string :website
      t.string :phone
      t.text :about_our_advice_search__c
      t.string :email__c
      t.text :access_details__c
      t.text :local_office_opening_hours_information__c
      t.text :telephone_advice_hours_information__c
      t.boolean :closed__c, null: false
      t.datetime :lastmodifieddate
      t.string :recordtypeid, null: false
    end
  end

  def down
    drop_table :internal_offices
  end
end
