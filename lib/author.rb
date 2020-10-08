class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end
    
    def posts
        Post.all.map{|post| if post.author == self then post end }
    end

    def add_post(post_instance)
        post_instance.author = self
    end

    def add_post_by_title(title)
        Post.new(title).author = self
    end

    def self.post_count
        Post.all.count
    end
end
