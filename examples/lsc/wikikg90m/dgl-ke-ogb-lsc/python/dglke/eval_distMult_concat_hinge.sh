# ComplEx-concat
dglke_eval --model_name DistMult \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid --test -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--dtype 32 \
--is_eval 1 \
--batch_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--eval_interval 50000 \
--max_step 1000000 \
--loss_genre Hinge \
--data_path kdd_2021 \
--save_path "ckpts/DistMult_wikikg90m_concat_d_512_g_20.0_lr_0.1_seed_47_0_hinge_mrr_0.8706580400466919_step_649999/"
