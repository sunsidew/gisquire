class IssueController < ApplicationController
  def index
    client = Octokit::Client.new(access_token: ENV['OCTOKIT_TOKEN'])
    @issues = client.list_issues(ENV['OCTOKIT_TARGET_REPO'])#, state: "closed")
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end
end
