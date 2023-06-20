wget https://rwth-aachen.sciebo.de/s/Erh54iS6fT3hHCr/download -O large_models.zip
unzip large_models.zip -d large_models
cd large_models/vnncomp2023/
for d in *
do
    echo $d
    cd $d/seed_676744409/;
    pwd; ls;
    find . -type f -exec mv "{}" "../../../../benchmarks/$d/{}" \;
    cd ../../;
    echo
done
cd ../..
rm -r large_models large_models.zip

gunzip benchmarks/*/onnx/* benchmarks/*/vnnlib/*
