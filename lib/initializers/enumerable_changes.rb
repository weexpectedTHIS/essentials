module Enumerable
  # Sorts all items in this enumerable first
  # by non-digits and then by digits.
  #
  # If a block is given, it will be invoked
  # to calculate the basis for comparison.
  # Otherwise, the items themselves will be
  # used as the basis for comparison.
  #
  def smart_sort # :yields: item
    sort_by do |item|
      basis =
        if block_given?
          yield item
        else
          item
        end.to_s

      alpha = basis[/\D+/].to_s
      digit = basis[/\d+/].to_i

      [alpha, digit]
    end
  end

  def dups
    tmp_dups = inject({}){|h,v| h[v]=h[v].to_i+1; h}.select{|k,v| v > 1}
    tmp_dups.is_a?(Hash) ? tmp_dups.keys : tmp_dups
  end
end
