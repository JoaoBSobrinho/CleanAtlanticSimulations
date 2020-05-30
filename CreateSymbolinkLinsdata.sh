#!/bin/bash
ln -s $PWD/data $PWD/Atlantic_OceanSources/data
ln -s $PWD/data $PWD/Atlantic_Rivers/data
ln -s $PWD/data $PWD/Portugal_OceanSources/data
ln -s $PWD/data $PWD/Portugal_Rivers/data
ln -s $PWD/data $PWD/Spain_OceanSources/data
ln -s $PWD/data $PWD/Spain_Rivers/data


function SimboLinkForInputData(){
    data_type=$1
    source_path=$2
    sim_main_path=$3

    meteo_path='/input_data/meteorology'
    waves_path='/input_data/waves'
    hydro_path='/input_data/hydrodynamic'
    watqu_path='/input_data/waterQuality'

    if [ "$1" == "meteorology" ]; then
        ln -s $2 $3$meteo_path

    elif [ "$1" == "waves" ]; then
        ln -s $2 $3$waves_path

    elif [ "$1" == "waterQuality" ]; then
        ln -s $2 $3$watqu_path

    elif [ "$1" == "hydrodynamic" ]; then
        ln -s $2 $3$hydro_path

    else
        echo 'Introduce one of the following options:' "meteorology", "waves", "waterQuality" 'or' "hydrodynamic"
    fi  

}

SimboLinkForInputData meteorology Atlantic_OceanSources
SimboLinkForInputData waves Atlantic_OceanSources
SimboLinkForInputData waterQuality Atlantic_OceanSources
SimboLinkForInputData meteorology Atlantic_OceanSources


