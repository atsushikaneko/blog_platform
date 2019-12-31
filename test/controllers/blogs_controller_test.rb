require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @blog = blogs(:blog1)
  end

   #ブログ投稿画面は表示するか
   test "should get new" do
    get signup_path
    assert_response :success
  end

  #ブログ編集画面は表示するか
  test "should get edit" do
    get edit_blog_path @blog
    assert_response :success
  end

  #ブログ一覧画面は表示するか
  test "should get index" do
    get blogs_path
    assert_response :success
  end

  #ブログ詳細画面は表示するか
  test "should get show" do
    get blog_path @blog
    assert_response :success
  end

end
