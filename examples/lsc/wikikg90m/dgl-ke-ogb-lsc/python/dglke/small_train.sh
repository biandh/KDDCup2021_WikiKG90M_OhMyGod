# TransE-roberta
dglke_train \
--hidden_dim 768 --gamma 9 --lr 0.1 --regularization_coef 0 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 10 \
--batch_size_eval 2 \
--dtype 32 \
--is_eval 1 \
--save_float16 0 \
--print_on_screen \
--encoder_model_name concat  \
--model_name ComplEx \
--log_interval 100 \
--eval_interval 500 \
--max_step 1000 \
--neg_sample_size 5 \
--data_path /home/work/biandonghai/kdd_2021_small_example \
