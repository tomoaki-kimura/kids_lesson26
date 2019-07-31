require 'sinatra'

get '/' do
  if params[:first].to_i > 0 && params[:second].to_i >= params[:first].to_i
    # ここにコードを入力してください。
    day1 = params[:first].to_i
    day2 = params[:second].to_i
    goal = 100000
    rate = day2 - day1
    sum = day1
    count = 0
    @status = []

    loop do
      sum = (day1 + rate * count)
      count += 1
      @status << [count, sum]
      break if sum >= goal
    end
    # ここまでコードを入力して下さい。
  end
  erb :index
end

# Lesson3変数を使ってプログラミング