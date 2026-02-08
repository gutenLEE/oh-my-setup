# Ghostty 단축키 가이드

## 화면 분할 (Split)

### 기본 단축키 (macOS)

**분할 생성:**
- `⌘ + D`: 수평 분할 (옆으로)
- `⌘ + Shift + D`: 수직 분할 (위아래로)

**분할 닫기:**
- `Ctrl + D`: 현재 분할 닫기 (셸 종료)
- `Ctrl + Shift + W`: 현재 서피스 닫기

**분할 간 이동:**
- `Ctrl + Alt + ↑`: 위쪽 분할로 이동
- `Ctrl + Alt + ↓`: 아래쪽 분할로 이동
- `Ctrl + Alt + ←`: 왼쪽 분할로 이동
- `Ctrl + Alt + →`: 오른쪽 분할로 이동

---

## 커스텀 키바인딩 예제

### Vim 스타일 네비게이션

```conf
# 분할 이동 (Vim 스타일)
keybind = opt+h=goto_split:left
keybind = opt+j=goto_split:bottom
keybind = opt+k=goto_split:top
keybind = opt+l=goto_split:right

# 분할 생성
keybind = opt+shift+h=new_split:left
keybind = opt+shift+j=new_split:down
keybind = opt+shift+k=new_split:up
keybind = opt+shift+l=new_split:right
```

### iTerm2 스타일

```conf
# 분할 생성
keybind = cmd+d=new_split:right
keybind = cmd+shift+d=new_split:down

# 분할 이동
keybind = cmd+opt+left=goto_split:left
keybind = cmd+opt+right=goto_split:right
keybind = cmd+opt+up=goto_split:top
keybind = cmd+opt+down=goto_split:bottom
```

### Emacs 스타일 (시퀀스 키바인딩)

```conf
keybind = ctrl+x>2=new_split:right
keybind = ctrl+x>3=new_split:down
```

---

## 탭 관리

**탭 생성/이동:**
- `⌘ + T`: 새 탭
- `⌘ + #`: 특정 탭으로 이동 (1-9)
- `⌘ + Shift + [`: 이전 탭
- `⌘ + Shift + ]`: 다음 탭
- `⌘ + W`: 탭 닫기

---

## 창 관리

**전체화면:**
- `⌘ + Ctrl + F`: 전체화면 토글

**창 크기:**
- `equalize_splits`: 모든 분할 크기 균등화 (커스텀 키바인드 필요)

---

## 추가 유용한 설정

### 포커스되지 않은 분할 투명도

```conf
# 포커스 없는 분할을 살짝 어둡게 표시
unfocused-split-opacity = 0.8
```

### 분할 크기 균등화

```conf
keybind = cmd+shift+e=equalize_splits
```

---

## 분할 방향 옵션

- `new_split:right` - 오른쪽으로 분할
- `new_split:left` - 왼쪽으로 분할
- `new_split:up` - 위로 분할
- `new_split:down` - 아래로 분할
- `new_split:auto` - 자동 선택

---

## 사용 팁

1. **분할 + Yazi**: 한 쪽에서 `yazi` 파일 매니저 실행, 다른 쪽에서 작업
2. **로그 모니터링**: 한 쪽은 로그 tail, 다른 쪽은 개발
3. **테스트**: 한 쪽은 서버 실행, 다른 쪽은 테스트/디버깅
4. **Vim 스타일 선호**: Vim 사용자라면 opt+hjkl 조합 추천
5. **tmux 없이 사용**: Ghostty의 네이티브 분할은 tmux 없이도 충분히 빠르고 강력

---

## 참고 링크

- [Ghostty 공식 키바인딩 문서](https://ghostty.org/docs/config/keybind/reference)
- [Ghostty 설정 레퍼런스](https://ghostty.org/docs/config/reference)
