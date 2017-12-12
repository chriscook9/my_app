class BlogsController < ApplicationController
before_action :set_blog, only: [:show, :edit, :update, :destroy]


	def index
    	@blogs = Blog.all
 	end

 	def show
    	@page_title = @blog_title
    	@seo_keywords = @blog.body
    end

 	def new
    	@blog = Blog.new
  	end

 	def edit
  	end
  
    def create
    	@blog = Blog.new(blog_params)
	end

    def destroy
    	@blog.destroy
        respond_to do |format|
        	format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
    	end
    end
  
  
	def update
        respond_to do |format|
        @blog.update(blog_params) 
        end 
    end
end
