# Digital Logic Design

Run behavioural, post-synthesis functional or post-synthesis timing simulation
on a template testbench populated with random values.

## Usage

```
run.py [-h] [-n N] [--synth {functional,timing}] [--gui] filepath
```

| Positional arguments | description |
| ------ | ------ |
| filepath | VHD project file path to perform simulation with [ex. vhd/filename.vhd]. |

| Optional arguments | description |
| ------ | ------ |
| -h, --help | Show usage message and exit. |
| -n N | Number of simulations [default = 1]. |
| --synth {functional,timing} | Post-synthesis functional or timing simulation [default = behavioural] |
| --gui | Enable GUI waveform simulation. |

## Authors

* **Amedeo Cavallo**
* **Edoardo Carrer**
