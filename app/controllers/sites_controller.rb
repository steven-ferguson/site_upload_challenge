class SitesController < ApplicationController

  def create
    params[:domains].each do |domain|
      Site.create(domain: domain.to_s)
    end
    
    head 201
  end
end
