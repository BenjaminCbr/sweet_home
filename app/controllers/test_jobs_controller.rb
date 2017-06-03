class TestJobsController < ApplicationController
  def create
    TestJob.perform_later
  end
end
