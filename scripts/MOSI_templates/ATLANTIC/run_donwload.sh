#!/bin/bash
python -m MOSI -j CDS_winds_2D.json -s CDS -f 1d
python -m MOSI -j CMEMS_currents_2D.json -s CMEMS -f 1d
python -m MOSI -j CMEMS_currents_3D.json -s CMEMS -f 1d
python -m MOSI -j CMEMS_water_properties.json -s CMEMS -f 1d
python -m MOSI -j CMEMS_waves.json -s CMEMS -f 1d

