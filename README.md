# Swingvision Metadata Importer


## Prerequisites
[swingvision_metadata_menual 참고](https://docs.google.com/spreadsheets/d/1ypqLnGAZWQRKI-0sVtD-_EQ3ImAgEpNduY2jkm9wdf8/edit?usp=sharing)

## 파일 구성
### `visualization_example.do`
shot.csv파일을 로드하여 heat, bounce location을 시각화 하는 코드
```STATA
import delimited "{path_to_maches_dir}/shots.csv", varnames(1)

// 보려고하는 shot_id 설정
local shot_idx = 2
```

### `download_video_example.do`
STATA에서 http request기능을 지원하지 않아서 url주소를 다운로드 하진 못함.
참고만 하세요.

```STATA
import delimited "{path_to_match_dir}/match.csv", varnames(1) 

local video_dir = "{path_to_video_dir}"
```
## Contact
If you want to contact me you can reach me at <ikbeomjeon@gmail.com>.

