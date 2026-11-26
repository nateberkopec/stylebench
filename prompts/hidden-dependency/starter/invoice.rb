class TaxTable
  RATES = {
    "CA" => { food: 0.0, clothing: 0.0725, electronics: 0.0725 },
    "NY" => { food: 0.0, clothing: 0.04, electronics: 0.08875 }
  }

  def initialize(state)
    @state = state
  end

  def rate_for(item)
    RATES.fetch(@state).fetch(item[:category])
  end
end

class Invoice
  def initialize(items, state)
    @items = items
    @state = state
  end

  def total
    @items.sum do |item|
      rate = TaxTable.new(@state).rate_for(item)
      item[:price] * item[:quantity] * (1 + rate)
    end
  end
end
