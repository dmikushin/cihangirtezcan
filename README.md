# AES implementation in CUDA with tables in shared memory

These are optimizations T-table based CUDA implementations of AES without bank conflicts.

## Building

```
mkdir build
cd build
cmake ..
./test_cihangirtezcan
```

## Benchmarking

Benchmarking results of the [original authors](https://github.com/cihangirtezcan/CUDA_AES):

315.2 Gbps AES-128 encryption on a GTX 970

878.6 Gbps AES-128 encryption on an RTX 2070 Super

