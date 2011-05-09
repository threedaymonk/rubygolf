class<<Golf={}
  def hole1 a
    a.inject(1){|b,c|b*c}
  end

  def hole2 a
    a.split.sort_by{|w|w[1,1]}*" "
  end

  def hole3 a
    (2..a).inject(1){|b,c|b*c}
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
end
