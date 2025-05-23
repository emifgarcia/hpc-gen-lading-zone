#!/bin/bash

template_name="Slurm-Genoma-ITV"
template_file="/home/cyclecli_ds_usr/hpc/hpc-gen-lading-zone/genomica-proj/templates/slurm-genoma-template-login-node-itv.txt"

echo "Importing template $template_name from $template_file"

# Import template
cyclecloud import_template $template_name -f $template_file --force

echo "Template $template_name imported"

