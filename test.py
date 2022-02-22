from random import randint
from time import sleep
delay = randint(1, 20)
with open('t.txt', 'w') as f:
  f.write("")
for i in  range(0, delay):
  print(i)
  with open ('t.txt', 'a') as file:
    file.write(f"{i}\n")
  sleep(1)
