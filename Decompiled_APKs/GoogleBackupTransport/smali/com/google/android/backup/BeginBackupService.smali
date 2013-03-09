.class public Lcom/google/android/backup/BeginBackupService;
.super Landroid/app/Service;
.source "BeginBackupService.java"


# static fields
.field protected static final LOCAL_LOGV:Z


# instance fields
.field private binder:Landroid/os/Binder;

.field private mBackupStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRestoreObserver:Landroid/app/backup/RestoreObserver;

.field private mRestoreSession:Landroid/app/backup/RestoreSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "BackupTransportService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BeginBackupService;->binder:Landroid/os/Binder;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/backup/BeginBackupService;->mBackupStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    new-instance v0, Lcom/google/android/backup/BeginBackupService$1;

    invoke-direct {v0, p0}, Lcom/google/android/backup/BeginBackupService$1;-><init>(Lcom/google/android/backup/BeginBackupService;)V

    iput-object v0, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreObserver:Landroid/app/backup/RestoreObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/backup/BeginBackupService;)Landroid/app/backup/RestoreSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 58
    sget-boolean v0, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupTransportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeginBackupService.onBind to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/google/android/backup/BeginBackupService;->mBackupStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService;->mBackupStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0, p0}, Lcom/google/android/backup/BeginBackupService;->prepareRestore(Landroid/content/Context;)Z

    .line 62
    iget-object v0, p0, Lcom/google/android/backup/BeginBackupService;->mBackupStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    :cond_1
    monitor-exit v1

    .line 65
    const/4 v0, 0x2

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method performRestore([Landroid/app/backup/RestoreSet;)Z
    .locals 9
    .parameter "sets"

    .prologue
    const/4 v5, 0x0

    .line 107
    const/4 v4, 0x0

    .line 109
    .local v4, startedRestore:Z
    if-eqz p1, :cond_0

    :try_start_0
    array-length v6, p1

    if-nez v6, :cond_4

    .line 110
    :cond_0
    sget-boolean v6, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v6, :cond_1

    const-string v6, "BackupTransportService"

    const-string v7, "No restore sets found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_1
    if-nez v4, :cond_3

    .line 128
    iget-object v6, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v6}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    .line 134
    :cond_3
    :goto_0
    return v5

    .line 114
    :cond_4
    :try_start_1
    sget-boolean v5, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v5, :cond_5

    .line 115
    const-string v5, "BackupTransportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " available restores"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object v0, p1

    .local v0, arr$:[Landroid/app/backup/RestoreSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 117
    .local v3, s:Landroid/app/backup/RestoreSet;
    const-string v5, "BackupTransportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Landroid/app/backup/RestoreSet;->token:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v0           #arr$:[Landroid/app/backup/RestoreSet;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Landroid/app/backup/RestoreSet;
    :cond_5
    const/4 v5, 0x0

    aget-object v3, p1, v5

    .line 121
    .restart local v3       #s:Landroid/app/backup/RestoreSet;
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    iget-wide v6, v3, Landroid/app/backup/RestoreSet;->token:J

    iget-object v8, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreObserver:Landroid/app/backup/RestoreObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/backup/RestoreSession;->restoreAll(JLandroid/app/backup/RestoreObserver;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_6

    .line 122
    const/4 v4, 0x1

    .line 127
    :cond_6
    if-nez v4, :cond_8

    .line 128
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v5, :cond_7

    .line 129
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v5}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    .line 134
    :cond_8
    const/4 v5, 0x1

    goto :goto_0

    .line 127
    .end local v3           #s:Landroid/app/backup/RestoreSet;
    :catchall_0
    move-exception v5

    if-nez v4, :cond_a

    .line 128
    iget-object v6, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v6, :cond_9

    .line 129
    iget-object v6, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v6}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 131
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    :cond_a
    throw v5
.end method

.method prepareRestore(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, startedList:Z
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    .line 78
    :try_start_0
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->beginRestoreSession()Landroid/app/backup/RestoreSession;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    .line 80
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-nez v5, :cond_3

    .line 81
    sget-boolean v5, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v5, :cond_0

    const-string v5, "BackupTransportService"

    const-string v6, "No restore session"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    if-nez v3, :cond_2

    .line 97
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v5}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    .line 103
    .end local v0           #bm:Landroid/app/backup/BackupManager;
    :cond_2
    :goto_0
    return v4

    .line 84
    .restart local v0       #bm:Landroid/app/backup/BackupManager;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    iget-object v6, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreObserver:Landroid/app/backup/RestoreObserver;

    invoke-virtual {v5, v6}, Landroid/app/backup/RestoreSession;->getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 85
    .local v2, err:I
    if-nez v2, :cond_5

    .line 88
    const/4 v3, 0x1

    .line 89
    const/4 v4, 0x1

    .line 96
    if-nez v3, :cond_2

    .line 97
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v5, :cond_4

    .line 98
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v5}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    goto :goto_0

    .line 91
    :cond_5
    :try_start_2
    sget-boolean v5, Lcom/google/android/backup/BeginBackupService;->LOCAL_LOGV:Z

    if-eqz v5, :cond_6

    const-string v5, "BackupTransportService"

    const-string v6, "Unable to contact server for restore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :cond_6
    if-nez v3, :cond_2

    .line 97
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v5, :cond_7

    .line 98
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v5}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 100
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    goto :goto_0

    .line 92
    .end local v0           #bm:Landroid/app/backup/BackupManager;
    .end local v2           #err:I
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "BackupTransportService"

    const-string v6, "error starting restore"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-nez v3, :cond_2

    .line 97
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v5, :cond_8

    .line 98
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v5}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    goto :goto_0

    .line 96
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-nez v3, :cond_a

    .line 97
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    if-eqz v5, :cond_9

    .line 98
    iget-object v5, p0, Lcom/google/android/backup/BeginBackupService;->mRestoreSession:Landroid/app/backup/RestoreSession;

    invoke-virtual {v5}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 100
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/backup/BeginBackupService;->stopSelf()V

    :cond_a
    throw v4
.end method
