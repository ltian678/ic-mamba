# export CUDA_VISIBLE_DEVICES=1

model_name=ICMamba

python -u run.py \
  --task_name short_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ss \
  --seasonal_patterns 'Monthly' \
  --model_id ic_Monthly \
  --model $model_name \
  --data ss \
  --features M \
  --e_layers 2 \
  --enc_in 1 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 1 \
  --batch_size 16 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --loss 'SMAPE'  

python -u run.py \
  --task_name short_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ss \
  --seasonal_patterns 'Yearly' \
  --model_id ic_Yearly \
  --model $model_name \
  --data ss \
  --features M \
  --e_layers 2 \
  --enc_in 1 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 1 \
  --batch_size 16 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --loss 'SMAPE'

python -u run.py \
  --task_name short_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ss \
  --seasonal_patterns 'Quarterly' \
  --model_id ic_Quarterly \
  --model $model_name \
  --data ss \
  --features M \
  --e_layers 2 \
  --enc_in 1 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 1 \
  --batch_size 16 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --loss 'SMAPE'

python -u run.py \
  --task_name short_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ss \
  --seasonal_patterns 'Weekly' \
  --model_id ic_Weekly \
  --model $model_name \
  --data ss \
  --features M \
  --e_layers 2 \
  --enc_in 1 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 1 \
  --batch_size 16 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --loss 'SMAPE'

python -u run.py \
  --task_name short_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ss \
  --seasonal_patterns 'Daily' \
  --model_id ic_Daily \
  --model $model_name \
  --data ss \
  --features M \
  --e_layers 2 \
  --enc_in 1 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 1 \
  --batch_size 16 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --loss 'SMAPE'

python -u run.py \
  --task_name short_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ss \
  --seasonal_patterns 'Hourly' \
  --model_id ic_Hourly \
  --model $model_name \
  --data ss \
  --features M \
  --e_layers 2 \
  --enc_in 1 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 1 \
  --batch_size 16 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --loss 'SMAPE'