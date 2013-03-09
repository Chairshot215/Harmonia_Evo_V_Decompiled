.class Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;
.super Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImapIdleInstance"
.end annotation


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mNeedSyncMail:Z

.field private mRestartDpIfException:Z

.field private mServer:Lcom/htc/android/mail/server/Server;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1071
    invoke-direct {p0, v3}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    .line 1065
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    .line 1067
    iput-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    .line 1068
    iput-boolean v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mRestartDpIfException:Z

    .line 1069
    iput-boolean v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mNeedSyncMail:Z

    .line 1072
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    .line 1073
    iput-wide p2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    .line 1074
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JZZ)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "restartDpIfException"
    .parameter "needSyncMail"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1076
    invoke-direct {p0, v3}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    .line 1065
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    .line 1067
    iput-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    .line 1068
    iput-boolean v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mRestartDpIfException:Z

    .line 1069
    iput-boolean v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mNeedSyncMail:Z

    .line 1077
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    .line 1078
    iput-wide p2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    .line 1079
    iput-boolean p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mRestartDpIfException:Z

    .line 1080
    iput-boolean p5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mNeedSyncMail:Z

    .line 1081
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/4 v12, -0x1

    .line 1085
    const/4 v4, 0x0

    .line 1087
    .local v4, getAccountWakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    const-string v8, "GetAccount"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 1089
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1090
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v7

    if-ne v7, v12, :cond_0

    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v7

    if-eq v7, v13, :cond_2

    .line 1091
    :cond_0
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopDp(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    if-eqz v4, :cond_1

    const-string v7, "GetAccount"

    :goto_0
    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1185
    :cond_1
    return-void

    .line 1095
    :cond_2
    :try_start_1
    const-string v7, "GetAccount"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1096
    const/4 v4, 0x0

    .line 1098
    const/4 v5, 0x0

    .line 1100
    .local v5, serverPool:Lcom/htc/android/mail/server/ServerPool;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->isStoped()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_22

    .line 1101
    const/4 v2, 0x0

    .line 1102
    .local v2, enableDirectPushWakelock:Landroid/os/PowerManager$WakeLock;
    const/4 v6, 0x0

    .line 1103
    .local v6, startSyncPushWakelock:Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 1105
    .local v3, exceptionWakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    const-string v8, "EnableDirectPush"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 1107
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v7

    if-ne v7, v12, :cond_4

    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v7

    if-eq v7, v13, :cond_9

    .line 1109
    :cond_4
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopDp(Landroid/content/Context;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1173
    :try_start_3
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v7, :cond_5

    .line 1174
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v8, 0x0

    iput v8, v7, Lcom/htc/android/mail/server/Server;->state:I

    .line 1175
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5, v7, v0, v8}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 1177
    :cond_5
    if-eqz v2, :cond_6

    const-string v7, "EnableDirectPush"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1178
    :cond_6
    if-eqz v6, :cond_7

    const-string v7, "StartSync"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1179
    :cond_7
    if-eqz v3, :cond_8

    const-string v7, "exception"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1183
    :cond_8
    if-eqz v4, :cond_1

    const-string v7, "GetAccount"

    goto :goto_0

    .line 1113
    :cond_9
    :try_start_4
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v5

    .line 1114
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7, v0}, Lcom/htc/android/mail/server/ServerPool;->getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    .line 1116
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v7}, Lcom/htc/android/mail/server/Server;->close()V

    .line 1117
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v7}, Lcom/htc/android/mail/server/Server;->enableDirectPush()V

    .line 1118
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/server/Server;->setReadTimeout(I)V

    .line 1120
    iget-boolean v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mNeedSyncMail:Z

    if-eqz v7, :cond_a

    .line 1121
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mailservice/DirectPushService;->startSync(Landroid/content/Context;J)V

    .line 1124
    :cond_a
    const-string v7, "EnableDirectPush"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1125
    const/4 v2, 0x0

    .line 1127
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->isStoped()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1128
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "DirectPushService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start listen, accountId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_b
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v7}, Lcom/htc/android/mail/server/Server;->listen()V

    .line 1132
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    const-string v8, "StartSync"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 1134
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "DirectPushService"

    const-string v8, "new mail arrival"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_c
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mailservice/DirectPushService;->startSync(Landroid/content/Context;J)V

    .line 1137
    const-string v7, "StartSync"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1138
    const/4 v6, 0x0

    goto :goto_2

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    const-string v8, "IOException"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 1143
    const-string v7, "DirectPushService"

    const-string v8, "catch exception"

    invoke-static {v7, v8, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1144
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->isStoped()Z

    move-result v7

    if-nez v7, :cond_18

    .line 1145
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->stopListening()V

    .line 1146
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1147
    iget-boolean v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mRestartDpIfException:Z

    if-eqz v7, :cond_e

    .line 1148
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v7, :cond_d

    const-string v7, "DirectPushService"

    const-string v8, "Exception restart Dp"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_d
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    const-wide/32 v10, 0x493e0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/android/mail/mailservice/DirectPushService;->addRestartDpAlarm(Landroid/content/Context;JJ)V

    .line 1158
    :cond_e
    :goto_3
    const-string v7, "IOException"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1159
    const/4 v3, 0x0

    .line 1173
    :try_start_6
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v7, :cond_f

    .line 1174
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v8, 0x0

    iput v8, v7, Lcom/htc/android/mail/server/Server;->state:I

    .line 1175
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5, v7, v0, v8}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 1177
    :cond_f
    if-eqz v2, :cond_10

    const-string v7, "EnableDirectPush"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1178
    :cond_10
    if-eqz v6, :cond_11

    const-string v7, "StartSync"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1179
    :cond_11
    if-eqz v3, :cond_3

    const-string v7, "exception"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1183
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #enableDirectPushWakelock:Landroid/os/PowerManager$WakeLock;
    .end local v3           #exceptionWakelock:Landroid/os/PowerManager$WakeLock;
    .end local v5           #serverPool:Lcom/htc/android/mail/server/ServerPool;
    .end local v6           #startSyncPushWakelock:Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_12

    const-string v8, "GetAccount"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v4, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    :cond_12
    throw v7

    .line 1152
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v2       #enableDirectPushWakelock:Landroid/os/PowerManager$WakeLock;
    .restart local v3       #exceptionWakelock:Landroid/os/PowerManager$WakeLock;
    .restart local v5       #serverPool:Lcom/htc/android/mail/server/ServerPool;
    .restart local v6       #startSyncPushWakelock:Landroid/os/PowerManager$WakeLock;
    :cond_13
    :try_start_7
    const-string v7, "DirectPushService"

    const-string v8, "no network"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 1173
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :try_start_8
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v8, :cond_14

    .line 1174
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v9, 0x0

    iput v9, v8, Lcom/htc/android/mail/server/Server;->state:I

    .line 1175
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5, v8, v0, v9}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 1177
    :cond_14
    if-eqz v2, :cond_15

    const-string v8, "EnableDirectPush"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1178
    :cond_15
    if-eqz v6, :cond_16

    const-string v8, "StartSync"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1179
    :cond_16
    if-eqz v3, :cond_17

    const-string v8, "exception"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1173
    :cond_17
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1155
    .restart local v1       #e:Ljava/io/IOException;
    :cond_18
    :try_start_9
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v7, :cond_e

    const-string v7, "DirectPushService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dp is stop, accountId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1160
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1161
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    const-string v8, "Exception"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 1163
    const-string v7, "DirectPushService"

    const-string v8, "catch exception"

    invoke-static {v7, v8, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1164
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->isStoped()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1165
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->stopListening()V

    .line 1170
    :cond_19
    :goto_4
    const-string v7, "Exception"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1171
    const/4 v3, 0x0

    .line 1173
    :try_start_a
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v7, :cond_1a

    .line 1174
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v8, 0x0

    iput v8, v7, Lcom/htc/android/mail/server/Server;->state:I

    .line 1175
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5, v7, v0, v8}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 1177
    :cond_1a
    if-eqz v2, :cond_1b

    const-string v7, "EnableDirectPush"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1178
    :cond_1b
    if-eqz v6, :cond_1c

    const-string v7, "StartSync"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1179
    :cond_1c
    if-eqz v3, :cond_3

    const-string v7, "exception"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1167
    :cond_1d
    :try_start_b
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v7, :cond_19

    const-string v7, "DirectPushService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dp is stop, accountId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 1173
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1e
    :try_start_c
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v7, :cond_1f

    .line 1174
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v8, 0x0

    iput v8, v7, Lcom/htc/android/mail/server/Server;->state:I

    .line 1175
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5, v7, v0, v8}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 1177
    :cond_1f
    if-eqz v2, :cond_20

    const-string v7, "EnableDirectPush"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1178
    :cond_20
    if-eqz v6, :cond_21

    const-string v7, "StartSync"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 1179
    :cond_21
    if-eqz v3, :cond_3

    const-string v7, "exception"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v3, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 1183
    .end local v2           #enableDirectPushWakelock:Landroid/os/PowerManager$WakeLock;
    .end local v3           #exceptionWakelock:Landroid/os/PowerManager$WakeLock;
    .end local v6           #startSyncPushWakelock:Landroid/os/PowerManager$WakeLock;
    :cond_22
    if-eqz v4, :cond_1

    const-string v7, "GetAccount"

    goto/16 :goto_0
.end method

.method public stopListening()V
    .locals 4

    .prologue
    .line 1189
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopListening, accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->stoped()V

    .line 1191
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/Server;->close()V

    .line 1192
    :cond_1
    return-void
.end method
