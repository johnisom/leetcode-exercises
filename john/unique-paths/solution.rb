def unique_paths(m, n)
  cache = {}

  1.upto(m) do |m_pointer|
    1.upto(n) do |n_pointer|
      if m == 1 || n == 1
        cache[[m, n]] = 1
        next
      end

      cache[[m, n]] = cache[[m - 1]] + cache[[n - 1]]
    end
  end

  cache[[m, n]]
end
