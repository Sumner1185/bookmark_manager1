require 'pg'

class Bookmark

  def self.all

    @bookmarks = []

    begin

      con = PG.connect :dbname => 'bookmark_manager', :user => 'Student'

      rs = con.exec "SELECT * FROM bookmarks"

      rs.each do |row|
        @bookmarks.push(row['url'])
      end

    end
    @bookmarks
  end

end
