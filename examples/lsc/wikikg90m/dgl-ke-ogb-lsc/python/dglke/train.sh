# TransE-roberta
dglke_train --model_name ComplEx \
--hidden_dim 768 --gamma 10 --lr 0.1 --regularization_coef 0 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 1000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 1 \
--eval_interval 50000 \
--max_step 10000000 \
--data_path /home/work/biandonghai/kdd_2021 \
