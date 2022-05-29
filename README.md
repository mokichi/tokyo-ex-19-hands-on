# ExDemo

tokyo.ex #19 hands-on

https://github.com/ohr486/ElixirHandsOn20220529/wiki

## Run

```
$ mix run -e 'MonteCarlo.benchmark'
```

## Benchmark

### Use default backend

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i5-8279U CPU @ 2.40GHz
Number of Available Cores: 8
Available memory: 16 GB
Elixir 1.13.1
Erlang 24.2

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
reduction time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 14 s

Benchmarking calc_normal ...
Benchmarking calc_nx ...

Name                  ips        average  deviation         median         99th %
calc_normal          3.41         0.29 s     ±8.24%         0.29 s         0.37 s
calc_nx              0.27         3.71 s     ±1.21%         3.71 s         3.74 s

Comparison: 
calc_normal          3.41
calc_nx              0.27 - 12.66x slower +3.42 s
```

### Use exla backend

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i5-8279U CPU @ 2.40GHz
Number of Available Cores: 8
Available memory: 16 GB
Elixir 1.13.1
Erlang 24.2

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
reduction time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 14 s

Benchmarking calc_normal ...
Benchmarking calc_nx ...

14:59:37.815 [info]  XLA service 0x7fb8d4f0a250 initialized for platform Host (this does not guarantee that XLA will be used). Devices:

14:59:37.820 [info]    StreamExecutor device (0): Host, Default Version

Name                  ips        average  deviation         median         99th %
calc_nx             11.18       89.47 ms     ±2.52%       88.81 ms       95.83 ms
calc_normal          3.57      280.10 ms     ±3.87%      278.73 ms      302.32 ms

Comparison: 
calc_nx             11.18
calc_normal          3.57 - 3.13x slower +190.62 ms
```
