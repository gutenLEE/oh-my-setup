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
