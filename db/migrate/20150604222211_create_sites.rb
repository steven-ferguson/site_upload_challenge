class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :domain
      t.integer :alexa_rank
      t.integer :google_rank
    end
  end
end
