# TransE-roberta
dglke_train --model_name TransE_l2 \
--hidden_dim 768 --gamma 9 --lr 0.1 --regularization_coef 1e-9 \
--valid --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 20 \
--dtype 32 \
-pw \
--loss_genre Hinge \
--save_float16 0 \
--batch_size_eval 10 \
--print_on_screen \
--neg_sample_size 2 \
--encoder_model_name shallow  \
--log_interval 1000 \
--eval_interval 20000 \
--max_step 40000 \
--data_path /home/work/biandonghai/kdd_2021_small_example \
--is_eval 1 \
--ckpts "/home/work/biandonghai/dglke/ckpts/TransE_l2_wikikg90m_shallow_d_768_g_99" \
