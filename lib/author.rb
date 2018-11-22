class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @titles = []
  end

  def add_post(title)
      @titles << title
      title.author = self
  end

  def add_post_by_title(title_name)
    title = Post.new(title_name)
    @titles << title
    title.author = self
  end

  def posts
    @titles
  end

  def self.post_count
    Song.all.count
  end
end
