#!/bin/bash
# 注册本地插件到 Claude Code - 无需官方市场资格

PLUGIN_SOURCE_DIR="$HOME/projects/sshfs-mount/plugins/sshfs-mount"
PLUGIN_CACHE_DIR="$HOME/.claude/plugins/cache/local-plugins/sshfs-mount"

echo "=============================================="
echo "注册本地 SSHFS Mount 插件"
echo "=============================================="

# 创建缓存目录
mkdir -p "$PLUGIN_CACHE_DIR"

# 复制插件文件
echo "复制插件文件到缓存目录..."
cp -r "$PLUGIN_SOURCE_DIR/.claude-plugin" "$PLUGIN_CACHE_DIR/"
cp -r "$PLUGIN_SOURCE_DIR/skills" "$PLUGIN_CACHE_DIR/"
cp -r "$PLUGIN_SOURCE_DIR/commands" "$PLUGIN_CACHE_DIR/"
cp -r "$PLUGIN_SOURCE_DIR/lib" "$PLUGIN_CACHE_DIR/"
cp -r "$PLUGIN_SOURCE_DIR/bin" "$PLUGIN_CACHE_DIR/"

echo "✓ 插件文件已复制到：$PLUGIN_CACHE_DIR"

echo ""
echo "=============================================="
echo "下一步操作"
echo "=============================================="
echo ""
echo "由于 Claude Code 插件配置需要在 Claude Code 内部完成，请："
echo ""
echo "1. 启动 Claude Code (如果当前已启动，请重启)"
echo "2. 运行以下命令安装插件："
echo ""
echo "   /plugins install $PLUGIN_CACHE_DIR"
echo ""
echo "或者手动编辑 ~/.claude/settings.json 添加："
echo '   "sshfs-mount@local": true'
echo ""
echo "=============================================="
