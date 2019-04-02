class AddmediaController < ApplicationController
  attr_accessor :title, :genre, :releaseDate, :userID, :mediaId, :mediaType, :author, :publisher, :developer, :platform, :studio, :director

  def addmedia
    # Get params
    if params[:commit] == "Watched"
      watch
    end
    @title = params[:title]
    @genre = params[:genre]
    @releaseDate = params[:releaseDate]
    @userID = params[:userID]
    @mediaId = params[:mediaId]
    @mediaType = params[:mediaType]
    @platform = params[:platform]
    createMedia(@title, @genre, @releaseDate, @userID, @mediaId)
    if @mediaType == 'book'
      @author = params[:author]
      @publisher = params[:publisher]
      createBook(@author, @publisher, @mediaId)
    end
    if @mediaType == 'game'
      @publisher = params[:publisher]
      @developer = params[:developer]
      @platform = params[:platform]
      createGame(@developer, @publisher, @platform, @mediaId)
    end
    if @mediaType == 'movie'
      @director = params[:director]
      @studio = params[:studio]
      createMovie(@director, @studio, @mediaId)
    end
  end

  def createMovie(director, studio, mid)
    tmpObj = Hash.new
    tmpObj["director"] = director
    tmpObj["studio"] = studio
    tmpObj["mid"] = mid
    movieobject = Movieobject.new(tmpObj)
    if movieobject.save
      redirect_to :root
    end
  end

  def createGame(developer, publisher, platform, mid)
    tmpObj = Hash.new
    tmpObj["publisher"] = publisher
    tmpObj["developer"] = developer
    tmpObj["platform"] = platform
    tmpObj["mid"] = mid
    gameobject = Gameobject.new(tmpObj)
    if gameobject.save
      redirect_to :root
    end
  end

  def createBook(author, publisher, mid)
    tmpObj = Hash.new
    tmpObj["author"] = author
    tmpObj["publisher"] = publisher
    tmpObj["mid"] = mid
    bookobject = Bookobject.new(tmpObj)
    if bookobject.save
      redirect_to :root
    end
  end

  def createMedia(title, genre, releaseDate, userID, mediaId)
    tmpObj = Hash.new
    tmpObj["title"] = title
    tmpObj["genre"] = genre
    tmpObj["releasedate"] = releaseDate
    tmpObj["uid"] = userID
    tmpObj["mid"] = mediaId
    tmpObj["status"] = "unwatched"
    mediaobject = Mediaobject.new(tmpObj)
    mediaobject.save
  end

  def watch
    @objectToUpdate = Mediaobject.where(mid: params[:watchedId])
    tmpObj = Hash.new
    tmpObj["status"] = "watched"
    puts "stat" + tmpObj["status"]
    if @objectToUpdate.update(tmpObj)
      redirect_to :root
    end
  end
end

