class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @all_task = Task.all
  end

  def create
    texts = params["nodes"]
    in_file = {:tasks => []}
    texts.each { |task| in_file[:tasks] << task.permit! }
    Task.create(in_file[:tasks])
  end

  def update
    field = Task.find_by(text: params["nodes"].first["text"])
    field.update(done: params["nodes"].first["done"])
  end

  def destroy
    field = Task.find_by(text: params["nodes"].first["text"])
    field.destroy
  end

end
