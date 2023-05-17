#! /usr/bin/python3

import argparse

def generate_rows(lower, upper):
  assert (lower <= upper), "Lower limit can not be larger than upper"
  for i in range(lower, upper):
    print("=VLOOKUP(C{0},MFPortfolio!G56:MFPortfolio!H76,2,FALSE)".format(i))

def main():
  parser = argparse.ArgumentParser(description='Process some integers.')
  parser.add_argument('upper', type=int, help='Upper limit to get rows')
  parser.add_argument('--lower', type=int, default=3, help='Lower limit, defaults to 3')

  args = parser.parse_args()
  generate_rows(args.lower, args.upper)

main()
