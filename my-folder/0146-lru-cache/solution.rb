class LRUCache
    attr_accessor :capacity, :cache
=begin
    :type capacity: Integer
=end
    def initialize(capacity)
        @capacity = capacity
        @cache = {}
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        return -1 if !@cache.has_key?(key)
        el = @cache[key]
        @cache.delete key
        @cache[key] = el
        el
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        @cache.delete key if @cache.has_key?(key)
        @cache[key] = value
    
        if @cache.size > @capacity
            evicted_key = @cache.keys.first
            @cache.delete evicted_key
        end
    end
end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)
