---
name: add-tool-config
description: Add a new tool configuration directory with setup files and documentation
disable-model-invocation: true
user-invocable: true
argument-hint: [tool-name]
---

# Add Tool Configuration

Add a new tool configuration to the oh-my-setup repository following the established pattern.

## Task

Create or update a complete configuration setup for **$ARGUMENTS** including:

1. **Check and create directory structure**
   - Check if `$ARGUMENTS/` directory already exists
   - If exists: Inform user this will update existing files
   - If not exists: Create `$ARGUMENTS/` directory in the repository root

2. **Gather information from user**
   Use the AskUserQuestion tool to ask:
   - What is the primary config file name? (e.g., "config", "yazi.toml", ".zshrc")
   - Where should the config file be installed? (e.g., "~/.config/yazi/yazi.toml", "~/.zshrc")
   - What is the installation method? (e.g., "Homebrew", "curl", "npm", "Manual")
   - Any additional dependencies or setup steps?

3. **Create or update config file**
   - If config file exists: Read it first, then update with improvements
   - If not exists: Create the primary configuration file in `$ARGUMENTS/`
   - Add helpful comments explaining key settings
   - Include common options as commented examples

4. **Create or update README.md**
   - If README.md exists: Read it first, then enhance with missing sections
   - If not exists: Create new README.md
   Follow this structure:
   ```markdown
   # [Tool Name] 설정

   [Brief description in Korean]

   ## 설치

   ### [Installation method]
   [Installation commands]

   ### 추가 의존성 (선택사항)
   [Optional dependencies if any]

   ## 설정 적용

   [How to copy/apply config files]

   ## 주요 설정

   [Explain key configuration options]

   ## 기본 사용법

   ### 실행
   [How to run the tool]

   ### 기본 단축키 / 명령어
   [Common shortcuts or commands]

   ### 유용한 팁
   [Additional tips if any]

   ## 참고 자료

   - [Official documentation links]
   ```

5. **Update root README.md**
   - Add `$ARGUMENTS/` to the project structure section
   - Add setup example to the usage section

   Example additions:
   ```markdown
   ## 구조
   oh-my-setup/
   ├── existing/
   ├── $ARGUMENTS/    # [Tool description]

   ## 사용 방법
   **[Tool Name]:**
   ```bash
   cd $ARGUMENTS
   [setup commands]
   ```
   ```

6. **Create todo list and track progress**
   Use TodoWrite to create and track:
   - Check and create/update directory
   - Gather user information
   - Create/update config file
   - Create/update README.md
   - Update root README.md
   - Git commit and push

   Mark each task as completed as you finish it.

## Guidelines

- **Follow existing patterns**: Look at `yazi/`, `ghostty/`, `ai/` for reference
- **Korean documentation**: Write README.md in Korean for consistency
- **Detailed instructions**: Include installation, setup, and basic usage
- **Config comments**: Add helpful comments in config files
- **Complete structure**: Don't skip any steps

## After completion

1. **Inform the user** about:
   - Files created or updated
   - Summary of changes made

2. **Git commit and push**
   - Run `git status` to show changes
   - Run `git add .` to stage all changes
   - Create a commit with message:
     - If new: `feat: Add [tool-name] configuration`
     - If update: `docs: Update [tool-name] configuration`
   - Push to remote: `git push origin main`

3. **Next steps**
   - How to test/apply the configuration
   - Suggest testing the config in their local environment

## Example usage

```
/add-tool-config tmux
/add-tool-config neovim
/add-tool-config zsh
```
