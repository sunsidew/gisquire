class IssueController < ApplicationController
  before_action :login_check

  def login_check
    if current_user
      unless Whitelist.exists?(domain: current_user.email.match(/@.*/).to_s)
        redirect_to('/not_allow')
      end
    else
      redirect_to('/')
    end
  end

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
