import multiprocessing
import time

num_cores = multiprocessing.cpu_count()
print(f"Number of available CPU cores: {num_cores}")


def compute_sum(start, end):
    """Compute the sum of numbers in the range [start, end]."""
    return sum(range(start, end))

start = 0
end = 10**7
# ==================================================================Single CORES=========================================================
start_time = time.time()
result = compute_sum(start, end)
end_time = time.time()
print("===================================One Core CPU===================================")
print(f"Result: {result}, Time taken with one core: {end_time - start_time:.2f} seconds")

# ==================================================================HALF THE CORES=========================================================
mid = (start + end) // 2
start_time = time.time()
with multiprocessing.Pool(processes=2) as pool:
    results = pool.starmap(compute_sum, [(start, mid), (mid, end)])
total_result = sum(results)
end_time = time.time()
print("===================================Half Core CPU===================================")
print(f"Result: {total_result}, Time taken with half cores: {end_time - start_time:.2f} seconds")


# ==================================================================ALL CORES=========================================================
num_processes = num_cores
start_time = time.time()
ranges = [(i * (end // num_processes), (i + 1) * (end // num_processes)) for i in range(num_processes)]
with multiprocessing.Pool(processes=num_processes) as pool:
    results = pool.starmap(compute_sum, ranges)
total_result = sum(results)
end_time = time.time()
print("===================================All Core CPU===================================")
print(f"Result: {total_result}, Time taken with all cores: {end_time - start_time:.2f} seconds")
