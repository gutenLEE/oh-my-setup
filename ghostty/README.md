# Ghostty 설정

Ghostty 터미널 에뮬레이터 설치 및 설정 파일 관리

## 설치

```bash
brew install --cask ghostty
```

## 설정 파일 경로

**macOS**
```
~/Library/Application Support/com.mitchellh.ghostty/config
```

**Linux** (XDG 표준 경로)
```
~/.config/ghostty/config
```

## 설명

Ghostty는 빠르고 가벼운 네이티브 터미널 에뮬레이터입니다. 이 디렉토리에서는 Ghostty의 설정 파일을 관리합니다.

## 주요 설정 항목

Ghostty 설정 파일에서 다음 항목들을 커스터마이징할 수 있습니다:

- 폰트 및 폰트 크기
- 색상 테마 (컬러 스킴)
- 키바인딩
- 윈도우 설정 (투명도, 패딩 등)
- 쉘 설정
- 기타 터미널 동작 설정

## 사용 방법

1. 현재 설정 백업:
```bash
cp "/Users/youhee/Library/Application Support/com.mitchellh.ghostty/config" ./config
```

2. 설정 복원:
```bash
cp ./config "/Users/youhee/Library/Application Support/com.mitchellh.ghostty/config"
```

3. Ghostty 재시작하여 설정 적용

## 참고

- [Ghostty 공식 문서](https://ghostty.org/)
- 설정 파일은 일반 텍스트 형식으로 작성됩니다
- 변경 사항은 Ghostty 재시작 시 적용됩니다
