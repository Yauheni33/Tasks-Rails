class TaskController < ApplicationController
  
  def index
    
    puts "ВОТ ОНИ СУКА #{params}"
    if params[:nodes]
      file = File.new("out.json", "w")
      texts = JSON.parse(params["nodes"])
      in_file = {:tasks => []}
      texts.each { |task| in_file[:tasks] << task }
      file.puts in_file.to_json
      file.close
    end

    file = File.new("out.json", "r")
    @all_task = JSON.parse(file.read())
    file.close


    #texts = texts.select { |element| element.chomp('×') } if texts
  end

end
