class CreateInfluencers < ActiveRecord::Migration[5.1]
  def change
    create_table :influencers do |t|
      t.integer :influencer_id
      t.string :handle
      t.integer :follower_count
      t.datetime :external_created_at
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
