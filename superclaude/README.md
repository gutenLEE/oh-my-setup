# SuperClaude Framework

Claude Code를 강화하는 메타 프로그래밍 설정 시스템. 30개의 슬래시 커맨드, 16개의 AI 에이전트, 7개의 행동 모드, 8개의 MCP 서버 통합을 제공합니다.

- GitHub: https://github.com/SuperClaude-Org/SuperClaude_Framework
- PyPI: https://pypi.org/project/superclaude/
- 현재 버전: v4.2.0

## 요구사항

- Python 3.10 이상
- pipx
- Claude Code CLI

## 설치

### 1. pipx 설치

```bash
brew install pipx
pipx ensurepath
```

### 2. SuperClaude 설치

```bash
pipx install superclaude
```

### 3. 슬래시 커맨드 설치

```bash
superclaude install
```

설치 위치: `~/.claude/commands/sc/`

### 4. 설치 확인

```bash
superclaude doctor
superclaude install --list
```

## 슬래시 커맨드 목록 (30개)

커맨드는 모두 `/sc:커맨드명` 형식으로 사용합니다.

| 커맨드 | 설명 |
|--------|------|
| `/sc:implement` | 코드 구현 |
| `/sc:test` | 테스트 워크플로우 |
| `/sc:build` | 빌드 |
| `/sc:improve` | 코드 개선 |
| `/sc:cleanup` | 코드 정리 |
| `/sc:analyze` | 코드 분석 |
| `/sc:explain` | 코드 설명 |
| `/sc:troubleshoot` | 문제 해결 |
| `/sc:design` | 설계 |
| `/sc:document` | 문서화 |
| `/sc:research` | 웹 리서치 |
| `/sc:brainstorm` | 브레인스토밍 |
| `/sc:pm` | 프로젝트 관리 |
| `/sc:task` | 태스크 관리 |
| `/sc:workflow` | 워크플로우 |
| `/sc:estimate` | 작업 예측 |
| `/sc:spec-panel` | 스펙 패널 |
| `/sc:business-panel` | 비즈니스 패널 |
| `/sc:agent` | AI 에이전트 |
| `/sc:spawn` | 에이전트 생성 |
| `/sc:recommend` | 추천 |
| `/sc:select-tool` | 도구 선택 |
| `/sc:git` | Git 작업 |
| `/sc:index` | 인덱싱 |
| `/sc:index-repo` | 레포 인덱싱 |
| `/sc:load` | 컨텍스트 로드 |
| `/sc:save` | 컨텍스트 저장 |
| `/sc:reflect` | 회고 |
| `/sc:help` | 도움말 |
| `/sc` | 전체 커맨드 목록 보기 |

## MCP 서버 (선택 설치)

MCP 서버를 설치하면 성능이 2-3배 향상되고 토큰 사용량이 30-50% 감소합니다.

### 사용 가능한 서버 목록 확인

```bash
superclaude mcp --list
```

### 권장: AIRIS MCP Gateway (60개 이상 도구 통합)

```bash
superclaude mcp --servers airis-mcp-gateway
```

### 개별 서버 설치

```bash
# 특정 서버만 설치
superclaude mcp --servers tavily context7

# 대화형 설치
superclaude mcp
```

### 개별 서버 목록

| 서버 | 용도 | API 키 필요 |
|------|------|------------|
| `tavily` | 웹 검색 및 실시간 정보 수집 | TAVILY_API_KEY |
| `context7` | 라이브러리 공식 문서 조회 | - |
| `sequential-thinking` | 다단계 추론 | - |
| `serena` | 코드 분석 및 편집 | - |
| `playwright` | 브라우저 자동화 및 E2E 테스트 | - |
| `magic` | UI 컴포넌트 생성 | TWENTYFIRST_API_KEY |
| `morphllm-fast-apply` | 컨텍스트 인식 코드 수정 | MORPH_API_KEY |
| `chrome-devtools` | Chrome DevTools 디버깅 | - |

## 업데이트

```bash
pipx upgrade superclaude
superclaude install
```

## 제거

```bash
superclaude install --uninstall  # 커맨드 제거
pipx uninstall superclaude       # 패키지 제거
```
