module ApplicationHelper
  def straight_flush(suits, numbers)
    count = Hash.new(0)
    suits.each { | v | count.store(v, count[v]+1) }
    numbers = numbers.sort_by(&:to_i)

    result1 = numbers[4].to_i - numbers[3].to_i
    result2 = numbers[3].to_i - numbers[2].to_i
    result3 = numbers[2].to_i - numbers[1].to_i
    result4 = numbers[1].to_i - numbers[0].to_i

    if count.first[1] == 5
      if result1.equal?(1) && result2.equal?(1) && result3.equal?(1) && result4.equal?(1)
        result = true
      else
        result = false
      end
    else
      result = false
    end

    return result
  end

  def four_of_a_kind(numbers)
    count = Hash.new(0)
    numbers.each { | v | count.store(v, count[v]+1) }
    count = count.values.sort

    if count[1].equal?(4)
      result = true
    else
      result = false
    end

    return result
  end

  def full_house(numbers)
    count = Hash.new(0)
    numbers.each { | v | count.store(v, count[v]+1) }
    count = count.values.sort
    if count[0].equal?(2) && count[1].equal?(3)
      result = true
    else
      result = false
    end
    return result
  end

  def flush(suits)
    count = Hash.new(0)
    suits.each { | v | count.store(v, count[v]+1) }

    if count.first[1].equal?(5)
      result = true
    else
      result = false
    end

    return result
  end
  
  def straight(numbers)
    numbers = numbers.sort_by(&:to_i)

    result1 = numbers[4].to_i - numbers[3].to_i
    result2 = numbers[3].to_i - numbers[2].to_i
    result3 = numbers[2].to_i - numbers[1].to_i
    result4 = numbers[1].to_i - numbers[0].to_i

    if result1.equal?(1) && result2.equal?(1) && result3.equal?(1) && result4.equal?(1)
      result = true
    else
      result = false
    end

    return result
  end

  def three_of_a_kind(numbers)
    count = Hash.new(0)
    numbers.each { | v | count.store(v, count[v]+1) }
    count = count.values.sort.reverse

    if count[0].equal?(3)
      result = true
    else
      result = false
    end

    return result
  end

  def two_pair(numbers)
    count = Hash.new(0)
    numbers.each { | v | count.store(v, count[v]+1) }
    count = count.values.sort.reverse

    if count[0].equal?(2) && count[1].equal?(2)
      result = true
    else
      result = false
    end

    return result
  end

  def one_pair(numbers)
    count = Hash.new(0)
    numbers.each { | v | count.store(v, count[v]+1) }
    count = count.values.sort.reverse

    if count[0].equal?(2)
      result = true
    else
      result = false
    end

    return result
  end
end