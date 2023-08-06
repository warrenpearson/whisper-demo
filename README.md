## whisper-demo
Test whisper functionality

### About
<https://openai.com/research/whisper>
<https://github.com/openai/whisper>

### Mac install
```
brew install ffmpeg

./build/make_env.sh
```

### Run

```
./build/run.sh
```

N.B. During the first run for a particular model, the model needs to be downloaded and they're pretty big:

```
ls -lh ~/.cache/whisper/ |awk '{ print $5, $9 }'
 
2.9G large-v2.pt
1.4G medium.pt
```

### Results

All outputs are saved under `./output`:

```
withnail.json
withnail.srt
withnail.tsv
withnail.vtt
```