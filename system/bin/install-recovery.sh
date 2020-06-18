#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:12032896:d68e3544eb8f04ca19cdedc4fcaca2c98ee3ad02; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10539904:957405a3b51176e15bf71c00cf51afdfdbcce79f EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery d68e3544eb8f04ca19cdedc4fcaca2c98ee3ad02 12032896 957405a3b51176e15bf71c00cf51afdfdbcce79f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
