# Digital Logic Design

Run behavioural, post-synthesis functional or post-synthesis timing simulation
on a template testbench populated with random values.

## Usage

```
run.py [-h] [-n N] [--synth {functional,timing}] [--gui] filepath
```

| Positional arguments | description |
| ------ | ------ |
| filepath | vhd project file path to perform simulation with[vhd/filename.vhd]. |

| Optional arguments | description |
| ------ | ------ |
| -h, --help | show usage message and exit. |
| -n N | number of simulations [default = 1]. |
| --synth {functional,timing} | post-synthesis functional or timing simulation [default = behavioural] |
| --gui | enable GUI waveform simulation. |

## Authors

* **Amedeo Cavallo**
* **Edoardo Carrer**
