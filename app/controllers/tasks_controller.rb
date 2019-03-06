class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @all_task = Task.all
  end

  def create
    texts = params["nodes"]
    in_file = {:tasks => []}
    texts.each { |task| in_file[:tasks] << task.permit! }
    Task.destroy_all
    Task.create(in_file[:tasks])
  end

end
