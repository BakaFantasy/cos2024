#include <unistd.h>
#include <stdint.h>

#define MAX_INPUT_LEN 2000
#define MAX_DIGITS_LEN 1000
#define MAX_BINARY_LEN 3322 // MAX_INPUT_LEN * log_2(10)

static int8_t input[MAX_INPUT_LEN];
static int8_t digits[MAX_DIGITS_LEN];
static int8_t bit_arr[MAX_BINARY_LEN];
static int8_t peeled[MAX_DIGITS_LEN];
static int8_t quotient[MAX_DIGITS_LEN];

__attribute__((noinline))
static int get() {
  int count = 0;
  while (1) {
    int8_t ch = 0;
    (void) read(0, &ch, 1);
    if (ch == '\n' || ch == -1) {
      break;
    }
    input[count++] = ch;
    if (count > MAX_INPUT_LEN) {
      _exit(0);
    }
  }
  return count;
}

__attribute__((noinline))
static int to_bits(int digit_len) {
  for (int i = 0; i < digit_len; i++) {
    peeled[i] = digits[i] - '0';
  }
  int bit_len = 0;
  while (digit_len) {
    for (int i = 0; i < digit_len; i++) {
      quotient[i] = 0;
    }
    int rem_value = 0;
    for (int i = 0; i < digit_len; i++) {
      rem_value = rem_value * 10 + peeled[i];
      quotient[i] = rem_value / 2;
      rem_value &= 1;
    }
    bit_arr[bit_len++] = rem_value;
    // quotient with zero trimmed -> peeled
    int zero_count = 0;
    while (zero_count < digit_len && !quotient[zero_count]) {
      zero_count++;
    }
    for (int i = zero_count; i < digit_len; i++) {
      peeled[i - zero_count] = quotient[i];
    }
    digit_len -= zero_count;
  }
  return bit_len;
}

__attribute__((noinline))
static void print(int bit_len, int8_t radix) {
  int8_t prefix[3] = "0b";
  int8_t interval;
  switch (radix) {
    case 'b':
      interval = 1;
      break;
    case 'o':
      prefix[1] = 'o';
      interval = 3;
      break;
    case 'h':
      prefix[1] = 'x';
      interval = 4;
      break;
    default:
      write(1, "Shouldn't reached!\n", 19);
  }
  write(1, prefix, 2);
  int8_t num = 0;
  for (int pos = bit_len - 1; pos > -1; pos--) {
    int8_t shift = pos % interval;
    num += bit_arr[pos] << shift;
    if (shift == 0) {
      int8_t digit = num > 9 ? 'a' + num % 10 : '0' + num;
      write(1, &digit, 1);
      num = 0;
    }
  }
  write(1, "\n", 1);
}

__attribute__((noinline))
int main() {
  loop: {
    int input_len = get();
    if (input_len == 0) {
      goto loop;
    }
    if (input_len == 1 && input[0] == 'q') {
      goto exit;
    }
    // split input
    int digit_len = 0;
    int8_t radix;
    while(input[digit_len] != ' ') {
      digits[digit_len] = input[digit_len];
      digit_len++;
      if (digit_len > input_len - 2) {
        goto exception;
      }
    }
    radix = input[digit_len + 1];
    // exceptions
    if (digit_len == 0) {
      goto exception;
    }
    if (radix != 'b' && radix != 'o' && radix != 'h') {
      goto exception;
    }
    for (int i = 0; i < digit_len; i++) {
      if (digits[i] < '0' || digits[i] > '9') {
        goto exception;
      }
    }
    int bit_len = to_bits(digit_len);
    print(bit_len, radix);
    goto loop;
  }

  exception:
  write(1, "Error\n", 6);
  goto loop;

  exit:
  return 0;
}
