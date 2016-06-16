# hash = {
# 	:liver => {
# 		:animal => [
# 			0,
# 			1,
# 			2,
# 			3,
# 			{
# 				:phylum => {
# 					:members =>["PROTECT THE ENVIROMENT"]
# 				}
# 			}
# 		]
# 	}
# }

# puts hash[:liver][:animal][4][:phylum][:members][0]

hash = {
	:wat => [ 0, 1, { :wut => [ 0, [0, [ 0, 1, 2, 3, 4, 5, 6, 7, 8, { :bbq => "Yummy!"}]]]}]
}

puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]

# hash = {
#   :liver => { :animals => [ 0, 1, 2, 3, { :phylum => { :members => [ "PROTECT THE ANIMALS" ]} } ] }
# }
# ​
# puts hash[:liver][:animals][4][:phylum][:members][0]