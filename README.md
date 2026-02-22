# oh-my-setup

개인 개발 환경 설정 및 스크립트 모음

## 구조

```
oh-my-setup/
├── ai/            # AI 관련 도구 설정 (Aider, Claude Code 등)
├── ghostty/       # Ghostty 터미널 설정
├── oh-my-posh/    # Oh My Posh 프롬프트 테마 설정
├── superclaude/   # SuperClaude Framework (Claude Code 확장)
├── yazi/          # Yazi 파일 관리자 설정
├── zsh/           # Zsh 설정 (Oh My Zsh + autosuggestions)
└── ...            # 기타 설정들
```

## 사용 방법

1. 저장소 클론:
```bash
git clone git@github.com-gutenlee:gutenLEE/oh-my-setup.git
cd oh-my-setup
```

2. 필요한 디렉토리로 이동하여 설정 적용:

**AI 도구:**
```bash
cd ai
cp .sample.env .env
# .env 파일 편집 후 setup.sh 실행
```

**Yazi 파일 관리자:**
```bash
cd yazi
mkdir -p ~/.config/yazi
cp yazi.toml ~/.config/yazi/yazi.toml
cp init.lua ~/.config/yazi/init.lua
ya pkg add yazi-rs/plugins:git  # Git 상태 표시 플러그인
```

**Ghostty 터미널:**
```bash
# 1. Ghostty 앱 설치
brew install --cask ghostty

# 2. 설정 파일 복사
cd ghostty

# macOS
cp config ~/Library/Application\ Support/com.mitchellh.ghostty/config

# Linux
mkdir -p ~/.config/ghostty
cp config ~/.config/ghostty/config
```

**Oh My Posh 프롬프트:**
```bash
cd oh-my-posh
brew install oh-my-posh
cp .sample.themes.json ~/themes.json
# ~/.zshrc 파일에 다음 추가:
# eval "$(oh-my-posh init zsh --config ~/themes.json)"
# export TERM=xterm-256color
```

**Zsh 설정:**
```bash
cd zsh
# 현재 .zshrc 백업
cp ~/.zshrc ~/.zshrc.backup
# Oh My Zsh + zsh-autosuggestions 설정 적용
cp .zshrc ~/.zshrc
source ~/.zshrc
```

**SuperClaude Framework:**
```bash
brew install pipx && pipx ensurepath
pipx install superclaude
superclaude install
# Claude Code 재시작 후 /sc 커맨드 사용 가능
```

## Git 설정 (gutenLEE 계정 사용)

이 저장소는 gutenLEE 계정으로 작업합니다.

### 로컬 설정 확인
```bash
git config --local user.name   # gutenLEE
git config --local user.email  # 3bmn1128@naver.com
```

### SSH 설정
`~/.ssh/config`에 다음이 설정되어 있어야 합니다:

```ssh
Host github.com-gutenlee
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_gutenlee
    AddKeysToAgent yes
    UseKeychain yes
    IdentitiesOnly yes
```

### 작업 흐름
```bash
# 변경사항 추가
git add .

# 커밋
git commit -m "your commit message"

# gutenLEE 계정으로 푸시
git push origin main
```

## 문제 해결

### npm 권한 오류
```bash
sudo chown -R $USER /usr/local/lib/node_modules
```

### SSH 인증 확인
```bash
ssh -T git@github.com-gutenlee
# "Hi gutenLEE!" 메시지가 나오면 성공
```

## 라이선스

MIT
