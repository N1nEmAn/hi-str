#!/usr/bin/python3

import os
import sys
from termcolor import colored

def search_string_in_files(search_string, search_path):
    found = False
    try:
        for root, dirs, files in os.walk(search_path):
            for file_name in files:
                file_path = os.path.join(root, file_name)
                try:
                    with open(file_path, 'r', encoding='utf-8') as file:
                        for line_number, line in enumerate(file, 1):
                            if search_string in line:
                                found = True
                                print(colored('[+]', 'green'), f'Found in: {file_path} at line {line_number}: {line.strip()}')
                except UnicodeDecodeError as e:
                    pass

    except FileNotFoundError:
        pass
    
    if not found:
        print(colored('[o]', 'red'), 'Not found in any files.')

if __name__ == "__main__":
    if len(sys.argv) == 2:
        search_string = sys.argv[1]
        search_path = '.'
    elif len(sys.argv) == 3:
        search_string = sys.argv[1]
        search_path = sys.argv[2]
    else:
        print("Usage:")
        print("  With one argument: histr <search_string>")
        print("  With two arguments: histr <search_string> <search_path>")
        sys.exit(1)
    
    search_string_in_files(search_string, search_path)

