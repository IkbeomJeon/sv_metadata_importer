# Swingvision Metadata Importer


## Prerequisites
[swingvision_metadata_menual 참고](https://docs.google.com/spreadsheets/d/1ypqLnGAZWQRKI-0sVtD-_EQ3ImAgEpNduY2jkm9wdf8/edit?usp=sharing)

## 파일 구성

### `import_dataset_example.do`


### `visualization_example.do`
shot.csv파일을 로드하여 heat, bounce location을 시각화 하는 코드
```STATA
import delimited "{path_to_maches_dir}/shots.csv", varnames(1)

// 보려고하는 shot_id 설정
local shot_idx = 2
```

## Contact
If you want to contact me you can reach me at <ikbeomjeon@gmail.com>.

