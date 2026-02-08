# add-tool-config 사용 예제

## 예제 1: tmux 설정 추가

```
/add-tool-config tmux
```

**Claude가 질문할 내용:**
1. 주 설정 파일 이름: `.tmux.conf`
2. 설치 위치: `~/.tmux.conf`
3. 설치 방법: `Homebrew`
4. 추가 의존성: `tpm (Tmux Plugin Manager)`

**생성되는 파일:**
- `tmux/.tmux.conf` - tmux 설정 파일
- `tmux/README.md` - 설치 및 사용 가이드
- 루트 `README.md` 업데이트

## 예제 2: Neovim 설정 추가

```
/add-tool-config neovim
```

**Claude가 질문할 내용:**
1. 주 설정 파일 이름: `init.lua`
2. 설치 위치: `~/.config/nvim/init.lua`
3. 설치 방법: `Homebrew`
4. 추가 의존성: `ripgrep, fd, nodejs (for LSP)`

**생성되는 파일:**
- `neovim/init.lua` - Neovim 설정
- `neovim/README.md` - 플러그인 및 키맵 가이드
- 루트 `README.md` 업데이트

## 예제 3: Zsh 설정 추가

```
/add-tool-config zsh
```

**Claude가 질문할 내용:**
1. 주 설정 파일 이름: `.zshrc`
2. 설치 위치: `~/.zshrc`
3. 설치 방법: `Homebrew (oh-my-zsh)`
4. 추가 의존성: `zsh-autosuggestions, zsh-syntax-highlighting`

**생성되는 파일:**
- `zsh/.zshrc` - Zsh 설정 파일
- `zsh/README.md` - Oh My Zsh 플러그인 가이드
- 루트 `README.md` 업데이트

## 예제 4: Git 글로벌 설정 추가

```
/add-tool-config git
```

**Claude가 질문할 내용:**
1. 주 설정 파일 이름: `.gitconfig`
2. 설치 위치: `~/.gitconfig`
3. 설치 방법: `Manual (built-in)`
4. 추가 의존성: `.gitignore_global`

**생성되는 파일:**
- `git/.gitconfig` - Git 글로벌 설정
- `git/.gitignore_global` - 글로벌 gitignore
- `git/README.md` - Git 설정 및 alias 가이드
- 루트 `README.md` 업데이트

## 작업 흐름

### 새로운 도구 추가

1. **skill 실행**: `/add-tool-config [tool-name]`
2. **질문 응답**: Claude가 묻는 4가지 질문에 답변
3. **자동 생성**: 디렉토리, 설정 파일, README 자동 생성
4. **자동 커밋/푸시**: 변경사항이 자동으로 커밋되고 푸시됨
5. **설정 적용**: 안내에 따라 로컬 환경에 설정 적용

### 기존 도구 업데이트

1. **skill 실행**: `/add-tool-config [existing-tool-name]`
2. **업데이트 확인**: Claude가 기존 파일을 읽고 개선사항 적용
3. **질문 응답**: 필요시 추가 정보 입력
4. **자동 업데이트**: 설정 파일 및 README 개선
5. **자동 커밋/푸시**: `docs: Update [tool] configuration` 메시지로 커밋

## 예제 5: 기존 도구 업데이트

```
/add-tool-config yazi
```

**동작:**
- 기존 `yazi/` 디렉토리 감지
- 기존 설정 파일 및 README.md 읽기
- 누락된 섹션 추가 또는 개선사항 적용
- 커밋 메시지: `docs: Update yazi configuration`

## 팁

- **새 도구**: skill이 모든 파일을 자동으로 생성합니다
- **기존 도구**: skill이 기존 내용을 읽고 개선사항만 추가합니다
- **커밋 자동화**: 모든 작업 완료 후 자동으로 git commit & push
- **검토 권장**: 커밋 전에 변경사항을 확인하고 싶다면 skill 실행 전에 요청하세요
