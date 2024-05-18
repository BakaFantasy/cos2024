import random
import sys
import subprocess
from tqdm import tqdm


COLOR = {
    'RED': '\033[91m',
    'GREEN': '\033[92m',
    'END': '\033[0m',
}

RANDOM_REPS = 334

MARGINAL_DIGITS = ([str(num) for num in range(102)]
                   + [str(num) for num in range(999999999999999999999999999899,
                                                1000000000000000000000000000001)]
                   + [str(1 << shift) for shift in range(7, 100)]
                   + [str(10 ** exp) for exp in range(3, 30)])

EXCEPTION_INPUT = ['123 a', '123a b', '123a  b', '123a', '123a ',  '123a  ',
                   'b', ' b', '  b', ' q', '123- h', '-123 h',
                   'o 123', ' ', '.', '1.23', 'q123 b', 'q o',
                   '123', '123 ', '123  ', ' 123', '  123', '1 23']

SHOW_FAILURE = True


class Tester:
  def __init__(self, path):
    self.program = path
    self.total_count = 0
    self.passed_count = 0
    self.failed = {}

  def ref(self, digits, radix):
    if radix == 'b':
      return bin(digits)
    elif radix == 'o':
      return oct(digits)
    elif radix == 'h':
      return hex(digits)

  def compare(self, digits):
    for radix in ['b', 'o', 'h']:
      process = subprocess.Popen(f'./{self.program}',
                                 stdin=subprocess.PIPE, stdout=subprocess.PIPE)
      line = f'{digits} {radix}'
      actual = process.communicate(
          input=f'{line}\n'.encode())[0].decode().strip()
      process.terminate()
      expected = self.ref(int(digits), radix)
      self.count(line, actual, expected)

  def count(self, line, actual, expected):
    if actual == expected:
      self.passed_count += 1
    else:
      self.failed[line] = (expected, actual)
    self.total_count += 1

  def random_test(self, round=100):
    for _ in tqdm(range(round), desc='Random tests'):
      digits = ''
      for __ in range(29):
        digits += str(random.randint(0, 9))
      self.compare(digits)

  def marginal_test(self):
    for digits in tqdm(MARGINAL_DIGITS, desc='Marginal tests'):
      self.compare(digits)

  def exception_test(self):
    for line in tqdm(EXCEPTION_INPUT, desc='Exception tests'):
      process = subprocess.Popen(f'./{self.program}',
                                 stdin=subprocess.PIPE, stdout=subprocess.PIPE)
      actual = process.communicate(
          input=f'{line}\n'.encode())[0].decode().strip()
      process.terminate()
      expected = 'Error'
      self.count(line, actual, expected)

  def exit_test(self):
    line = 'q'
    completed_process = subprocess.run(f'./{self.program}',
                                       input=f'{line}\n'.encode(), stdout=subprocess.PIPE)
    actual = completed_process.returncode
    expected = 0
    self.count(line, actual, expected)


if __name__ == '__main__':
  print('╔==========================================================╗')
  print('║                                                          ║')
  print('║                       LAB1  TESTER                       ║')
  print('║                                               by Fradow  ║')
  print('╚==========================================================╝')
  if len(sys.argv) < 2:
    print(f'Usage: {__file__} path-of-your-program [-q]')
    exit(0)
  if sys.argv.count('-q') > 0:
    SHOW_FAILURE = False
  tester = Tester(sys.argv[1])
  print('Test started!')
  tester.random_test(RANDOM_REPS)
  tester.marginal_test()
  tester.exception_test()
  tester.exit_test()
  print('Test done!')
  print(f'{COLOR["GREEN"]}{tester.passed_count}{COLOR["END"]} PASSED, {COLOR["RED"]}{tester.total_count - tester.passed_count}{COLOR["END"]} FAILED.')
  if SHOW_FAILURE and len(tester.failed) != 0:
    for line, output in tester.failed.items():
      print(f'INPUT: {line}\nEXPECTED: {output[0]}\nACTUAL: {output[1]}')
