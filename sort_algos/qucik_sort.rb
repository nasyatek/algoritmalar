# QuickSort algoritması
# Pivot  nokta alınır, dizi iki alt diziye bölünür,
# Pivot noktasından büyük olanlar üst diziye küçük olanlar alt diziye atılır.
# Daha sonra aynı algoritma recursif olarak çağrılır.
# Hızlı sıralama algoritmasının zaman karmaşıklığı 0(nlog2n) en kötü durumda ise O(n2) olur.
# Worst case: O(n2) # Avarage case: O(nlogn)

class QucikSort
  @arr = [13, 6, 2, 67, 28, 33, 41, 17, 9, 3, 11, 72]

  def quick_sort

    # i,j index numaraları
    i=0 ;   j=@arr.length-1
    pivot=@arr[(i+j)/2]
    puts pivot

    while i<=j
      while @arr[i]<pivot
        i=i+1
      end
      while @arr[j]>pivot
        j=j-1
      end
      if i<=j
        temp=@arr[i]
        @arr[i]=@arr[j]
        @arr[j]=temp
        i=i+1
        j=j-1
      end
    end
    puts @arr.to_s
    quick_sort
  end
end

qs=QucikSort.new
qs.quick_sort