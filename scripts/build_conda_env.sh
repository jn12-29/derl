conda create -n derl --clone py312

conda create -n derl python=3.12

conda activate derl

cd ./derl

pip install -e .

pip install -r requirements.txt