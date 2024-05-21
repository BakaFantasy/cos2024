import gdb
import time


def main():
  gdb.execute('set pagination off')
  gdb.execute('target remote :1234')

  time.sleep(.5)

  gdb.execute('break _start')
  gdb.execute('run')

  gdb.execute('layout split')


if __name__ == '__main__':
  main()
