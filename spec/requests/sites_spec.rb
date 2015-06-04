require "rails_helper"

RSpec.describe "POST /sites" do
  it "creates a site for each domain" do
    xhr :post, "/sites", domains: ["google.com", "yahoo.com"]

    expect(response.code).to eq "201"
    expect(Site.all.pluck(:domain)).to match_array ["google.com", "yahoo.com"]
  end
end
