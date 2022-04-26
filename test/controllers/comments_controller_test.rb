require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
    @comment = comments(:one)
  end

  test "should post comment" do
    post post_comments_url(post_id: @post.id, comment: { content: "Test comment" })
    assert_redirected_to post_url(id: @post.id)
  end
end
