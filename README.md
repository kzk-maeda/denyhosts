# 検証用環境
- docker-composeで作成
- denyhostsをinstall済

# denyhosts
## 設定ファイル
- denyhostsの設定ファイルは下記に配置されている

```
-rw-r----- 1 root root 23997 Nov 24  2015 /etc/denyhosts.conf
```

- デフォルトで設定されている値は下記
```
SECURE_LOG = /var/log/auth.log
HOSTS_DENY = /etc/hosts.deny
PURGE_DENY =
BLOCK_SERVICE  = sshd
DENY_THRESHOLD_INVALID = 5
DENY_THRESHOLD_VALID = 10
DENY_THRESHOLD_ROOT = 1
DENY_THRESHOLD_RESTRICTED = 1
WORK_DIR = /var/lib/denyhosts
ETC_DIR = /etc
SUSPICIOUS_LOGIN_REPORT_ALLOWED_HOSTS=YES
HOSTNAME_LOOKUP=NO
LOCK_FILE = /run/denyhosts.pid
IPTABLES = /sbin/iptables
ADMIN_EMAIL = root@localhost
SMTP_HOST = localhost
SMTP_PORT = 25
SMTP_FROM = DenyHosts <nobody@localhost>
SMTP_SUBJECT = DenyHosts Report
ALLOWED_HOSTS_HOSTNAME_LOOKUP=NO
AGE_RESET_VALID=5d
AGE_RESET_ROOT=25d
AGE_RESET_RESTRICTED=25d
AGE_RESET_INVALID=10d
DAEMON_LOG = /var/log/denyhosts
DAEMON_SLEEP = 30s
DAEMON_PURGE = 1h
SYNC_UPLOAD = no
SYNC_DOWNLOAD = no
```

- Dockerfileの中で閾値を書き換える

## 検証
### 存在しないユーザーでのssh
