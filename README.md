
# GSmoothFace_TAFT
The TAFT module of the paper "[GSmoothFace: Generalized Smooth Talking Face Generation via Fine Grained 3D Face Guidance](https://arxiv.org/abs/2312.07385)".

To keep the code tidy, we store the different module codes separately. The main repository and the A2EP module is located in [GSmoothFace](https://github.com/zhanghm1995/GSmoothFace).

Please refer to the main repository for quick start, environment preparation and data preparation details.

## Prepare Dataset
```bash
mkdir dataset

cd dataset
ln -s <your/path/to/HDTF_face3dmmformer> HDTF_face3dmmformer
```

## Train
```bash
python train.py \
--config ./config/face_to_face_HDTF.yaml \
--name GSmoothFace_TAFT \
--single_gpu
```
or train the model with multiple GPUs:
```bash
python -m torch.distributed.launch --nproc_per_node=4 --master_port 22222 train.py \
--config ./config/face_to_face_HDTF.yaml \
--name GSmoothFace_TAFT \
```

## Inference
Modify the `pred_dir` in the `config/face_to_face_HDTF.yaml` config to the folder containing rendered face images and merged 3DMM parameters, and then run:
```bash
bash demo.sh
```

**Note**: Here we only provide the preprocessed mini part of HDTF dataset containing 8 speakers for your quickly validation, so you may only test this module in these speakers. For good generalization of TAFT module, you need preprocess more data and re-training TAFT by yourself.

## Citation

If you find this code is helpful, please cite our paper

```tex
@article{zhang2023gsmoothface,
  title   = {GSmoothFace: Generalized Smooth Talking Face Generation via Fine Grained 3D Face Guidance},
  author  = {Haiming Zhang and Zhihao Yuan and Chaoda Zheng and Xu Yan and Baoyuan Wang and Guanbin Li and Song Wu and Shuguang Cui and Zhen Li},
  year    = {2023},
  journal = {arXiv preprint arXiv: 2312.07385}
}
```