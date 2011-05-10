class<<Golf={}
  def hole1 a
    a.inject(1){|b,c|b*c}
  end

  def hole2 a
    a.split.sort_by{|w|w[1,1]}*" "
  end

  def hole3 a
    hole1 2..a
  end

  def hole4 a
    a.map{ |b|
      b =~ /man/ ? "hat(#{b})" : (b =~ /cat(.*)/ ? "dead#{$1}" : (b[")"] = "(bone))"
      b))
    }
  end

  def hole5 a
    c=a.length
    (0...c).map{|b|
      (1..c-b).map{|d|
        a[b,d]
      }
    }.flatten(1).sort_by{|x|[x.length,x]}
  end

  def hole6 a
    (1..a).map{|b|
      c = [b%3<1?:fizz: "",b%5<1?:buzz: ""]*""
      c == "" ? b : c
    }
  end

  def hole7 a
    a.inject([]){|b,c|
      (b[-1]||[])[-1] == (c-1) ? b[-1] << c : b << [c]
      b
    }.map{|x|[x[0],x[-1]].uniq*"-"}
  end

  def hole8 a
    (1...a).inject([1]){|b,c| b << b[-1]+(b[-2]||0) }
  end

  def hole9 a
    b = File.read(a).split(/\n/).map{|b|b.split(/, /)}
    loop{
      e = b.inject({}){|h,c|d=c[0] or next
        h[d]||=0
        h[d]+=1
        h
      }.sort_by{|_,x|x}
      f = e.inject(0){|x,(y,z)|x+z}/2
      return e[-1][0] if f <= e[-1][1]
      b.map!{|x|x-[e[0][0]]}
    }
  end
end
