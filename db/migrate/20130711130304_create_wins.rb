class CreateWins < ActiveRecord::Migration
  def change
    create_table :wins do |t|
      t.boolean :deployed
      t.boolean :published
      t.boolean :open_sourced
      t.boolean :open_policy
      t.boolean :event_held
      t.boolean :municipal_partner
      t.boolean :funds
      t.string :deploy_url
      t.string :publish_url
      t.string :open_source_url
      t.string :open_policy_infos
      t.string :event_infos
      t.string :municipal_partner_infos
      
      t.text :story
      
      t.boolean :validated
      t.integer :location_id
      t.integer :deployed_application_id
      t.integer :brigade_id
      t.timestamps
    end
  end
end
