# 智能生成 Commit Message

自动分析代码更改并生成符合规范的提交信息（Conventional Commits 格式）。

## 工作流程

1. **检查 Git 状态**
   - 运行 `git status` 查看当前仓库状态
   - 识别已暂存和未暂存的更改

2. **分析代码差异**
   - 运行 `git diff --staged` 查看已暂存的更改
   - 如果没有暂存的更改，运行 `git diff` 查看未暂存的更改
   - 分析以下内容：
     - 修改的文件类型（组件、扩展、工具类等）
     - 代码变更的性质（新增、修改、删除、重构等）
     - 影响范围和重要性

3. **查看提交历史**
   - 运行 `git log -10 --oneline` 查看最近 10 条提交
   - 了解项目的 commit message 风格和约定

4. **生成 Commit Message**
   - 基于 Conventional Commits 规范：

     ```text
     <type>(<scope>): <subject>

     <body>

     <footer>
     ```

   - **Type（类型）**：
     - `feat`: 新功能
     - `fix`: 修复 bug
     - `docs`: 文档变更
     - `style`: 代码格式（不影响代码运行的变动）
     - `refactor`: 重构（既不是新增功能，也不是修复 bug）
     - `perf`: 性能优化
     - `test`: 增加测试
     - `chore`: 构建过程或辅助工具的变动
     - `revert`: 回滚之前的 commit

   - **Scope（范围）**：
     - `button`: Button 组件相关
     - `card`: Card 样式相关
     - `background`: 背景动画相关
     - `loading`: 加载状态相关
     - `view-ext`: View 扩展相关
     - `component`: 通用组件相关
     - `utils`: 工具类相关
     - 或其他合适的模块名称

   - **Subject（主题）**：
     - 简洁描述（不超过 50 字符）
     - 不以句号结尾
     - 使用祈使句（如 "add" 而非 "added" 或 "adds"）

   - **Body（正文）**：
     - 详细描述更改内容
     - 说明 "为什么" 而非 "是什么"
     - 每行限制在 72 字符以内

   - **Footer（脚注）**：
     - 关联的 Issue
     - Breaking Changes 说明
     - 其他参考信息

5. **显示建议**
   - 展示生成的 commit message
   - 展示更改的文件列表
   - 展示代码差异摘要

6. **执行确认**
   - 询问用户是否使用生成的 commit message
   - 如果确认，执行：
     - `git add` （如果需要）
     - `git commit -m "message"`
   - 如果需要修改，允许用户编辑

## Commit Message 模板

### 简单更改

```text
feat(button): add loading state indicator
```

### 中等更改

```text
feat(background): add cosmic animated background

Implement cosmic theme with animated gradient and particle effects.
Supports dark mode and smooth transitions.

- Add Background+Cosmic.swift
- Add animated gradient layers
- Implement star field effect
- Add cosmic theme to BackgroundTheme enum
```

### 复杂更改

```text
refactor(button): redesign MagicButton component

Redesign MagicButton to support more customization options
while maintaining API compatibility. Split styles into
separate types for better maintainability.

- Create ButtonStyle enum
- Add size customization
- Split implementation by style type
- Update all existing button extensions
- Maintain backward compatibility
```

### Bug 修复

```text
fix(loading): resolve overlay z-index issue

Fix loading overlay not appearing on top of all content
by adjusting zPosition and using proper ZStack.

- Use .zIndex() modifier
- Adjust ZStack order
- Add safe area inset handling
```

## 示例输出

```text
📝 建议的 Commit Message:

feat(button): add icon support to MagicButton

Add icon parameter to MagicButton for SF Symbols and custom images.
Supports icon placement and sizing options.

- Add icon parameter to MagicButton
- Support SF Symbols and custom images
- Add iconSize and iconPlacement options
- Update previews with icon examples

Modified files:
  + Sources/MagicUI/Button/MagicButton.swift (modified)
  ~ Sources/MagicUI/Button/Previews.swift (modified)

是否使用此 commit message？(y/n/edit)
```

## 注意事项

- ✅ 使用中文或英文的 commit message（根据项目约定）
- ✅ 始终分析实际的代码差异
- ✅ 遵循项目的现有 commit 风格
- ✅ 使用清晰、描述性的语言
- ✅ 保持 subject 简洁（< 50 字符）
- ✅ 在 body 中解释 "为什么" 而非 "是什么"
- ✅ 使用 Emoji 前缀标识类型（可选）
  - ✨ feat
  - 🐛 fix
  - ♻️ refactor
  - 📝 docs
  - ⚡ perf
  - ✅ test
  - 🎨 chore
- ❌ 不要在没有用户确认的情况下执行 commit
- ❌ 不要忽略 staging area 的状态
- ❌ 不要生成过于通用的 commit message

## MagicUI 项目约定

### Commit Message 风格

MagicUI 使用带有 Emoji 前缀的 Conventional Commits：

```text
✨ feat(button): add icon support

feat(card): add gradient background option

🐛 fix(view-ext): resolve magicCentered constraint issue

♻️ refactor(loading): simplify loading overlay API

⚡ perf(background): optimize animation performance

📝 docs(readme): update installation instructions

✅ test(button): add button style tests

🎨 chore(format): apply swift-format
```

### 常用 Scope

- `button` - MagicButton 组件
- `card` - 卡片样式和扩展
- `background` - 背景动画
- `loading` - 加载状态组件
- `view-ext` - View 扩展
- `component` - 通用组件
- `utils` - 工具类和扩展

## 相关命令

- 使用 `/plan` 在实现复杂功能前进行规划
- 使用 `/code-review` 在 commit 前审查代码
- 使用 `/swift-check` 检查代码规范
