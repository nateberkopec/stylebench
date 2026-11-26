def order_stats(orders)
  total = 0
  refunded_count = 0
  by_status = {}
  largest = nil
  i = 0
  while i < orders.length
    order = orders[i]
    if order[:status] == "refunded"
      refunded_count += 1
    else
      total += order[:amount]
    end
    if by_status[order[:status]].nil?
      by_status[order[:status]] = 0
    end
    by_status[order[:status]] += 1
    if largest.nil? || order[:amount] > largest[:amount]
      largest = order
    end
    i += 1
  end
  { total: total, refunded_count: refunded_count, by_status: by_status, largest: largest }
end
