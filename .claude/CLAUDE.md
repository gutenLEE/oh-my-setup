# CLAUDE.md

## 프로젝트 개요

oh-my-setup은 개인 개발 환경 설정 및 스크립트를 관리하는 리포지토리입니다.

## 프로젝트 구조

```
oh-my-setup/
├── ai/              # AI 에이전트 설정
│   ├── .sample.env  # 환경 변수 템플릿
│   ├── .gitignore
│   └── setup.sh     # AI 도구 설치 스크립트
├── ghostty/         # Ghostty 터미널 설정
│   ├── README.md    # Ghostty 설치 및 설정 가이드
│   ├── config       # Ghostty 설정 파일
│   └── shortcut.md  # Ghostty 단축키 가이드
└── README.md        # 프로젝트 전체 개요
```

## 디렉토리별 설명

### `/ai`
AI 에이전트 도구(Aider, Claude Code 등) 설치 및 설정 스크립트

**파일:**
- `setup.sh`: AI 도구 자동 설치 스크립트
- `.sample.env`: API 키 등 환경 변수 템플릿
- `.env`: 실제 환경 변수 (git ignored)

### `/ghostty`
Ghostty 터미널 에뮬레이터 설정 파일 및 가이드

**파일:**
- `config`: Ghostty 설정 파일 (`~/.config/ghostty/config`로 복사)
- `README.md`: Ghostty 설치 및 설정 방법
- `shortcut.md`: 화면 분할, 탭 관리 등 단축키 가이드

## 작업 원칙

### 1. 문서 우선
- 새로운 설정이나 도구를 추가할 때는 반드시 README.md 또는 별도 가이드 문서 작성
- 설정 파일에는 주석으로 설명 추가

### 2. 템플릿 제공
- 민감한 정보(API 키 등)는 `.sample.*` 템플릿 파일 제공
- 실제 파일은 `.gitignore`에 추가

### 3. 디렉토리 구조
- 도구/카테고리별로 디렉토리 분리
- 각 디렉토리는 독립적으로 사용 가능하도록 구성

### 4. Git 설정
- 이 저장소는 gutenLEE 계정으로 작업
- SSH 키: `~/.ssh/id_ed25519_gutenlee`
- Remote: `git@github.com-gutenlee:gutenLEE/oh-my-setup.git`

## 새로운 도구 추가 시

1. 도구명으로 디렉토리 생성 (예: `zsh/`, `tmux/`)
2. 설정 파일 추가
3. README.md 작성 (설치 방법, 사용법)
4. 필요시 설치 스크립트 작성
5. 루트 README.md에 디렉토리 추가

## 파일 네이밍

- 설정 파일: `config`, `.zshrc`, `.tmux.conf` 등 (원본 이름 유지)
- 가이드 문서: `README.md`, `shortcut.md`, `tips.md` 등
- 스크립트: `setup.sh`, `install.sh` 등
- 템플릿: `.sample.*`

## 스타일 가이드

### Markdown
- 제목은 한글로 작성
- 코드 블록은 언어 명시
- 명령어 예제는 `bash` 코드 블록으로
- 중요한 내용은 **볼드**로 강조

### Shell Script
- shebang 명시: `#!/usr/bin/env bash`
- 에러 처리: `set -e`
- 함수 사용으로 가독성 향상
- 주석으로 각 섹션 설명

## 도구 추가 로드맵

- [ ] Zsh 설정 (Oh My Zsh, plugins)
- [ ] Tmux 설정
- [ ] Neovim 설정
- [ ] Git 설정 (글로벌 .gitconfig, .gitignore_global)
- [ ] macOS 기본 설정 스크립트
- [ ] Homebrew 패키지 리스트
