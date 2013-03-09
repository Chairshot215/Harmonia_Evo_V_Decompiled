.class public Lcom/android/mms/MMSBackupRestoreService;
.super Lcom/htc/util/backup/BackupRestoreService;
.source "MMSBackupRestoreService.java"


# static fields
.field static final DEBUG:Z = true


# instance fields
.field private final SP_DEFAULT:Ljava/lang/String;

.field private final SP_PREFERENCE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/util/backup/BackupRestoreService;-><init>()V

    .line 29
    const-string v0, "com.android.mms_preferences.xml"

    iput-object v0, p0, Lcom/android/mms/MMSBackupRestoreService;->SP_PREFERENCE:Ljava/lang/String;

    .line 30
    const-string v0, "_has_set_default_values.xml"

    iput-object v0, p0, Lcom/android/mms/MMSBackupRestoreService;->SP_DEFAULT:Ljava/lang/String;

    .line 32
    const-string v0, "MMSBackupRestoreService"

    iput-object v0, p0, Lcom/android/mms/MMSBackupRestoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MMSBackupRestoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Cursor Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MMSBackupRestoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Databases Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
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
    .line 54
    const-string v0, "MMSBackupRestoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineAction: E parameter check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "com.android.mms_preferences.xml"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_has_set_default_values.xml"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    sget-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->SKIP:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    .line 58
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->SKIP:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    goto :goto_0
.end method

.method public initBackup()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/htc/util/backup/BackupRestoreService;->initBackup()V

    .line 37
    return-void
.end method
