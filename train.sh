set -x

## For train with multiple GPUs
# python -m torch.distributed.launch --nproc_per_node=4 --master_port 22222 train.py \
# --config ./config/face_to_face_HDTF.yaml \
# --name GSmoothFace_TAFT \
# --single_gpu


## For training HDTF #####
python train.py \
--config ./config/face_to_face_HDTF.yaml \
--name GSmoothFace_TAFT \
--single_gpu