.class public final Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    }
.end annotation


# static fields
.field static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field mBmgr:Landroid/app/backup/IBackupManager;

.field private mNextArg:I

.field mRestore:Landroid/app/backup/IRestoreSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAutoRestore()V
    .locals 13

    new-instance v7, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v7, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    const-string v10, "ro.product.device"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v10

    iput-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v10, :cond_0

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v10}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    return-void

    :cond_0
    const/4 v9, 0x0

    :try_start_2
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v10, v7}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v7}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    iget-object v9, v7, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    move-object v0, v9

    array-length v6, v0

    const/4 v5, 0x0

    if-ge v5, v6, :cond_1

    aget-object v8, v0, v5

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling restore: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    iget-wide v11, v8, Landroid/app/backup/RestoreSet;->token:J

    invoke-interface {v10, v11, v12, v7}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    move-result v10

    if-nez v10, :cond_5

    const/4 v2, 0x1

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    if-eqz v9, :cond_2

    array-length v10, v9

    if-nez v10, :cond_6

    :cond_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "No available restore sets; no restore performed"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v7}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :try_start_3
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v10}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    :try_start_4
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "No matching restore set.  Available sets:"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v10}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v10

    goto :goto_0

    :catch_3
    move-exception v3

    :try_start_7
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v10}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v10

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    :try_start_9
    iget-object v11, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v11}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :goto_3
    throw v10

    :catch_5
    move-exception v11

    goto :goto_3

    :catch_6
    move-exception v10

    goto/16 :goto_0
.end method

.method private doBackup()V
    .locals 4

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doEnable()V
    .locals 6

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup Manager now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doEnabled()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Manager currently "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doList()V
    .locals 5

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    const-string v2, "transports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "sets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v2}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    goto :goto_0

    :cond_3
    const-string v2, "transports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doListRestoreSets()V
    .locals 5

    :try_start_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Unable to request restore sets"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    iget-object v3, v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the backup transport.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doListTransports()V
    .locals 10

    :try_start_0
    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v8, v7

    if-nez v8, :cond_2

    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "No transports available."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, v7

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v5, "  * "

    :goto_2
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "    "
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doProvision()V
    .locals 6

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup Manager provision "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doRestore()V
    .locals 7

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    :goto_0
    return-void

    :cond_0
    const-string v5, "auto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doAutoRestore()V

    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "done"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestorePackage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :try_start_0
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-direct {p0, v3, v4, v2}, Lcom/android/commands/bmgr/Bmgr;->doRestoreAll(JLjava/util/HashSet;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doRestoreAll(JLjava/util/HashSet;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v9, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v9, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v12

    iput-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v12, :cond_0

    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v12, v9}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v9}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    iget-object v11, v9, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    if-eqz v11, :cond_1

    move-object v2, v11

    array-length v7, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v10, v2, v6

    iget-wide v12, v10, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v12, v12, p1

    if-nez v12, :cond_8

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Scheduling restore: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p3, :cond_6

    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    move-wide/from16 v0, p1

    invoke-interface {v12, v0, v1, v9}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    move-result v12

    if-nez v12, :cond_5

    const/4 v3, 0x1

    :cond_1
    :goto_2
    if-nez v3, :cond_3

    if-eqz v11, :cond_2

    array-length v12, v11

    if-nez v12, :cond_9

    :cond_2
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "No available restore sets; no restore performed"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v9}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    :cond_4
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v12}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    move-wide/from16 v0, p1

    invoke-interface {v12, v0, v1, v9, v8}, Landroid/app/backup/IRestoreSession;->restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_7

    const/4 v3, 0x1

    :goto_4
    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "No matching restore set token.  Available sets:"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private doRestorePackage(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v3, :cond_0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, p1, v2}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    :goto_1
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to restore package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doRun()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doTransport()V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown transport \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' specified; no changes made."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (formerly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private doWipe()V
    .locals 5

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->clearBackupData(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wiped backup data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableToString(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v1, Lcom/android/commands/bmgr/Bmgr;

    invoke-direct {v1}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    aget-object v0, v1, v2

    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    goto :goto_0
.end method

.method private printRestoreSets([Landroid/app/backup/RestoreSet;)V
    .locals 8

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "No restore sets"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Landroid/app/backup/RestoreSet;->token:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static showUsage()V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: bmgr [backup|restore|list|transport|run]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backup PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enable BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr transport WHICH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN PACKAGE..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr run"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr wipe PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'backup\' command schedules a backup pass for the named package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Note that the backup pass will effectively be a no-op if the package"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "does not actually have changed data to store."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enable\' command enables or disables the entire backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "If the argument is \'true\' it will be enabled, otherwise it will be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "disabled.  When disabled, neither backup or restore operations will"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "be performed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enabled\' command reports the current enabled/disabled state of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list transports\' command reports the names of the backup transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "currently available on the device.  These names can be passed as arguments"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "to the \'transport\' command.  The currently selected transport is indicated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "with a \'*\' character."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list sets\' command reports the token and name of each restore set"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "available to the device via the current transport."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'transport\' command designates the named transport as the currently"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "active one.  This setting is persistent across reboots."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given just a restore token initiates a full-system"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "restore operation from the currently active transport.  It will deliver"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the restore set designated by the TOKEN argument to each application"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "that had contributed data to that restore set."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given a token and one or more package names"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "initiates a restore operation of just those given packages from the restore"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "set designated by the TOKEN argument.  It is effectively the same as the"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\'restore\' operation supplying only a token, but applies a filter to the"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "set of applications to be restored."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given just a package name intiates a restore of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "just that one package according to the restore set selection algorithm"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "used by the RestoreSession.restorePackage() method."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'run\' command causes any scheduled backup operation to be initiated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "immediately, without the usual waiting period for batching together"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "data changes."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'wipe\' command causes all backed-up data for the given package to be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "erased from the current transport\'s storage.  The next backup operation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "that the given application performs will rewrite its entire data set."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    array-length v1, p1

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iput v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled()V

    goto :goto_0

    :cond_2
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnable()V

    goto :goto_0

    :cond_3
    const-string v1, "run"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRun()V

    goto :goto_0

    :cond_4
    const-string v1, "backup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doBackup()V

    goto :goto_0

    :cond_5
    const-string v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doList()V

    goto :goto_0

    :cond_6
    const-string v1, "restore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRestore()V

    goto :goto_0

    :cond_7
    const-string v1, "transport"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doTransport()V

    goto :goto_0

    :cond_8
    const-string v1, "wipe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doWipe()V

    goto :goto_0

    :cond_9
    const-string v1, "provision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doProvision()V

    goto/16 :goto_0

    :cond_a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unknown command"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto/16 :goto_0
.end method
