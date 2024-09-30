# Swingvision Metadata Importer


## Prerequisites
[swingvision_metadata_manual](https://docs.google.com/spreadsheets/d/1ypqLnGAZWQRKI-0sVtD-_EQ3ImAgEpNduY2jkm9wdf8/edit?usp=sharing)

sheet 하단 하위 sheet들 모두 확인 요망.

## Dataset
[swingvision_metadata_csv.zip](https://drive.google.com/file/d/1tkwhKEMNOtu4SCI7swhl8ZQ8cWFI7wEX/view?usp=sharing)

## Usage
### `visualization_example.do`
shot.csv파일을 로드하여 heat, bounce location을 시각화 하는 코드
```STATA
import delimited "{path_to_maches_dir}/shots.csv", varnames(1)

// 보려고하는 shot_idx 설정
local shot_idx = 2
```

### `download_video_example.do`
STATA에서 http request기능을 지원하지 않아서 url주소를 다운로드 하진 못함.
혹시 필요하다면 파이썬 코드로 업로드하겠음.
```STATA
import delimited "{path_to_match_dir}/match.csv", varnames(1) 

local video_dir = "{path_to_video_dir}"
```
## Contact
If you want to contact me you can reach me at <ikbeomjeon@gmail.com>.

