GPU=$1
CUDA_VISIBLE_DEVICES=$GPU python main.py --checkpoint_dir=tgifqa \
	--dataset=tgifqa/frameqa \
	--mc=0 \
	--bnum=10 \
	--epochs=30 \
	--lr=0.00001 \
	--qmax_words=20 \
	--amax_words=5 \
	--max_feats=32 \
	--batch_size=64 \
	--batch_size_val=64 \
	--num_thread_reader=8 \
	--mlm_prob=0 \
	--n_layers=1 \
	--embd_dim=512 \
	--ff_dim=1024 \
	--dropout=0.3 \
	--save_dir='../data/save_models/tgifqa/frameqa/VGT/' \
	--seed=666 \
	# --pretrain_path='../data/save_models/webvid/180K/e1.pth'