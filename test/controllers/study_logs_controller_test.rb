require "test_helper"

class StudyLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_log = study_logs(:one)
  end

  test "should get index" do
    get study_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_study_log_url
    assert_response :success
  end

  test "should create study_log" do
    assert_difference("StudyLog.count") do
      post study_logs_url, params: { study_log: { duration: @study_log.duration, ended_at: @study_log.ended_at, started_at: @study_log.started_at, task_id: @study_log.task_id } }
    end

    assert_redirected_to study_log_url(StudyLog.last)
  end

  test "should show study_log" do
    get study_log_url(@study_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_log_url(@study_log)
    assert_response :success
  end

  test "should update study_log" do
    patch study_log_url(@study_log), params: { study_log: { duration: @study_log.duration, ended_at: @study_log.ended_at, started_at: @study_log.started_at, task_id: @study_log.task_id } }
    assert_redirected_to study_log_url(@study_log)
  end

  test "should destroy study_log" do
    assert_difference("StudyLog.count", -1) do
      delete study_log_url(@study_log)
    end

    assert_redirected_to study_logs_url
  end
end
