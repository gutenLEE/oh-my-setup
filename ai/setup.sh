#!/bin/bash

# .env 파일 로드 함수
load_env() {
    if [ -f ".env" ]; then
        echo "⚙️ .env 파일에서 환경 변수를 로드하는 중..."
        # .env 파일에서 환경 변수 로드 (주석 제외)
        while IFS= read -r line; do
            # 빈 줄과 주석 무시
            if [[ ! "$line" =~ ^# && -n "$line" ]]; then
                export "$line"
                echo "$line"
            fi
        done < .env
        echo "✅ .env 파일에서 환경 변수를 로드했습니다."
        return 0
    else
        echo "⚠️  .env 파일이 없습니다."
        return 1
    fi
}

# 시작 메시지
echo "🤖 AI CLI 도구 설치 스크립트"
echo "===================================="

# .env 파일 로드 시도
load_env

# Node.js와 npm이 설치되어 있는지 확인
echo ""
echo "🔍 Node.js 및 npm 확인 중..."
if ! command -v npm &> /dev/null; then
    echo "❌ npm이 설치되어 있지 않습니다."
    echo "설치 방법: https://nodejs.org/ 에서 다운로드하거나"
    echo "Homebrew 사용: brew install node"
    exit 1
fi
echo "✅ Node.js 및 npm이 설치되어 있습니다."

echo ""
echo "===================================="
echo "💾 AI CLI 도구 설치 시작"
echo "===================================="

# Claude CLI 설치
echo ""
echo "🤖 Claude CLI 설치 중..."
npm install -g @anthropic-ai/claude-code

if [ $? -eq 0 ]; then
    echo "✅ Claude CLI 설치가 완료되었습니다!"
else
    echo "❌ Claude CLI 설치 중 오류가 발생했습니다."
    exit 1
fi

# Gemini CLI 설치
echo ""
echo "🕸️ Gemini CLI 설치 중..."
npm install -g @google/gemini-cli

if [ $? -eq 0 ]; then
    echo "✅ Gemini CLI 설치가 완료되었습니다!"
else
    echo "❌ Gemini CLI 설치 중 오류가 발생했습니다."
    exit 1
fi

# Qwen Code CLI 설치
echo ""
echo "💻 Qwen Code CLI 설치 중..."
npm install -g @qwen-code/qwen-code@latest

if [ $? -eq 0 ]; then
    echo "✅ Qwen Code CLI 설치가 완료되었습니다!"
else
    echo "❌ Qwen Code CLI 설치 중 오류가 발생했습니다."
    exit 1
fi

claude mcp add playwright npx @playwright/mcp@latest
npx @jpisnice/shadcn-ui-mcp-server --github-api-key $GITHUB_PERSONAL_ACCESS_TOKEN
claude mcp add --transport http shadcn https://www.shadcn.io/api/mcp