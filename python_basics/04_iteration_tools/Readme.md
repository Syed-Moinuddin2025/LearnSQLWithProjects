# 🔁 Python Iteration Tools

This folder contains Python examples that demonstrate **smart ways to loop** through data using powerful built-in tools like `range()`, `enumerate()`, `zip()`, and file reading techniques.

These tools help make your loops cleaner, faster, and more Pythonic 🐍.

---

## 📚 Topics Covered

| #   | Tool/Concept               | Description                                                   | File Name                         |
|-----|----------------------------|---------------------------------------------------------------|-----------------------------------|
| 1️⃣ | `range()`                  | Generate number sequences inside loops                        | `01_range_basics.py`              |
| 2️⃣ | `enumerate()`              | Access index + value in a loop over a list                    | `02_enumerate_list.py`            |
| 3️⃣ | `zip()`                    | Loop over two or more lists together                          | `03_zip_two_lists.py`             |
| 4️⃣ | `break` and `continue`     | Control loop flow: stop early or skip steps                   | `04_break_continue.py`            |
| 5️⃣ | `for...else` / `while...else` | Use `else` after loop only if loop completes fully         | `05_loop_with_else.py`            |
| 6️⃣ | `pass`                     | Do nothing — placeholder when code block is empty             | `06_pass_statement.py`            |
| 7️⃣ | `open()` + `readline()`    | Read file line-by-line using iteration                        | `07_file_readline.py`             |

---

## 🧠 Why Learn These?

| Benefit                    | How it Helps You                               |
|----------------------------|-----------------------------------------------|
| ✅ Cleaner code             | Reduces need for manual counters or flags     |
| ✅ Faster performance       | Built-in tools are optimized internally        |
| ✅ Real-world usage         | Used in file handling, APIs, automation scripts |
| ✅ Interview friendly       | Commonly asked in Python interviews           |

---

## 📁 Sample Code Snippet

```python
fruits = ["apple", "banana", "mango"]

for index, fruit in enumerate(fruits):
    print(index, fruit)
