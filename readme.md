# git 提交记录格式限制和生成changelog

## 安装

git 拉取项目后，首先执行.githooks目录下的脚本。将git的hooks脚本复制到.git目录下

## 生成changelog

1. 安装 conventional-changelog

```
npm install -g conventional-changelog-cli
```

2. 手动生成

```
conventional-changelog -p angular -i CHANGELOG.md -s
```

上述命令的含义是：

-p angular: 使用 angular 预设（基于 Angular 项目的提交规范）。
-i CHANGELOG.md: 指定输入文件，如果文件不存在会创建该文件。
-s: 生成 Changelog 后保存到指定文件。

## 提交格式说明

要求格式为：

```
<type>(<scope>): <subject>
```

1. type是类型，值如下：

   - feat: 新功能（feature）
   - fix: 修补bug
   - docs: 文档
   - style： 格式
   - refactor: 重构
   - perf: 性能
   - test: 增加测试或者修改测试
   - build: 影响构建系统或外部依赖项的更改
   - ci: 对CI配置文件和脚本的更改
   - chore：对非 src 和 test目录的修改
   - revert：Revert a commit

2. scope 是修改所属功能模块，可选
3. subject 是提交修改的具体内容