def shipping_cost(order)
  if order[:country] == "US"
    if order[:weight] > 10
      if order[:express]
        50
      else
        20
      end
    else
      if order[:express]
        25
      else
        5
      end
    end
  else
    if order[:weight] > 10
      if order[:express]
        100
      else
        40
      end
    else
      if order[:express]
        60
      else
        15
      end
    end
  end
end
