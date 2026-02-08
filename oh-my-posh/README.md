# Oh My Posh 설정

Oh My Posh는 터미널 프롬프트를 아름답게 커스터마이징할 수 있는 도구입니다.

## 설치 방법

### 1. Homebrew로 설치

```bash
brew install oh-my-posh
```

### 2. 테마 파일 준비

이 리포지토리의 샘플 테마 파일을 홈 디렉토리로 복사합니다:

```bash
cp .sample.themes.json ~/themes.json
```

또는 원하는 테마를 직접 만들 수도 있습니다:

```bash
touch ~/themes.json
```

### 3. Zsh 설정

`.zshrc` 파일을 편집합니다:

```bash
nano ~/.zshrc
```

파일 끝에 다음 두 줄을 추가합니다:

```bash
eval "$(oh-my-posh init zsh --config ~/themes.json)"
export TERM=xterm-256color
```

**참고:**
- `TERM=xterm-256color` 설정은 테마의 풍부한 색상 지원을 활성화합니다
- Ghostty를 사용한다면 256색상이 자동으로 지원됩니다

### 4. 변경사항 적용

터미널을 재시작하거나 다음 명령어를 실행합니다:

```bash
source ~/.zshrc
# 또는
exec zsh
```

## 테마 선택 및 커스터마이징

### 공식 테마 사용

1. [Oh My Posh 공식 테마 페이지](https://ohmyposh.dev/docs/themes) 방문
2. 원하는 테마의 JSON 코드 복사
3. `~/themes.json` 파일에 붙여넣기
4. 터미널 재시작: `exec zsh`

### 내장 테마 사용

Oh My Posh는 여러 내장 테마를 제공합니다. 다음 명령어로 모든 테마를 확인할 수 있습니다:

```bash
oh-my-posh config list
```

특정 테마를 사용하려면:

```bash
# .zshrc에서 다음과 같이 변경
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/테마이름.omp.json)"
```

## 추천 테마

- **agnoster**: 깔끔하고 정보가 많은 프롬프트
- **paradox**: 미니멀한 디자인
- **powerlevel10k_rainbow**: 다채로운 색상
- **atomic**: 간결하면서도 정보가 풍부함
- **jandedobbeleer**: Oh My Posh 개발자의 테마

## 폰트 설정

Oh My Posh 테마는 Nerd Font를 사용하여 아이콘을 표시합니다.

### Nerd Font 설치

```bash
brew tap homebrew/cask-fonts
brew install --cask font-meslo-lg-nerd-font
```

또는 다른 Nerd Font:

```bash
brew install --cask font-fira-code-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask font-jetbrains-mono-nerd-font
```

### Ghostty에서 폰트 설정

`~/.config/ghostty/config` 파일에 다음을 추가:

```
font-family = "MesloLGS Nerd Font"
font-size = 13
```

## 문제 해결

### 아이콘이 깨져 보이는 경우

Nerd Font가 제대로 설치되고 터미널에 적용되었는지 확인하세요:

```bash
# 설치된 폰트 확인
brew list --cask | grep font
```

### 프롬프트가 너무 느린 경우

Git 리포지토리에서 프롬프트가 느려질 수 있습니다. 테마 설정에서 불필요한 세그먼트를 제거하거나, cache를 활성화하세요.

### 테마가 적용되지 않는 경우

1. Oh My Posh가 제대로 설치되었는지 확인:
   ```bash
   oh-my-posh version
   ```

2. `.zshrc` 설정이 올바른지 확인
3. 테마 파일 경로가 정확한지 확인

## 참고 자료

- [Oh My Posh 공식 문서](https://ohmyposh.dev/)
- [테마 갤러리](https://ohmyposh.dev/docs/themes)
- [테마 커스터마이징 가이드](https://ohmyposh.dev/docs/configuration/overview)
- [Nerd Fonts](https://www.nerdfonts.com/)
