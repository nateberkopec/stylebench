Country = Struct.new(:code, :name)
Address = Struct.new(:lines, :city, :postal_code, :country)
Customer = Struct.new(:name, :address)
Order = Struct.new(:number, :customer)

class ShippingLabel
  def initialize(order)
    @order = order
  end

  def to_s
    [
      @order.customer.name,
      *@order.customer.address.lines,
      "#{@order.customer.address.city}, #{@order.customer.address.postal_code}",
      @order.customer.address.country.name.upcase
    ].join("\n")
  end

  def international?
    @order.customer.address.country.code != "US"
  end
end
