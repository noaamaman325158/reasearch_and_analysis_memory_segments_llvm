# Input
# s1 = int(input("Please enter the first side:"))
# s2 = int(input("Please enter the second side:"))
# s3 = int(input("Please enter the third side:"))

sides_triangle = []

num_of_sides = int(input("Please enter the number of sides of your shape:"))

for i in range(num_of_sides):
    side = int(input("Please enter the side:"))
    sides_triangle.append(side)




# Conditions + Output
# if s1 > 0 and s2 > 0 and s3 > 0:
#     if s1 + s2 < s3 < abs(s1 - s2):
#         print(True)
#     else:
#         print(False)
# else:
#     print(False)

# All the sides are positive
# The third side is bigger than the summation of the other sides
# The third side is little  than the subtraction of the other sides(absolute value)
#
#
# sides_are_positive = sides_triangle[0] > 0 and sides_triangle[1] > 0 and sides_triangle[2] > 0
# valid_triangle = s1 + s2 < s3 < abs(s1 - s2)
#
# while not (sides_are_positive and valid_triangle):
#     print("You input is not valid, please try again....")
#
#     s1 = int(input("Please enter the first side:"))
#     s2 = int(input("Please enter the second side:"))
#     s3 = int(input("Please enter the third side:"))
#
#     sides_are_positive = s1 > 0 and s2 > 0 and s3 > 0
#     valid_triangle = s1 + s2 < s3 < abs(s1 - s2)
#
# print("Great your input is valid")





