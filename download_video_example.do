
clear
import delimited "D:/swingvision_csv/matches_double/00b31e4b-370b-4e18-93ca-a1b3f5638404/match.csv", varnames(1) 

local video_dir = "D:/swingvision_csv/videos"

// 2. videos_uuid_list에서 대괄호와 따옴표 제거하여 UUID 값만 추출
gen uuid_cleaned = substr(videos_uuid_list, 3, length(videos_uuid_list) - 4)

// 3. 쉼표로 구분된 값들을 개별적으로 분리
split uuid_cleaned, parse(",") gen(uuid_part)


// 4. 추출된 각 값 출력
list uuid_part*

// uuid_part1, uuid_part2 등 분리된 값을 사용하여 각각의 CSV 파일에서 video_url 값을 가져오는 과정
forvalues i = 1/`=_N' {
    // 각 uuid_part에 대한 파일 경로 설정
    local uuid = uuid_part`i'   // 각 uuid_part를 불러옴
    
	local file_path = "`video_dir'/" + "`uuid'" + ".csv"
	// 파일 로드
    capture confirm file "`file_path'"
    if !_rc {
        import delimited "`file_path'", varnames(1) clear

        // video_url 값을 가져와서 저장 또는 출력
        list video_url
		
		//이 url로 http request를 통해 코드상에서 다운로드 하려 했으나, STATA에서는 해당 기능을 지원하지 않는군요...
    } 
}
