class MyBlogsController < ApplicationController
  before_action :set_my_blog, only: [:show, :edit, :update, :destroy, :test]

  # GET /my_blogs
  # GET /my_blogs.json

  def test

    @test = MyBlog.where('title = ?', params[:title])
    respond_do |format|
      format.html
      format.json {render json: @test}
  end

  def index
    @my_blogs = MyBlog
    @total_count = MyBlog.all.size
    @my_blogs = @my_blogs.order('id desc').page(params[:page]).per(10)
  end

  # GET /my_blogs/1
  # GET /my_blogs/1.json
  def show
  end

  # GET /my_blogs/new
  def new
    @my_blog = MyBlog.new
  end

  # GET /my_blogs/1/edit
  def edit
  end

  # POST /my_blogs
  # POST /my_blogs.json
  def create
    @my_blog = MyBlog.new
      i = 1
    loop do
      if i > params[:mount].to_i
        break
      end
      @my_blog = MyBlog.create! title: params[:title], content: "#{(('A'..'Z').to_a + (0..9).to_a).shuffle[0,12].join}", created_at: Time.now, updated_at: Time.now
      i = i +1
    end

    if @my_blog.save
      redirect_to my_blogs_url, notice: '操作成功'
    else
      render :new
    end
  end

  # PATCH/PUT /my_blogs/1
  # PATCH/PUT /my_blogs/1.json
  def update
    respond_to do |format|
      if @my_blog.update(my_blog_params)
        format.html { redirect_to my_blogs_url, notice: 'My blog was successfully destroyed.' }

      #  format.html { redirect_to @my_blog, notice: 'My blog was successfully updated.' }
      #  format.json { render :show, status: :ok, location: @my_blog }
      #else
      #  format.html { render :edit }
      #  format.json { render json: @my_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_blogs/1
  # DELETE /my_blogs/1.json
  def destroy
    @my_blog.destroy
    respond_to do |format|
      format.html { redirect_to my_blogs_url, notice: 'My blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_blog
      @my_blog = MyBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_blog_params
      params.require(:my_blog).permit(:title, :content)
    end
end
