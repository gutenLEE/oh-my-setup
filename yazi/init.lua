-- Yazi init.lua
-- 설치 위치: ~/.config/yazi/init.lua

-- Git 플러그인 설정
-- 먼저 플러그인 설치: ya pkg add yazi-rs/plugins:git

-- Git 상태 표시 색상 및 기호 커스터마이징
th.git = th.git or {}

-- 색상 설정
th.git.modified = ui.Style():fg("blue")          -- 수정된 파일
th.git.added = ui.Style():fg("green")            -- 추가된 파일
th.git.deleted = ui.Style():fg("red"):bold()     -- 삭제된 파일
th.git.untracked = ui.Style():fg("yellow")       -- 미추적 파일
th.git.ignored = ui.Style():fg("gray")           -- 무시된 파일
th.git.updated = ui.Style():fg("cyan")           -- 업데이트된 파일

-- 표시 기호 설정
th.git.modified_sign = "M"      -- 수정됨
th.git.added_sign = "A"         -- 추가됨
th.git.deleted_sign = "D"       -- 삭제됨
th.git.untracked_sign = "?"     -- 미추적
th.git.ignored_sign = "!"       -- 무시됨
th.git.updated_sign = "U"       -- 업데이트됨
th.git.clean_sign = "✔"         -- 변경 없음

-- Git 플러그인 활성화
require("git"):setup {
	order = 1500,
}
