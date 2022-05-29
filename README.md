# ExDemo

tokyo.ex #19 hands-on

https://github.com/ohr486/ElixirHandsOn20220529/wiki

## Run

```
$ mix run -e 'MonteCarlo.benchmark'
```

## Benchmark sample

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
