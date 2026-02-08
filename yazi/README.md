# Yazi 파일 관리자 설정

Yazi는 Rust로 작성된 터미널 기반 파일 관리자입니다. 빠른 속도와 vim 스타일 키 바인딩이 특징입니다.

## 설치

### Homebrew (macOS)

```bash
brew install yazi
```

### 추가 의존성 (선택사항)

```bash
# 이미지 프리뷰
brew install ffmpegthumbnailer

# PDF 프리뷰
brew install poppler

# 압축 파일 지원
brew install p7zip jq
```

## 플러그인

### Git 상태 표시 (git.yazi)

Git 저장소에서 파일의 변경 상태(수정, 추가, 삭제 등)를 시각적으로 표시합니다.

**설치:**

```bash
ya pkg add yazi-rs/plugins:git
```

**설정 파일 생성:**

`~/.config/yazi/init.lua` 파일을 생성하고 다음 내용 추가:

```lua
require("git"):setup {
	order = 1500,
}
```

`~/.config/yazi/yazi.toml` 파일에 다음 내용 추가:

```toml
[[plugin.prepend_fetchers]]
id = "git"
url = "*"
run = "git"

[[plugin.prepend_fetchers]]
id = "git"
url = "*/"
run = "git"
```

**표시되는 Git 상태:**
- `M` - 수정된 파일 (modified)
- `A` - 추가된 파일 (added)
- `D` - 삭제된 파일 (deleted)
- `?` - 추적되지 않는 파일 (untracked)
- `✔` - 변경 없음 (clean)

**커스터마이징 (선택사항):**

색상과 기호를 변경하려면 `init.lua`에서 `:setup()` 호출 전에 설정:

```lua
-- 스타일 설정
th.git = th.git or {}
th.git.modified = ui.Style():fg("blue")
th.git.deleted = ui.Style():fg("red"):bold()
th.git.added = ui.Style():fg("green")

-- 기호 변경
th.git.modified_sign = "M"
th.git.deleted_sign = "D"
th.git.added_sign = "+"
th.git.untracked_sign = "?"
th.git.clean_sign = "✔"

require("git"):setup {
	order = 1500,
}
```

## 설정 적용

이 리포지토리의 설정 파일을 yazi 설정 디렉토리로 복사합니다:

```bash
# 설정 디렉토리 생성
mkdir -p ~/.config/yazi

# 설정 파일 복사
cp yazi.toml ~/.config/yazi/yazi.toml
```

## 주요 설정

### 숨김 파일 기본 표시

```toml
[mgr]
show_hidden = true
```

`.`으로 시작하는 숨김 파일과 디렉토리를 기본으로 표시합니다.

## 기본 사용법

### 실행

```bash
# 현재 디렉토리에서 실행
yazi

# 특정 디렉토리 열기
yazi /path/to/directory
```

### 기본 단축키

**네비게이션:**
- `h`: 상위 디렉토리로 이동
- `l`: 하위 디렉토리로 진입 / 파일 열기
- `j`: 아래로 이동
- `k`: 위로 이동
- `g`: 첫 항목으로 이동
- `G`: 마지막 항목으로 이동

**파일 작업:**
- `Space`: 파일 선택/선택 해제
- `y`: 복사
- `x`: 잘라내기
- `p`: 붙여넣기
- `d`: 삭제
- `r`: 이름 변경
- `n`: 새 파일 생성
- `N`: 새 디렉토리 생성

**보기 옵션:**
- `.`: 숨김 파일 표시/숨기기 토글
- `s`: 정렬 방식 변경
- `z`: 현재 디렉토리 크기 계산

**검색:**
- `/`: 검색 (파일명)
- `f`: 파일 필터

**기타:**
- `q`: 종료
- `?`: 도움말 보기
- `~`: 홈 디렉토리로 이동

### 종료 시 현재 디렉토리로 이동

yazi를 종료할 때 마지막 위치로 이동하려면 shell 함수를 추가합니다:

**Zsh (~/.zshrc):**

```bash
function ya() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
```

이제 `ya` 명령으로 yazi를 실행하면 종료 시 마지막 디렉토리로 이동합니다.

## 참고 자료

- [Yazi 공식 문서](https://yazi-rs.github.io/)
- [GitHub 리포지토리](https://github.com/sxyazi/yazi)
- [설정 가이드](https://yazi-rs.github.io/docs/configuration/yazi/)
