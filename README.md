# oh-my-setup

개인 개발 환경 설정 및 스크립트 모음

## 구조

```
oh-my-setup/
├── ai/          # AI 관련 도구 설정
└── ...          # 기타 설정들
```

## 사용 방법

1. 저장소 클론:
```bash
git clone git@github.com-gutenlee:gutenLEE/oh-my-setup.git
cd oh-my-setup
```

2. 필요한 디렉토리로 이동하여 설정 적용:
```bash
cd ai
cp .sample.env .env
# .env 파일 편집 후 setup.sh 실행
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
