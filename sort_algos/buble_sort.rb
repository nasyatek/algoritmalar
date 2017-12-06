# En iyi,       ortalama,        en kötü     stabilite
# n.log(n)      n.log(n)           n^2         Evet
class BubleSort
end

@arr = [13, 6, 2, 67, 28, 33, 41, 17, 9, 3, 11, 72]
#@arr = [12,11,10,9,8,7,6,5,4,3,2,1]

def order_me
  (@arr.length-1).times do |i|
    puts " Adım  #{i} Eleman: #{@arr[i]} Eleman: #{@arr[i+1]}"
    if @arr[i] > @arr[i+1]
      puts "ok"
      tmp=@arr[i]
      @arr[i]=@arr[i+1]
      @arr[i+1]=tmp
      puts " IF   #{i} Eleman 1: #{@arr[i]} Eleman 2: #{@arr[i+1]}"
    end
  end
end




(@arr.length-1).times {
  order_me
}
puts "Dizi : #{@arr.to_s}"