# Simple benchmark runner script
# Usage: ./run_benchmarks.sh

echo "Running J2CL WASM Benchmarks..."
echo "================================"

# Add your benchmark commands here
# Example format: j2 -p WASM bench <benchmark_name>

echo ""
python3 dev/j2.py -p WASM bench DynamicClassDispatchBaselineBenchmark

echo ""
python3 dev/j2.py -p WASM bench DynamicClassDispatchBenchmark

echo ""
python3 dev/j2.py -p WASM bench DynamicClassDispatchRandomBenchmark

echo ""
python3 dev/j2.py -p WASM bench DynamicInterfaceDispatchBaselineBenchmark

echo ""
python3 dev/j2.py -p WASM bench DynamicInterfaceDispatchBenchmark

echo ""
python3 dev/j2.py -p WASM bench DynamicInterfaceDispatchRandomBenchmark
