.class public Lcom/htc/android/worldclock/WorldClockBRAgentService;
.super Lcom/htc/util/backup/BackupRestoreService;
.source "WorldClockBRAgentService.java"


# instance fields
.field private final DB_ALARM:Ljava/lang/String;

.field private final SP_ALARM:Ljava/lang/String;

.field private final SP_ALARMCLOCK:Ljava/lang/String;

.field private final SP_STOPWATCH:Ljava/lang/String;

.field private final SP_TIMER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/util/backup/BackupRestoreService;-><init>()V

    .line 14
    const-string v0, "alarms.db"

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockBRAgentService;->DB_ALARM:Ljava/lang/String;

    .line 16
    const-string v0, "AlarmClock.xml"

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockBRAgentService;->SP_ALARMCLOCK:Ljava/lang/String;

    .line 17
    const-string v0, "alarm.xml"

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockBRAgentService;->SP_ALARM:Ljava/lang/String;

    .line 18
    const-string v0, "stopwatch.xml"

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockBRAgentService;->SP_STOPWATCH:Ljava/lang/String;

    .line 19
    const-string v0, "timer.xml"

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClockBRAgentService;->SP_TIMER:Ljava/lang/String;

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 88
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 89
    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 p1, 0x0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Cursor Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 101
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Databases Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public convertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "restoreModel"
    .parameter "restoreVersion"
    .parameter "restoreFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 73
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockBRAgentService;->mVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/util/backup/Version;->parse(Ljava/lang/String;)Lcom/htc/util/backup/Version;

    move-result-object v0

    .line 74
    .local v0, currentVersion:Lcom/htc/util/backup/Version;
    invoke-static {p2}, Lcom/htc/util/backup/Version;->parse(Ljava/lang/String;)Lcom/htc/util/backup/Version;

    move-result-object v1

    .line 75
    .local v1, resVersion:Lcom/htc/util/backup/Version;
    const-string v2, "alarms.db"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v1, v0}, Lcom/htc/util/backup/Version;->lessEqualThan(Lcom/htc/util/backup/Version;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v2, "xml"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v1, v0}, Lcom/htc/util/backup/Version;->lessEqualThan(Lcom/htc/util/backup/Version;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public determineAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .locals 3
    .parameter "restoreModel"
    .parameter "restoreVersion"
    .parameter "restoreFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 40
    const-string v2, "alarms.db"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClockBRAgentService;->mVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/util/backup/Version;->parse(Ljava/lang/String;)Lcom/htc/util/backup/Version;

    move-result-object v0

    .line 42
    .local v0, currentVersion:Lcom/htc/util/backup/Version;
    invoke-static {p2}, Lcom/htc/util/backup/Version;->parse(Ljava/lang/String;)Lcom/htc/util/backup/Version;

    move-result-object v1

    .line 43
    .local v1, resVersion:Lcom/htc/util/backup/Version;
    invoke-virtual {v1, v0}, Lcom/htc/util/backup/Version;->lessEqualThan(Lcom/htc/util/backup/Version;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    sget-object v2, Lcom/htc/util/backup/BackupRestoreService$ActionType;->OVERWRITE:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    .line 49
    .end local v0           #currentVersion:Lcom/htc/util/backup/Version;
    .end local v1           #resVersion:Lcom/htc/util/backup/Version;
    :goto_0
    return-object v2

    .line 46
    .restart local v0       #currentVersion:Lcom/htc/util/backup/Version;
    .restart local v1       #resVersion:Lcom/htc/util/backup/Version;
    :cond_0
    sget-object v2, Lcom/htc/util/backup/BackupRestoreService$ActionType;->CONVERT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    goto :goto_0

    .line 49
    .end local v0           #currentVersion:Lcom/htc/util/backup/Version;
    .end local v1           #resVersion:Lcom/htc/util/backup/Version;
    :cond_1
    sget-object v2, Lcom/htc/util/backup/BackupRestoreService$ActionType;->SKIP:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    goto :goto_0
.end method
