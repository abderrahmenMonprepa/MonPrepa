require 'test_helper'

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get videos_url
    assert_response :success
  end

  test "should get new" do
    get new_video_url
    assert_response :success
  end

  test "should create video" do
    assert_difference('Video.count') do
      post videos_url, params: { video: { video_category: @video.video_category, video_course: @video.video_course, video_data: @video.video_data, video_key: @video.video_key, video_name: @video.video_name, video_section: @video.video_section, video_tags: @video.video_tags, video_type: @video.video_type, video_year: @video.video_year } }
    end

    assert_redirected_to video_url(Video.last)
  end

  test "should show video" do
    get video_url(@video)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_url(@video)
    assert_response :success
  end

  test "should update video" do
    patch video_url(@video), params: { video: { video_category: @video.video_category, video_course: @video.video_course, video_data: @video.video_data, video_key: @video.video_key, video_name: @video.video_name, video_section: @video.video_section, video_tags: @video.video_tags, video_type: @video.video_type, video_year: @video.video_year } }
    assert_redirected_to video_url(@video)
  end

  test "should destroy video" do
    assert_difference('Video.count', -1) do
      delete video_url(@video)
    end

    assert_redirected_to videos_url
  end
end
