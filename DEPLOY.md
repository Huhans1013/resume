# 简历部署指南 - GitHub Pages

## 快速部署步骤

### 第一步：创建 GitHub 仓库

1. 登录 [GitHub](https://github.com/)
2. 点击右上角 **+** → **New repository**
3. 仓库名称建议：`resume` 或 `huhansheng-resume`
4. 选择 **Public**（公开）
5. **不要** 勾选 "Initialize this repository with a README"
6. 点击 **Create repository**

### 第二步：本地初始化并推送

在简历文件所在目录打开终端，依次执行：

```bash
# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: 产品经理简历"

# 重命名主分支为 main
git branch -M main

# 添加远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# 推送到 GitHub
git push -u origin main
```

### 第三步：启用 GitHub Pages

1. 进入 GitHub 仓库页面
2. 点击 **Settings** → 左侧 **Pages**
3. **Source** 选择 `Deploy from a branch`
4. **Branch** 选择 `main`，文件夹选 `/ (root)`
5. 点击 **Save**

等待 1-2 分钟，你的简历就会发布成功！

访问地址：`https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

---

## 自定义域名（可选）

如果想用自定义域名（如 `resume.huhansheng.com`）：

1. 在仓库中添加 `CNAME` 文件，内容为你的域名
2. 在域名 DNS 添加 CNAME 记录指向 `YOUR_USERNAME.github.io`

---

## 后续更新

修改简历后，推送更新：

```bash
git add resume.html
git commit -m "Update resume"
git push
```

GitHub Pages 会自动更新，通常 1-2 分钟生效。

---

## 需要帮助？

遇到问题可以检查：
- GitHub Actions 页面查看部署状态
- 确保仓库是 Public 状态
- 检查 Settings → Pages 的配置
