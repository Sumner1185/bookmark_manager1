require 'pg'

class Bookmark

  def self.all
      connection = PG.connect :dbname => 'bookmark_manager'
      rs = connection.exec "SELECT url FROM bookmarks"
      end
    end
  end

end
