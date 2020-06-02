require 'pg'

class Bookmark

  def self.all
    if ENV[ENVIRONMENT] == "test"
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end
    rs = connection.exec "SELECT url FROM bookmarks"
  end

end
