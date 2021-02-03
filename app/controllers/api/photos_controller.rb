class Api::PhotosController < ApplicationController

  def index
    @photos = HTTP
      .headers("Authorization" => Rails.application.credentials.pexels_api[:api_key]).get("https://api.pexels.com/v1
        ").parse
    render "index.json.jb"
  end
end
