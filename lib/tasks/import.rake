require 'csv'
namespace :import do
  desc "Import influencers from file"
  task influencer: :environment do
    CSV.foreach('/Users/vickieguerrero/projects/rails_influencer_app/influencers-to-ingest.csv', headers: true) do |row|
      Influencer.create(:handle => row["Handle"], :follower_count => row["Followers"], :external_created_at => row["CreatedAt"])
    end
  end
end
