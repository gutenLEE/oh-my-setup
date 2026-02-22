# MCP (Model Context Protocol) 서버 설정

Claude Code CLI에서 사용하는 MCP 서버 설정 가이드

## 개요

MCP(Model Context Protocol)는 AI 모델이 외부 도구 및 데이터 소스와 상호작용할 수 있도록 하는 프로토콜입니다. Claude Code에서는 `~/.claude.json`의 `mcpServers` 키를 통해 글로벌 MCP 서버를 등록합니다.

등록된 MCP 서버는 Claude Code 세션에서 도구(tool)로 사용할 수 있으며, 프로젝트별 설정(`--scope project`) 또는 사용자 글로벌 설정(`--scope user`)으로 구분됩니다.

## 요구사항

- Claude Code CLI (`claude` 명령어)
- Node.js / npm (`npx` 명령어)

## 설정 방법

### 방법 1: Claude Code CLI (권장)

**`--scope user` 플래그를 반드시 지정해야 글로벌(사용자) 레벨에 등록됩니다.** 미지정 시 현재 프로젝트에만 등록됩니다.

```bash
# API 키가 필요 없는 서버
claude mcp add <이름> --scope user -- npx -y <패키지>

# API 키가 필요한 서버
claude mcp add <이름> --scope user -e API_KEY=your-key -- npx -y <패키지>
```

### 방법 2: `~/.claude.json` 직접 편집

`claude.json.sample`의 `mcpServers` 섹션을 참고하여 `~/.claude.json`에 병합합니다.

> **주의:** `claude.json.sample`은 `~/.claude.json` 전체를 대체하는 파일이 아닙니다. `~/.claude.json`에는 사용자 ID, 세션 캐시 등 개인 정보가 포함되어 있으므로 `mcpServers` 섹션만 **병합**하세요.

```bash
# JSON 문법 검증
python3 -m json.tool ~/.claude.json
```

## 등록된 MCP 서버

### context7 - 라이브러리 공식 문서 조회

라이브러리/프레임워크의 최신 공식 문서와 코드 예제를 실시간으로 조회합니다.

```bash
claude mcp add context7 --scope user -- npx -y @upstash/context7-mcp@latest
```

### sequential-thinking - 다단계 추론

복잡한 문제를 단계적으로 분석하고 추론하는 구조화된 사고 도구입니다.

```bash
claude mcp add sequential-thinking --scope user -- npx -y @modelcontextprotocol/server-sequential-thinking
```

### playwright - 브라우저 자동화

Chromium 브라우저를 제어하여 웹 스크래핑, 테스트, 자동화 작업을 수행합니다.

```bash
claude mcp add playwright --scope user -- npx -y @playwright/mcp@latest
```

## 확인 및 관리

```bash
# 등록된 MCP 서버 목록 확인
claude mcp list

# 특정 서버 상세 정보 확인
claude mcp get <이름>

# 서버 제거
claude mcp remove <이름>
```

## 새로운 서버 추가

### API 키가 필요 없는 서버

```bash
claude mcp add <서버이름> --scope user -- npx -y <패키지명>
```

### API 키가 필요한 서버

```bash
claude mcp add <서버이름> --scope user -e API_KEY=your-api-key -- npx -y <패키지명>
```

`claude.json.sample`에서 `example-with-api-key` 항목을 참고하세요.

## 문제 해결

**npx 첫 실행 시 느린 경우**
패키지를 처음 다운로드하는 것이므로 정상입니다. 이후 실행은 캐시로 빠르게 동작합니다.

**서버가 인식되지 않는 경우**
Claude Code를 재시작하세요. MCP 서버 설정은 세션 시작 시 로드됩니다.

**JSON 문법 오류**
```bash
python3 -m json.tool ~/.claude.json
```

**서버 등록 확인**
```bash
claude mcp list
```

## 참고 자료

- [MCP 공식 문서](https://modelcontextprotocol.io)
- [Claude Code MCP 가이드](https://docs.anthropic.com/ko/docs/claude-code/mcp)
- [MCP 서버 목록 (awesome-mcp-servers)](https://github.com/punkpeye/awesome-mcp-servers)
