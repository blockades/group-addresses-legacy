require 'money-tree'

@node = MoneyTree::Node.from_bip32("YOUR_MASTER_PUBLIC_KEY")

i = 0
20.times do
  @child = @node.node_for_path "m/0/#{i}"
  puts @child.to_address
  i+= 1
end
