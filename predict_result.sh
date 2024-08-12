# https://github.com/FduFinTech/LLaMA-Factory
CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --do_predict \
    --model_name_or_path /model_weight/Qwen-7B-Chat \
    --adapter_name_or_path path_to_sft_checkpoint \
    --dataset llm_data_test \
    --template default \
    --finetuning_type lora \
    --output_dir path_to_predict_result \
    --per_device_eval_batch_size 1 \
    --max_samples 100 \
    --predict_with_generate \
    --fp16
