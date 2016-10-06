require 'test_helper'

class GrandmaEnjoysMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grandma_enjoys_music = grandma_enjoys_musics(:one)
  end

  test "should get index" do
    get grandma_enjoys_musics_url
    assert_response :success
  end

  test "should get new" do
    get new_grandma_enjoys_music_url
    assert_response :success
  end

  test "should create grandma_enjoys_music" do
    assert_difference('GrandmaEnjoysMusic.count') do
      post grandma_enjoys_musics_url, params: { grandma_enjoys_music: { form: @grandma_enjoys_music.form, name: @grandma_enjoys_music.name } }
    end

    assert_redirected_to grandma_enjoys_music_url(GrandmaEnjoysMusic.last)
  end

  test "should show grandma_enjoys_music" do
    get grandma_enjoys_music_url(@grandma_enjoys_music)
    assert_response :success
  end

  test "should get edit" do
    get edit_grandma_enjoys_music_url(@grandma_enjoys_music)
    assert_response :success
  end

  test "should update grandma_enjoys_music" do
    patch grandma_enjoys_music_url(@grandma_enjoys_music), params: { grandma_enjoys_music: { form: @grandma_enjoys_music.form, name: @grandma_enjoys_music.name } }
    assert_redirected_to grandma_enjoys_music_url(@grandma_enjoys_music)
  end

  test "should destroy grandma_enjoys_music" do
    assert_difference('GrandmaEnjoysMusic.count', -1) do
      delete grandma_enjoys_music_url(@grandma_enjoys_music)
    end

    assert_redirected_to grandma_enjoys_musics_url
  end
end
