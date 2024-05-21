import gdb
import time


def init():
  gdb.execute('set pagination off')
  gdb.execute('target remote :1234')


def process():
  gdb.execute('hbreak *0x7c00')
  gdb.execute('break _start')
  gdb.execute('break T_main')
  gdb.execute('continue')

  gdb.execute('layout split')
  gdb.execute('focus cmd')


def main():
  init()
  time.sleep(.5)
  process()


if __name__ == '__main__':
  main()
