# Zsh 설정

Oh My Zsh 기반의 Zsh 설정 파일로, zsh-autosuggestions와 Oh My Posh 통합 지원을 포함합니다.

## 설치

### 1. Oh My Zsh 설치

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Zsh Autosuggestions 설치

```bash
brew install zsh-autosuggestions
```

### 3. Oh My Posh 설치 (선택사항)

Oh My Posh를 사용하려면:

```bash
brew install oh-my-posh

# Nerd Font 설치 (아이콘 표시용)
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

## 설정 적용

### 기본 적용 (Oh My Zsh + zsh-autosuggestions)

```bash
# 현재 .zshrc 백업
cp ~/.zshrc ~/.zshrc.backup

# 이 리포지토리의 .zshrc 복사
cp zsh/.zshrc ~/.zshrc

# 설정 적용
source ~/.zshrc
# 또는
exec zsh
```

### Oh My Posh 사용하기 (선택사항)

Oh My Posh를 사용하려면:

```bash
# 1. 테마 파일 복사 (oh-my-posh 디렉토리에서)
cp ../oh-my-posh/.sample.themes.json ~/themes.json

# 2. ~/.zshrc 편집
nano ~/.zshrc

# 3. 다음 라인 주석처리:
# ZSH_THEME="agnoster"  # <- 이 줄 주석처리

# 4. Oh My Posh 섹션의 주석 해제:
eval "$(oh-my-posh init zsh --config ~/themes.json)"
export TERM=xterm-256color

# 5. 적용
exec zsh
```

## 주요 설정

### Oh My Zsh 테마

기본적으로 **agnoster** 테마를 사용합니다:
- Git 브랜치 및 상태 표시
- 현재 디렉토리 표시
- 깔끔한 프롬프트 디자인

다른 테마를 사용하려면 `.zshrc`의 `ZSH_THEME` 값을 변경하세요:
```bash
ZSH_THEME="robbyrussell"  # 미니멀한 테마
ZSH_THEME="powerlevel10k/powerlevel10k"  # 강력한 커스터마이징
```

### Zsh Autosuggestions

- **기능**: 명령어 입력 시 회색 글씨로 이전 명령어 제안
- **사용법**: `Tab` 키로 제안 수락 (기본 설정)
  - 원래 기본값은 `→` (오른쪽 화살표) 키였지만, 더 편한 `Tab` 키로 변경되었습니다
- **커스터마이징**:
  ```bash
  # ~/.zshrc에 추가
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"  # 제안 색상 변경

  # 다른 키로 변경하려면 (예: Ctrl+Space)
  bindkey '^ ' autosuggest-accept  # Ctrl+Space

  # 오른쪽 화살표로 되돌리려면
  bindkey '^[[C' autosuggest-accept  # 오른쪽 화살표
  ```

### Oh My Posh (선택사항)

- **기능**: Oh My Zsh 테마보다 더 풍부한 커스터마이징
- **테마**: `~/themes.json` 파일에서 설정
- **공식 테마**: https://ohmyposh.dev/docs/themes

## 플러그인

현재 활성화된 플러그인:
```bash
plugins=(git)
```

### 추천 플러그인

더 많은 플러그인을 추가하려면 `.zshrc`의 `plugins` 배열에 추가:

```bash
plugins=(
  git
  docker
  kubectl
  npm
  yarn
  z
  zsh-syntax-highlighting
)
```

**인기 플러그인:**
- `git`: Git 단축 명령어 (`gst`, `gco`, `gaa` 등)
- `docker`: Docker 자동완성
- `kubectl`: Kubernetes 명령어 자동완성
- `z`: 자주 방문한 디렉토리로 빠르게 이동
- `zsh-syntax-highlighting`: 명령어 구문 강조

**플러그인 설치 예:**
```bash
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## 기본 사용법

### Oh My Zsh 명령어

```bash
# 테마 적용 후 재시작
omz reload

# Oh My Zsh 업데이트
omz update

# 플러그인 목록 확인
omz plugin list
```

### 유용한 팁

**1. 명령어 히스토리 검색**
```bash
# Ctrl + R: 명령어 히스토리 검색
# 또는
history | grep "검색어"
```

**2. 디렉토리 빠른 이동**
```bash
# z 플러그인 사용 (활성화 필요)
z 디렉토리명  # 자주 방문한 디렉토리로 이동
```

**3. Git 단축 명령어**
```bash
gst    # git status
gco    # git checkout
gaa    # git add --all
gcmsg  # git commit -m
gp     # git push
gl     # git pull
```

**4. 별칭(Alias) 확인**
```bash
alias  # 모든 별칭 확인
```

## 환경 변수 (PATH)

현재 설정에 포함된 PATH:
- `$HOME/bin`
- `$HOME/.local/bin`
- qtl-cli
- Antigravity
- opencode
- Bun

**새로운 PATH 추가하려면:**
```bash
# ~/.zshrc 끝에 추가
export PATH="$HOME/your-custom-path:$PATH"
```

## 다른 노트북에서 사용하기

### 1. 리포지토리 클론

```bash
git clone git@github.com-gutenlee:gutenLEE/oh-my-setup.git
cd oh-my-setup
```

### 2. 필수 도구 설치

```bash
# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
brew install zsh-autosuggestions

# Oh My Posh (선택사항)
brew install oh-my-posh
brew install --cask font-jetbrains-mono-nerd-font
```

### 3. 설정 적용

```bash
# 현재 .zshrc 백업
cp ~/.zshrc ~/.zshrc.backup

# 새 설정 적용
cp zsh/.zshrc ~/.zshrc

# 환경 변수 조정
# .zshrc의 개인별 PATH 설정(qtl-cli, antigravity 등)을
# 새 노트북 환경에 맞게 수정하세요
nano ~/.zshrc

# 적용
exec zsh
```

### 4. 개인 설정 커스터마이징

새 노트북에서 다음 섹션을 환경에 맞게 수정:
- qtl-cli 경로
- Antigravity 경로
- opencode 경로
- 기타 개인 PATH 설정

## 문제 해결

### Autosuggestions가 작동하지 않는 경우

```bash
# zsh-autosuggestions 설치 확인
brew list | grep zsh-autosuggestions

# 설치 경로 확인
ls $(brew --prefix)/share/zsh-autosuggestions/

# .zshrc에서 source 구문 확인
grep autosuggestions ~/.zshrc
```

### Oh My Posh 아이콘이 깨지는 경우

Nerd Font가 설치되고 터미널에 적용되었는지 확인:
```bash
# 설치된 폰트 확인
brew list --cask | grep font

# Ghostty 설정
# ~/.config/ghostty/config에 추가:
# font-family = "JetBrainsMono Nerd Font"
```

### 프롬프트가 느린 경우

Git 리포지토리에서 프롬프트가 느려질 수 있습니다:
```bash
# .zshrc에 추가
DISABLE_UNTRACKED_FILES_DIRTY="true"
```

## 참고 자료

- [Oh My Zsh 공식 문서](https://ohmyz.sh/)
- [Oh My Zsh 플러그인](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)
- [Oh My Zsh 테마](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [Oh My Posh](https://ohmyposh.dev/)
