#! /usr/bin/python3

import argparse

def generate_rows_S(lower, upper):
  assert (lower <= upper), "Lower limit can not be larger than upper"
  for i in range(lower, upper):
    print("=VLOOKUP(C{0},MFPortfolio!G61:MFPortfolio!H81,2,FALSE)".format(i))

def generate_rows_U(lower, upper):
  assert (lower <= upper), "Lower limit can not be larger than upper"
  for i in range(lower, upper):
    print("=VLOOKUP(C{0},MFPortfolio!G61:MFPortfolio!I81,3,FALSE)".format(i))

def main():
  parser = argparse.ArgumentParser(description='Process some integers.')
  parser.add_argument('upper', type=int, help='Upper limit to get rows')
  parser.add_argument('--lower', type=int, default=3, help='Lower limit, defaults to 3')

  args = parser.parse_args()
  print("Column S")
  generate_rows_S(args.lower, args.upper)
  print("\n")
  print("Column U")
  generate_rows_U(args.lower, args.upper)

main()
