# 07_file_readline.py
# Topic: Reading lines from a file using open(), readline(), and for-loop

# 📌 Make sure you have a text file named 'sample.txt' in the same folder
# Content of sample.txt:
# Apple
# Banana
# Mango
# Orange

# 🔹 Method 1: Using readline() - read only first line
print("Reading one line using readline():")
file = open("sample.txt", "r")
line1 = file.readline()
print("First Line:", line1.strip())
file.close()

print("\n")

# 🔹 Method 2: Reading all lines using for loop
print("Reading all lines using a loop:")
file = open("sample.txt", "r")
for line in file:
    print(line.strip())  # strip() removes \n
file.close()

print("\n")

# 🔹 Method 3: Safe method using with open()
print("Reading safely with 'with open() as' block:")
with open("sample.txt", "r") as f:
    for line in f:
        print(line.strip())
