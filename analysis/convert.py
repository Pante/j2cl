#!/usr/bin/env python3
"""
Script to convert benchmark CLI output to CSV format
"""

import sys
import csv
import re
import os
from typing import Dict, List, Tuple

def parse_benchmark_output(input_text: str) -> List[Dict[str, str]]:
    """
    Parse benchmark output and return list of dictionaries for CSV conversion
    """
    lines = input_text.strip().split('\n')
    results = []
    current_benchmark = None

    for line in lines:
        line = line.strip()
        if not line:
            continue

        # Check if it's a benchmark header [BenchmarkName]
        if line.startswith('[') and line.endswith(']'):
            current_benchmark = line[1:-1]  # Remove brackets
            continue

        # Check if it's a result line (TOOLCHAIN: value)
        if ':' in line and current_benchmark:
            parts = line.split(':', 1)
            if len(parts) == 2:
                toolchain = parts[0].strip()
                value = parts[1].strip()

                # Map toolchain names to match your desired format
                toolchain_mapping = {
                    'JVM_TIERED': 'JVM (Tiered Compilation)',
                    'JVM_C2': 'JVM (C2)',
                    'JS_V8': 'J2CL - JS',
                    'JS_SM': 'J2CL - JS',
                    'WASM_V8': 'J2CL - WASM',
                    'WASM_SM': 'J2CL - WASM'
                }

                engine_mapping = {
                    'JVM_TIERED': 'OpenJDK (24.0.1)',
                    'JVM_C2': 'OpenJDK (24.0.1)',
                    'JS_V8': 'V8 (13.9.153)',
                    'JS_SM': 'SpiderMonkey (v140.0b9)',
                    'WASM_V8': 'V8 (13.9.153)',
                    'WASM_SM': 'SpiderMonkey (v140.0b9)'
                }

                # Create row for CSV
                row = {
                    'Benchmark': current_benchmark,
                    'Toolchain': toolchain_mapping.get(toolchain, toolchain),
                    'Engine': engine_mapping.get(toolchain, 'Unknown'),
                    'Throughput (ops/ms)': value
                }
                results.append(row)

    return results

def write_csv(results: List[Dict[str, str]], output_file: str = None):
    """
    Write results to CSV file or stdout
    """
    if not results:
        print("No data to write")
        return

    fieldnames = ['Benchmark', 'Toolchain', 'Engine', 'Throughput (ops/ms)']

    if output_file:
        with open(output_file, 'w', newline='', encoding='utf-8') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(results)
        print(f"CSV written to {output_file}")
    else:
        writer = csv.DictWriter(sys.stdout, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(results)

def main():
    """
    Main function - reads from file and converts to CSV
    """
    if len(sys.argv) > 1:
        # Read from specified file
        input_file = sys.argv[1]
        output_file = sys.argv[2] if len(sys.argv) > 2 else None
    else:
        # Look for default input file
        default_input_files = ['benchmark_data.txt', 'benchmark_output.txt', 'data.txt']
        input_file = None

        for filename in default_input_files:
            if os.path.exists(filename):
                input_file = filename
                break

        if not input_file:
            print("Error: No input file found. Please provide a file or create one of:")
            for filename in default_input_files:
                print(f"  - {filename}")
            print("\nUsage:")
            print("  python convert.py input.txt          # Read from specified file, output to stdout")
            print("  python convert.py input.txt out.csv  # Read from specified file, write to CSV file")
            sys.exit(1)

        output_file = "benchmark_results.csv"
        print(f"Reading from {input_file}, writing to {output_file}")

    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            input_text = f.read()
    except FileNotFoundError:
        print(f"Error: File '{input_file}' not found")
        sys.exit(1)
    except Exception as e:
        print(f"Error reading file '{input_file}': {e}")
        sys.exit(1)

    # Parse and convert
    results = parse_benchmark_output(input_text)

    if not results:
        print("No benchmark data found in input")
        sys.exit(1)

    # Write CSV
    write_csv(results, output_file)

if __name__ == '__main__':
    main()