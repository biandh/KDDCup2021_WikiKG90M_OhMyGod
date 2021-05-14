# TransE-roberta
dglke_train --model_name TransE_l2 \
--hidden_dim 768 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 1000 \
--dtype 32 \
--save_float16 0 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name shallow  \
--log_interval 1000 \
--eval_interval 50000 \
--max_step 2000000 \
--data_path /home/work/biandonghai/kdd_2021 \
--is_eval 1 \
--ckpts "/home/work/biandonghai/dglke/ckpts/TransE_l2_wikikg90m_shallow_d_768_g_10.07_mrr_0.8655394911766052_step_1000000" \
