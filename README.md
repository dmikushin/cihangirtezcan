# AES implementation in CUDA with tables in shared memory

Optimized T-table based CUDA implementations of AES without bank conflicts. This repository is a revision of the [original code](https://github.com/cihangirtezcan/CUDA_AES) by Cihangir Tezcan.

## Building

```
mkdir build
cd build
cmake ..
make
```

## Testing

```
./test_cihangirtezcan 
Usage ./test_cihangirtezcan <1|2|3>
(1) AES-128 CTR 
(2) AES-192 CTR
(3) AES-256 CTR
```

```
./test_cihangirtezcan 1

########## AES-128 Counter Mode Implementation ##########

-------------------------------
threadIndex : 1048575
Plaintext   : 3243f6a8 885a308d 313198aa 00000000
Ciphertext  : 4fd0a24c be277301 81ca99bd 9960050b
-------------------------------
Time elapsed: 14.058245 sec
-------------------------------
plaintext: 2b7e1516 28aed2a6 abf71588 9cf4f3c
```

## Benchmarking

Benchmarking results of the [original author](https://github.com/cihangirtezcan/CUDA_AES):

315.2 Gbps AES-128 encryption on a GTX 970

878.6 Gbps AES-128 encryption on an RTX 2070 Super

