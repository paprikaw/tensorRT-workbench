CONVERTER_PATH=/home/student.unimelb.edu.au/bxb1/TensorRT-LLM/examples/qwen
MODEL_PATH=/mnt/mediaflux/tmp/Qwen2.5-7B
OUTPUT_PATH=/mnt/mediaflux/model_weights/TensorRT/Qwen2.5-7B

cd $CONVERTER_PATH


python convert_checkpoint.py --model_dir $MODEL_PATH \
                            --output_dir $OUTPUT_PATH \
                            --dtype float16 \
                            --tp_size 1 \
                            --pp_size 3