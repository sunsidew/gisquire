class IssueController < ApplicationController
  before_action :login_check, :client_init
  
  helper_method :label_list

  # user information check from whitelist model db
  def login_check
    if current_user
      unless Whitelist.exists?(domain: current_user.email.match(/@.*/).to_s)
        redirect_to('/not_allow')
      end
    else
      redirect_to('/')
    end
  end

  # client remove duplicates
  def client_init
    $client ||= Octokit::Client.new(access_token: ENV['OCTOKIT_TOKEN'])
  end

  # make one string from multi labels name
  def label_list(add_label)
    if params[:labels].present?
      if params[:labels].include? add_label
        return params[:labels]
      else
        return (params[:labels]+",#{add_label}")
      end
    else
      return add_label
    end
  end

  def index
    client = $client

    @issues = client.list_issues(ENV['OCTOKIT_TARGET_REPO'], params)
    
    @milestones = client.list_milestones(ENV['OCTOKIT_TARGET_REPO'])
    @labels = client.labels(ENV['OCTOKIT_TARGET_REPO'])
    @assignees = client.repo_assignees(ENV['OCTOKIT_TARGET_REPO'])
  end

  def show
    client = $client

    id = params[:id]
    @issue = client.issue(ENV['OCTOKIT_TARGET_REPO'], id)
    @comments = client.issue_comments(ENV['OCTOKIT_TARGET_REPO'], id)
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
