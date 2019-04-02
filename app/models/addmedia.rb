class AddMedia

  def addBook(title, genre, releaseDate, userID, mediaId, mediaType, author, publisher)
    tmpObj = Hash.new
    tmpObj["title"] = title
    tmpObj["genre"] = genre
    tmpObj["releasedate"] = releaseDate
    tmpObj["uid"] = userID
    tmpObj["mid"] = mediaId
    @mediaobject = Mediaobject.new(tmpObj)
    respond_to do |format|
      if @mediaobject.save
        format.html {redirect_to @mediaobject, notice: 'Mediaobject was successfully created.'}
        format.json {render :show, status: :created, location: @mediaobject}
      else
        format.html {render :new}
        format.json {render json: @mediaobject.errors, status: :unprocessable_entity}
      end
    end
  end
end