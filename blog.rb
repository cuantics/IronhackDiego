=begin
Every post has a title, a date and text. So it needs also the methods to get that information.
Blog: It has a container for all the posts. An array or something like that.
A blog should be able to create and show a front page through the methods create_front_page and publish_front_page, but feel free to use the methods your want.
At the end, the blog should be able to show every post in the following format:
=end


class Post
#we declare the variables
    def initialize title, date, text
      @title = title
      @date = date
      @text = text
    end
#we specify the titles
    def get_title
      @title
    end
#we specify the dates
    def get_date
      @date
    end
#we specify the dates
    def get_text
      @text
    end
end

class Blog
    def initialize post
      @posts = []
    end
    #we want to identify the title, date and text of posts
    def save_post post
      @posts.push post
    end
    # and now we want to push that info to collect it to an array
    def create_front_page
      puts @posts
    end
    # and now we want to say what kinf of content makes it to the front page
    def publish_front_page
    puts @post
    end
  end

    blog = Blog.new("post")

    post1 = Post.new("title1","date1","text1")
    blog.save_post post1

    post2 = Post.new("title2","date2","text2")
    blog.save_post post2

    post3 = Post.new("title3","date3","text3")
    blog.save_post post3

    blog.create_front_page
    # and now we want to print only titles
