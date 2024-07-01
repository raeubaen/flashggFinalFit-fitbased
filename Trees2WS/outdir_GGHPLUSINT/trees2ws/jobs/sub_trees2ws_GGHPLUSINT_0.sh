#!/bin/bash
ulimit -s unlimited
set -e
cd /afs/cern.ch/work/r/rgargiul/CMSSW_10_2_13/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /afs/cern.ch/work/r/rgargiul/CMSSW_10_2_13/src/flashggFinalFit/Trees2WS
export PYTHONPATH=$PYTHONPATH:/afs/cern.ch/work/r/rgargiul/CMSSW_10_2_13/src/flashggFinalFit/tools:/afs/cern.ch/work/r/rgargiul/CMSSW_10_2_13/src/flashggFinalFit/Trees2WS/tools

python /afs/cern.ch/work/r/rgargiul/CMSSW_10_2_13/src/flashggFinalFit/Trees2WS/trees2ws.py --inputConfig config.py --inputTreeFile /eos/user/r/rgargiul/amrutha_ws/prova/output_GluGluHToGG_sig_plus_int_M125_13TeV-sherpa.root --productionMode ggh --year 2018 --inputMass 125 --doSystematics
