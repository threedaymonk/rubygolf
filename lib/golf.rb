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
      case b
      when /man/
        "hat(#{b})"
      when /cat(.*)/
        "dead#{$1}"
      else
        b[")"] = "(bone))"
        b
      end
    }
  end

  def hole5 a
    c=a.length
    (0...c).map{|b|
      (1..(c-b)).map{|d|
        a[b,d]
      }
    }.flatten(1).sort_by{|x|[x.length,x]}
  end

  def hole6 a
    (1..a).map{|b|
      c = [b%3==0&&:fizz,b%5==0&&:buzz].reject{|x|!x}*""
      c == "" ? b : c
    }
  end

  def hole7 a
    a.inject([[]]){|b,c|
      (b[-1][-1] == (c-1)) ? b[-1] << c : b << [c]
      b
    }[1..-1].map{|x|[x[0],x[-1]].uniq*"-"}
  end

  def hole8 a
    (1...a).inject([0, 1]){|b,c| b << b[-1]+b[-2] }[1..-1]
  end
end
