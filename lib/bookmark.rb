require 'pg'

class Bookmark

  def self.all
    if ENV['RACK_ENV'] == "test"
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end
    connection.exec("SELECT url, title FROM bookmarks")
  end

  def self.create(url:)
    if ENV['RACK_ENV'] == "test"
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end

end
