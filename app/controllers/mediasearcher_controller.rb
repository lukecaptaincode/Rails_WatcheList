require 'MediaScraper'
class MediasearcherController < ApplicationController
  attr_accessor :title
  attr_accessor :searchType
  def search
    @searchTerm = params[:title]
    @searchType = params[:searchType]
    @mediaScraper = MediaScraper.new('uBsQ2dayZV3Tjw5sSnHTXQ', '0557cace70749b747ffe9c03753bebd5', 'a45aea5e')
    if @searchType == 'movie'
      @returnValue = @mediaScraper.get_movie_info(@searchTerm)
    elsif @searchType == 'game'
      @returnValue = @mediaScraper.get_game_info(@searchTerm).encode('utf-8', :invalid => :replace, :undef => :replace, :replace => '_')
    elsif @searchType == 'book'
      @returnValue = @mediaScraper.get_book_info(@searchTerm)
    end
    respond_to do |format|
      format.html
      format.xml
      format.js
    end
  end
end
