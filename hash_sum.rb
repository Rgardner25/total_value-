require 'rspec'

def hash_sum(*hashes)
  hashes.each_with_object(Hash.new) do |hash, final_hash|
    if hash == hashes.first
      final_hash.merge!(hash)
    else
      final_hash.merge!(hash) do |key, old_val, new_val|
        old_val + new_val
      end
    end
  end
end
