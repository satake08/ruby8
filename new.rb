# インスタンスメソッド
class Car

  def move(direction, distance)
    self.turn(direction)  #レシーバのself  「.」の前がレシーバ        #car.turn(direction)こちらと同じ意味
    self.run(distance)   #レシーバのself   今回は「self」がレシーバ   #car.run(distance)こちらと同じ意味
  end


  def turn(direction)                 #turn　(曲がる)
    puts "#{direction}に曲がります。"#direction (方向) #directionに「右」を挿入
  end

  def run(distance)                      #run(走る)
    puts "車で#{distance}キロ走ります。" #distance(スピード) #distanceに「5」を挿入
  end
end

car = Car.new     #1-4までのものを２行でできる   #1car = Car.new  #new インスタンスを作成
car.move("右", 5) #car=selfのため            #2car.turn("右")  #turnとついてるところに「右」とつく↑

                                                 #3car = Car.new
                                                 #4car.run(5)  #runとついてるところに「5」とつく↑

#「car = Car.new」というように、新しいインスタンスを作成し、変数をcarと設定。
#「car.run(5)」で、メソッドを呼び出します。


# クラスメソッド
class Car
  def self.run(distance)  #selfはクラス自身のことを示してる  #self.runは、Car.runを表してる
    puts "車で#{distance}キロ走ります。"
  end
end

Car.run(10)

#「Car.new」というように、新しいインスタンスを作成しません。
#「Car.run」で、Carクラスからそのまま呼び出します。

#この2つには、どこから呼び出しているのかに違いがある