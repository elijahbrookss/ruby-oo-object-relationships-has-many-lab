class Post
    @@all = []

    attr_accessor :author
    attr_reader :title

    def initialize(post_name)
        @title = post_name

        @@all << self
    end

    def author_name
        if @author then return @author.name end
        nil
    end


    def self.all
        @@all
    end
end
