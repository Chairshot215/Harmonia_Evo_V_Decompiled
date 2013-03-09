.class public Lcom/htc/android/mail/eassvc/core/TaskSyncSource;
.super Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
.source "TaskSyncSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/core/TaskSyncSource$1;,
        Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final ADD_COLUMN_NAME:Ljava/lang/String; = "_add"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DELETE_COLUMN_NAME:Ljava/lang/String; = "IsDeleted"

.field private static final EAS_TASK_CFG_FILE_NAME:Ljava/lang/String; = "eas_taskColID.prefs"

.field public static final ENTRY_UPDATE_INTERVAL:I = 0x1

.field public static final ID_COLUMN_NAME:Ljava/lang/String; = "_id"

.field public static final IN_SYNC_COLUMN_NAME:Ljava/lang/String; = "IsSyncing"

.field private static final MAX_APPLY_BATCH_SIZE:I = 0xc8

.field private static final PACKAGENAME:Ljava/lang/String; = "com.htc.android.mail"

.field public static final SERVER_ID_COLUMN_NAME:Ljava/lang/String; = "ServerId"

.field private static final TAG:Ljava/lang/String; = "TaskSyncSource"

.field private static final TASK_BATCH_INSERT_SIZE:I = 0x5

.field public static final TASK_DUG:Z = false

.field public static final UPDATE_COLUMN_NAME:Ljava/lang/String; = "IsDirty"


# instance fields
.field private ACCOUNTS_URI:Landroid/net/Uri;

.field private final EXP_ACCOUNT_IS:Ljava/lang/String;

.field private final EXP_ADDED_TO_SERVER:Ljava/lang/String;

.field private final EXP_AND_ACCOUNT_IS:Ljava/lang/String;

.field private final EXP_DELETED:Ljava/lang/String;

.field private final EXP_ITEM_CHANGED:Ljava/lang/String;

.field private final EXP_SYNC_FAILED:Ljava/lang/String;

.field private final EXP_SYNC_SUCCESS:Ljava/lang/String;

.field private TASKS_URI:Landroid/net/Uri;

.field private mEasTaskInfoFile:Ljava/io/File;

.field public mIsFotaStartSync:Z

.field private mResolver:Landroid/content/ContentResolver;

.field public updateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x4

    .line 80
    invoke-direct {p0, p1, p2, v4}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;I)V

    .line 49
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->updateInterval:I

    .line 64
    const-string v2, "IsDeleted=1"

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_DELETED:Ljava/lang/String;

    .line 65
    const-string v2, "IsSyncing=1"

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_SYNC_FAILED:Ljava/lang/String;

    .line 66
    const-string v2, "IsSyncing=0"

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_SYNC_SUCCESS:Ljava/lang/String;

    .line 67
    const-string v2, "(_add=1 OR IsDeleted=1 OR IsDirty=1)"

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_ITEM_CHANGED:Ljava/lang/String;

    .line 70
    const-string v2, "_add= 0 OR IsSyncing=1"

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_ADDED_TO_SERVER:Ljava/lang/String;

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mIsFotaStartSync:Z

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountName = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_ACCOUNT_IS:Ljava/lang/String;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_ACCOUNT_IS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->EXP_AND_ACCOUNT_IS:Ljava/lang/String;

    .line 87
    iget-wide v2, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {p1, v2, v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "eas_taskColID.prefs"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mEasTaskInfoFile:Ljava/io/File;

    .line 90
    new-instance v1, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;

    invoke-direct {v1, p1}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, listener:Lcom/htc/android/mail/eassvc/core/BasicSyncListener;
    invoke-virtual {v1, v4}, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->setSyncSrcType(I)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setListener(Lcom/htc/android/mail/eassvc/core/SyncListener;)V

    .line 94
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setTaskUri()V

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->loadData()V

    .line 97
    return-void
.end method

.method private addTasks(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    .line 596
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v3, 0x0

    .local v3, i:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, listSize:I
    :goto_0
    if-ge v3, v4, :cond_7

    .line 598
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASTask;

    .line 601
    .local v2, easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    iget v7, v2, Lcom/htc/android/mail/eassvc/common/EASTask;->recurRegenerate:I

    if-eqz v7, :cond_1

    .line 596
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/common/EASTask;->getTaskCV()Landroid/content/ContentValues;

    move-result-object v6

    .line 608
    .local v6, values:Landroid/content/ContentValues;
    if-nez v6, :cond_3

    .line 609
    const-string v7, "TaskSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v9, "processServerChangeList(): Error, getTaskCV is null."

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 630
    .end local v2           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v4           #listSize:I
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 631
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 638
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 642
    :cond_2
    return-void

    .line 613
    .restart local v2       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v4       #listSize:I
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 614
    const-string v7, "IsSyncing"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 615
    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 616
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v7, v3, 0x1

    rem-int/lit8 v7, v7, 0x5

    if-eqz v7, :cond_4

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xc8

    if-le v7, v8, :cond_5

    .line 620
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 621
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "com.htc.task.dm"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 622
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 625
    :cond_5
    iget v7, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->updateInterval:I

    if-lez v7, :cond_0

    .line 626
    iget v7, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->updateInterval:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 633
    .end local v2           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v4           #listSize:I
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 634
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 638
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 637
    :cond_6
    throw v7

    .restart local v4       #listSize:I
    :cond_7
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2
.end method

.method private static createList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    .line 266
    const/4 v9, 0x0

    .line 268
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v4, "com.htc.android.mail"

    invoke-static {v4}, Lcom/htc/tasklib/TaskContract;->getSIECustomizedList(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 269
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 270
    .local v2, cResolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 272
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 274
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 275
    .local v17, nCount:I
    new-instance v14, Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v14, listNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, -0x1

    .line 279
    .local v8, columnIndex:I
    :cond_0
    const-string v4, "ListName"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 280
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 281
    .local v19, str:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    :cond_1
    move/from16 v0, v17

    new-array v15, v0, [Landroid/content/ContentValues;

    .line 285
    .local v15, listValues:[Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 286
    .local v12, idx:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    move v13, v12

    .end local v12           #idx:I
    .local v13, idx:I
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 287
    .local v18, name:Ljava/lang/String;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v20, v:Landroid/content/ContentValues;
    const-string v4, "ListName"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    add-int/lit8 v12, v13, 0x1

    .end local v13           #idx:I
    .restart local v12       #idx:I
    aput-object v20, v15, v13

    move v13, v12

    .line 290
    .end local v12           #idx:I
    .restart local v13       #idx:I
    goto :goto_0

    .line 292
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #v:Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/tasklib/TaskContract;->getTasklistUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 293
    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v16

    .line 294
    .local v16, n:I
    sget-boolean v4, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 295
    const-string v4, "TaskSyncSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The number of task list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v8           #columnIndex:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #idx:I
    .end local v14           #listNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #listValues:[Landroid/content/ContentValues;
    .end local v16           #n:I
    .end local v17           #nCount:I
    .end local v19           #str:Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 306
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v2           #cResolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_2
    const/4 v9, 0x0

    .line 310
    :cond_4
    return-void

    .line 298
    .restart local v2       #cResolver:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_1
    sget-boolean v4, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 299
    const-string v4, "TaskSyncSource"

    const-string v5, "There is no task list !!"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 302
    .end local v2           #cResolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 303
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 306
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 305
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 306
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 307
    const/4 v9, 0x0

    .line 305
    :cond_6
    throw v4
.end method

.method private deleteTasks(Ljava/util/ArrayList;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 729
    .local v10, listSize:I
    const/4 v7, 0x0

    .line 731
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v11, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v13, 0x0

    .line 733
    .local v13, taskCur:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 734
    .local v14, taskID:Ljava/lang/String;
    const/4 v12, 0x0

    .line 735
    .local v12, task:Lcom/htc/android/mail/eassvc/common/EASTask;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 738
    .local v3, projections:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_6

    .line 739
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setCheckPoint()V

    .line 741
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASTask;

    move-object v12, v0

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServerId = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/htc/android/mail/eassvc/common/EASTask;->serverID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 745
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    invoke-static {v1, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 753
    .local v15, uri:Landroid/net/Uri;
    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 754
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v1, v9, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_1

    .line 757
    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.htc.task.dm"

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 759
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v15           #uri:Landroid/net/Uri;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 764
    :catch_0
    move-exception v8

    .line 765
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 769
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 771
    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 772
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 776
    :cond_3
    return-void

    .line 768
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 769
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 771
    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 772
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_5
    throw v1

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 769
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 771
    :cond_7
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method private getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "tag"

    .prologue
    const/4 v5, -0x1

    .line 1170
    const/4 v2, 0x0

    .line 1172
    .local v2, s:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v2

    .line 1192
    .end local v2           #s:Ljava/lang/String;
    .local v3, s:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1177
    .end local v3           #s:Ljava/lang/String;
    .restart local v2       #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1178
    .local v0, n1:I
    if-eq v0, v5, :cond_2

    .line 1180
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 1182
    const-string v4, ";"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1183
    .local v1, n2:I
    if-eq v1, v5, :cond_3

    .line 1185
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v1           #n2:I
    :cond_2
    :goto_1
    move-object v3, v2

    .line 1192
    .end local v2           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 1188
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #n2:I
    .restart local v2       #s:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getTaskFromDB(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASTask;
    .locals 14
    .parameter "taskID"

    .prologue
    .line 852
    const/4 v7, 0x0

    .line 853
    .local v7, easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    const/4 v9, 0x0

    .line 854
    .local v9, easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    const/4 v11, 0x0

    .line 857
    .local v11, taskCur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 859
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 861
    new-instance v8, Lcom/htc/android/mail/eassvc/common/EASTask;

    invoke-direct {v8}, Lcom/htc/android/mail/eassvc/common/EASTask;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v7           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .local v8, easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    :try_start_1
    new-instance v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;-><init>(Lcom/htc/android/mail/eassvc/core/TaskSyncSource;Lcom/htc/android/mail/eassvc/core/TaskSyncSource$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 864
    .end local v9           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .local v10, easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    :try_start_2
    const-string v0, "Title"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->Subject:Ljava/lang/String;

    .line 865
    const-string v0, "ServerId"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->serverID:Ljava/lang/String;

    .line 867
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    .line 868
    .local v12, tz:Ljava/util/TimeZone;
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    .line 871
    .local v13, utcTz:Ljava/util/TimeZone;
    const-string v0, "UTCStartDate"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStartUTC:J

    .line 872
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStartUTC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 873
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStartUTC:J

    invoke-static {v0, v1, v13}, Lcom/htc/tasklib/DateConvertHelper;->getDateString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->UTCStartDate:Ljava/lang/String;

    .line 876
    :cond_0
    const-string v0, "UTCDueDate"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDueUTC:J

    .line 877
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDueUTC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 878
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDueUTC:J

    invoke-static {v0, v1, v13}, Lcom/htc/tasklib/DateConvertHelper;->getDateString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->UTCDueDate:Ljava/lang/String;

    .line 882
    :cond_1
    const-string v0, "StartDate"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStart:J

    .line 883
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 884
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStart:J

    invoke-static {v0, v1, v12}, Lcom/htc/tasklib/DateConvertHelper;->getDateString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->StartDate:Ljava/lang/String;

    .line 887
    :cond_2
    const-string v0, "DueDate"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDue:J

    .line 888
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 889
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDue:J

    invoke-static {v0, v1, v12}, Lcom/htc/tasklib/DateConvertHelper;->getDateString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->DueDate:Ljava/lang/String;

    .line 892
    :cond_3
    const-string v0, "ReminderSet"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->ReminderSet:Z

    .line 895
    const-string v0, "ReminderTime"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsReminderDate:J

    .line 896
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsReminderDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 897
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsReminderDate:J

    invoke-static {v0, v1, v12}, Lcom/htc/tasklib/DateConvertHelper;->getDateString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->ReminderTime:Ljava/lang/String;

    .line 900
    :cond_4
    const-string v0, "Complete"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->Complete:Z

    .line 901
    const-string v0, "Priority"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->Importance:Ljava/lang/String;

    .line 903
    const-string v0, "DateCompleted"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsCompleteDate:J

    .line 904
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsCompleteDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 909
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsCompleteDate:J

    invoke-static {v0, v1, v12}, Lcom/htc/tasklib/DateConvertHelper;->getDateString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->DateCompleted:Ljava/lang/String;

    .line 912
    :cond_5
    const-string v0, "Description"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->Body:Ljava/lang/String;

    .line 913
    const-string v0, "Reserved3"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->Categories:Ljava/lang/String;

    .line 914
    const-string v0, "Reserved5"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->Sensitivity:Ljava/lang/String;

    .line 916
    const-string v0, "Recurrence"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->populateEASTaskRecurRule(Lcom/htc/android/mail/eassvc/common/EASTask;Ljava/lang/String;)V

    .line 918
    const-string v0, "_recur_regen"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->recurRegenerate:I

    .line 920
    const-string v0, "_recur_start_date"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecStart:J

    .line 921
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 926
    iget-wide v0, v10, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecStart:J

    invoke-static {v0, v1, v12}, Lcom/htc/tasklib/DateConvertHelper;->getDateString(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->recurStart:Ljava/lang/String;

    .line 928
    :cond_6
    const-string v0, "_recur_dead_occur"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDeadOccur:I

    .line 932
    invoke-direct {p0, v10, v8}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->verifyDate(Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;Lcom/htc/android/mail/eassvc/common/EASTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v10

    .end local v10           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .restart local v9       #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    move-object v7, v8

    .line 938
    .end local v8           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v12           #tz:Ljava/util/TimeZone;
    .end local v13           #utcTz:Ljava/util/TimeZone;
    .restart local v7       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    :cond_7
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 939
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 943
    :cond_8
    return-object v7

    .line 892
    .end local v7           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v9           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .restart local v8       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v10       #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .restart local v12       #tz:Ljava/util/TimeZone;
    .restart local v13       #utcTz:Ljava/util/TimeZone;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 900
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 935
    .end local v8           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v10           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .end local v12           #tz:Ljava/util/TimeZone;
    .end local v13           #utcTz:Ljava/util/TimeZone;
    .restart local v7       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v9       #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    :catch_0
    move-exception v6

    .line 936
    .local v6, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 938
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 939
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 938
    :cond_b
    throw v0

    .end local v7           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v8       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v7       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    goto :goto_4

    .end local v7           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v9           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .restart local v8       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v10       #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    :catchall_2
    move-exception v0

    move-object v9, v10

    .end local v10           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .restart local v9       #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    move-object v7, v8

    .end local v8           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v7       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    goto :goto_4

    .line 935
    .end local v7           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v8       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v7       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    goto :goto_3

    .end local v7           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v9           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .restart local v8       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v10       #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    :catch_2
    move-exception v6

    move-object v9, v10

    .end local v10           #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    .restart local v9       #easTaskTime:Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
    move-object v7, v8

    .end local v8           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v7       #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    goto :goto_3
.end method

.method public static insertNewTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "accountName"
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskAccountExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v4, "com.htc.android.mail"

    invoke-static {v4}, Lcom/htc/tasklib/TaskContract;->getTaskSourceAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 251
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "accountType"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v4, "accountName"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v4, "TaskSourceName"

    const-string v5, "Exchange ActiveSync"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 260
    .local v1, itemUri:Landroid/net/Uri;
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->createList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isTaskAccountExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 314
    const-string v3, "accountName = ?"

    .line 315
    .local v3, where:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 316
    .local v4, args:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 317
    .local v1, accountUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 320
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "com.htc.android.mail.eas"

    invoke-static {v0, p1}, Lcom/htc/tasklib/TaskContract;->getAccountUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const-string v0, "TaskSyncSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTaskExist(): Task is already exist - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", skip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 334
    :goto_0
    return v0

    .line 327
    :catch_0
    move-exception v7

    .line 328
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "TaskSyncSource"

    invoke-static {v0, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 334
    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public static isTaskApExist(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1201
    if-nez p0, :cond_0

    .line 1209
    :goto_0
    return v1

    .line 1204
    :cond_0
    :try_start_0
    const-string v2, "com.htc.task"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 1205
    const-string v2, "TaskSyncSource"

    const-string v3, " @@ Task AP exists"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    const/4 v1, 0x1

    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TaskSyncSource"

    const-string v3, " @@ There is no Task AP existing"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populateEASEventRecurRuleByDay(Lcom/htc/android/mail/eassvc/common/EASTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "task"
    .parameter "rawRule"
    .parameter "byDay"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 1112
    const-string v0, "BYSETPOS="

    .line 1114
    .local v0, BYSETPOS:Ljava/lang/String;
    move-object v1, p3

    .line 1116
    .local v1, s:Ljava/lang/String;
    const-string v3, "MO,TU,WE,TH,FR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    const-string v3, "BYSETPOS="

    invoke-direct {p0, p2, v3}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    if-eqz v1, :cond_0

    .line 1119
    const/16 v3, 0x3e

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1120
    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1121
    iput v5, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    goto :goto_0

    .line 1125
    :cond_2
    const-string v3, "SU,SA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1126
    const-string v3, "BYSETPOS="

    invoke-direct {p0, p2, v3}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    if-eqz v1, :cond_0

    .line 1129
    const/16 v3, 0x41

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1131
    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1132
    iput v5, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    goto :goto_0

    .line 1134
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    goto :goto_0

    .line 1138
    :cond_4
    const-string v3, "[a-zA-Z]{2}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, ss:[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v3, v2

    if-ne v3, v6, :cond_5

    .line 1140
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    .line 1141
    iget v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 1143
    iput v5, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    .line 1147
    :cond_5
    const-string v3, "SU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1152
    iput v6, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto :goto_0

    .line 1153
    :cond_6
    const-string v3, "MO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1154
    const/4 v3, 0x2

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto :goto_0

    .line 1155
    :cond_7
    const-string v3, "TU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1156
    const/4 v3, 0x4

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto :goto_0

    .line 1157
    :cond_8
    const-string v3, "WE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1158
    const/16 v3, 0x8

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto :goto_0

    .line 1159
    :cond_9
    const-string v3, "TH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1160
    const/16 v3, 0x10

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto/16 :goto_0

    .line 1161
    :cond_a
    const-string v3, "FR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1162
    const/16 v3, 0x20

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto/16 :goto_0

    .line 1163
    :cond_b
    const-string v3, "SA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1164
    const/16 v3, 0x40

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto/16 :goto_0
.end method

.method private populateEASTaskRecurRule(Lcom/htc/android/mail/eassvc/common/EASTask;Ljava/lang/String;)V
    .locals 21
    .parameter "task"
    .parameter "rawRule"

    .prologue
    .line 974
    const-string v7, "FREQ="

    .line 975
    .local v7, FREQ:Ljava/lang/String;
    const-string v3, "BYDAY="

    .line 976
    .local v3, BYDAY:Ljava/lang/String;
    const-string v5, "BYMONTHDAY="

    .line 977
    .local v5, BYMONTHDAY:Ljava/lang/String;
    const-string v4, "BYMONTH="

    .line 978
    .local v4, BYMONTH:Ljava/lang/String;
    const-string v8, "INTERVAL="

    .line 979
    .local v8, INTERVAL:Ljava/lang/String;
    const-string v6, "COUNT="

    .line 980
    .local v6, COUNT:Ljava/lang/String;
    const-string v9, "UNTIL="

    .line 983
    .local v9, UNTIL:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/EASTask;->rRule:Ljava/lang/String;

    .line 985
    const-string v15, "FREQ="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 986
    .local v13, s:Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 987
    const-string v15, "DAILY"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 988
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 989
    const-string v15, "BYDAY="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 990
    if-eqz v13, :cond_6

    .line 991
    const-string v15, "SU"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 992
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 993
    :cond_0
    const-string v15, "MO"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 994
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 995
    :cond_1
    const-string v15, "TU"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 996
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 997
    :cond_2
    const-string v15, "WE"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 998
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 999
    :cond_3
    const-string v15, "TH"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1000
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1001
    :cond_4
    const-string v15, "FR"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1002
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x20

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1003
    :cond_5
    const-string v15, "SA"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1004
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x40

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1077
    :cond_6
    :goto_0
    const-string v15, "INTERVAL="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1078
    if-eqz v13, :cond_7

    .line 1079
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurInterval:I

    .line 1082
    :cond_7
    const-string v15, "COUNT="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1083
    if-eqz v13, :cond_8

    .line 1084
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurOccurrences:I

    .line 1087
    :cond_8
    const-string v15, "UNTIL="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1088
    if-eqz v13, :cond_9

    .line 1095
    const/4 v15, 0x0

    const/16 v16, 0x4

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1096
    .local v14, yyyy:Ljava/lang/String;
    const/4 v15, 0x4

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1097
    .local v12, mm:Ljava/lang/String;
    const/4 v15, 0x6

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1098
    .local v10, dd:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "%sT00:00:00.000Z"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurUntil:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .end local v10           #dd:Ljava/lang/String;
    .end local v12           #mm:Ljava/lang/String;
    .end local v14           #yyyy:Ljava/lang/String;
    :cond_9
    :goto_1
    return-void

    .line 1006
    :cond_a
    const-string v15, "WEEKLY"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1007
    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 1008
    const-string v15, "BYDAY="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1009
    if-eqz v13, :cond_6

    .line 1010
    const-string v15, "SU"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1011
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1012
    :cond_b
    const-string v15, "MO"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1013
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1014
    :cond_c
    const-string v15, "TU"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1015
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1016
    :cond_d
    const-string v15, "WE"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1017
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1018
    :cond_e
    const-string v15, "TH"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1019
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1020
    :cond_f
    const-string v15, "FR"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1021
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x20

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1022
    :cond_10
    const-string v15, "SA"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1023
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    or-int/lit8 v15, v15, 0x40

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    goto/16 :goto_0

    .line 1025
    :cond_11
    const-string v15, "MONTHLY"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1026
    const/4 v15, 0x2

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 1027
    const-string v15, "BYMONTHDAY="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1028
    if-eqz v13, :cond_12

    .line 1029
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfMonth:I

    .line 1030
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfMonth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1034
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfMonth:I

    .line 1037
    const/4 v15, 0x3

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 1038
    const/16 v15, 0x7f

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1039
    const/4 v15, 0x5

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    goto/16 :goto_0

    .line 1042
    :cond_12
    const-string v15, "BYDAY="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1043
    if-eqz v13, :cond_6

    .line 1044
    const/4 v15, 0x3

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->populateEASEventRecurRuleByDay(Lcom/htc/android/mail/eassvc/common/EASTask;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1048
    :cond_13
    const-string v15, "YEARLY"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1049
    const/4 v15, 0x5

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 1050
    const-string v15, "BYMONTH="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1051
    if-eqz v13, :cond_14

    .line 1052
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurMonthOfYear:I

    .line 1054
    :cond_14
    const-string v15, "BYMONTHDAY="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1055
    if-eqz v13, :cond_15

    .line 1056
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfMonth:I

    .line 1057
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfMonth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1061
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfMonth:I

    .line 1064
    const/4 v15, 0x6

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 1065
    const/16 v15, 0x7f

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurDayOfWeek:I

    .line 1066
    const/4 v15, 0x5

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurWeekOfMonth:I

    goto/16 :goto_0

    .line 1069
    :cond_15
    const-string v15, "BYDAY="

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1070
    if-eqz v13, :cond_6

    .line 1071
    const/4 v15, 0x6

    move-object/from16 v0, p1

    iput v15, v0, Lcom/htc/android/mail/eassvc/common/EASTask;->recurType:I

    .line 1072
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->populateEASEventRecurRuleByDay(Lcom/htc/android/mail/eassvc/common/EASTask;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    :catch_0
    move-exception v11

    .line 1100
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1101
    const-string v15, "TaskSyncSource"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TASK Err : get recurrence Due date format ERROR  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/common/EASTask;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static removeAllTasks(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v4, "com.htc.android.mail.eas"

    invoke-static {v4, p1}, Lcom/htc/tasklib/TaskContract;->getTaskUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 404
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 405
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 409
    const-string v4, "com.htc.task.dm"

    invoke-virtual {p0, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, e:Ljava/lang/Exception;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 413
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 415
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v4, "com.htc.android.mail.eas"

    invoke-static {v4, p1}, Lcom/htc/tasklib/TaskContract;->getAccountUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 382
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 383
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 387
    const-string v4, "com.htc.task.dm"

    invoke-virtual {p0, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, e:Ljava/lang/Exception;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 391
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 393
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setTaskUri()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "com.htc.android.mail.eas"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/tasklib/TaskContract;->getAccountUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->ACCOUNTS_URI:Landroid/net/Uri;

    .line 143
    const-string v0, "com.htc.android.mail.eas"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/tasklib/TaskContract;->getTaskUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    .line 144
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->ACCOUNTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    .line 145
    return-void
.end method

.method private updateTasks(Ljava/util/ArrayList;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 649
    .local p1, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 651
    .local v10, listSize:I
    const/4 v7, 0x0

    .line 653
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v11, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 655
    .local v14, taskID:Ljava/lang/String;
    const/4 v13, 0x0

    .line 656
    .local v13, taskCur:Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 661
    .local v3, projections:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_6

    .line 662
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setCheckPoint()V

    .line 664
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/mail/eassvc/common/EASTask;

    .line 667
    .local v12, task:Lcom/htc/android/mail/eassvc/common/EASTask;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServerId = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/htc/android/mail/eassvc/common/EASTask;->serverID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 670
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 677
    invoke-virtual {v12}, Lcom/htc/android/mail/eassvc/common/EASTask;->getTaskCV()Landroid/content/ContentValues;

    move-result-object v16

    .line 680
    .local v16, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    invoke-static {v1, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 681
    .local v15, uri:Landroid/net/Uri;
    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 682
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 683
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v1, v9, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_1

    .line 686
    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.htc.task.dm"

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 688
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 692
    .end local v12           #task:Lcom/htc/android/mail/eassvc/common/EASTask;
    :catch_0
    move-exception v8

    .line 693
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 697
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 699
    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 700
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_3
    return-void

    .line 696
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 697
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 699
    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 700
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_5
    throw v1

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 697
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 699
    :cond_7
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method private verifyDate(Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;Lcom/htc/android/mail/eassvc/common/EASTask;)V
    .locals 6
    .parameter "taskTime"
    .parameter "task"

    .prologue
    const-wide/16 v4, 0x0

    .line 954
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDue:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStart:J

    iget-wide v2, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDue:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 960
    const-string v0, "TaskSyncSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Err : local Date ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/android/mail/eassvc/common/EASTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_2
    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDueUTC:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStartUTC:J

    iget-wide v2, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDueUTC:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 964
    const-string v0, "TaskSyncSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Err : UTC Date ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/android/mail/eassvc/common/EASTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_3
    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecUntil:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecStart:J

    iget-wide v2, p1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecUntil:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 968
    const-string v0, "TaskSyncSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Err : recurrence Date ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/android/mail/eassvc/common/EASTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanSyncFailRecord()V
    .locals 5

    .prologue
    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 450
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "IsSyncing = 1"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 451
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 455
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.htc.task.dm"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, e:Ljava/lang/Exception;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 461
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deletePIMAppData(Z)V
    .locals 6
    .parameter "removeLocal"

    .prologue
    .line 781
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->removeAllTasks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TaskSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while deleting PIMAppData, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    .local p2, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    .local p3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 473
    .local v7, curTracking:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "IsSyncing=0 AND (_add=1 OR IsDeleted=1 OR IsDirty=1)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 476
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 477
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TaskSyncSource"

    const-string v2, "getDeviceTaskChangeList(): nothing changed"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_1
    return-void

    .line 479
    :cond_2
    if-eqz v7, :cond_5

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "TaskSyncSource"

    const-string v2, "getDeviceTaskChangeList(): has local changes"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_3
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 484
    .local v14, task_id:Ljava/lang/String;
    const-string v1, "ServerId"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 486
    .local v12, serverId:Ljava/lang/String;
    const-string v1, "IsDeleted"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v10, 0x1

    .line 488
    .local v10, flagDelete:Z
    :goto_1
    const-string v1, "_add"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v9, 0x1

    .line 490
    .local v9, flagAdd:Z
    :goto_2
    const-string v1, "IsDirty"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v11, 0x1

    .line 493
    .local v11, flagUpdate:Z
    :goto_3
    if-eqz v10, :cond_9

    .line 494
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 495
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_4
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 527
    .end local v9           #flagAdd:Z
    .end local v10           #flagDelete:Z
    .end local v11           #flagUpdate:Z
    .end local v12           #serverId:Ljava/lang/String;
    .end local v14           #task_id:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 486
    .restart local v12       #serverId:Ljava/lang/String;
    .restart local v14       #task_id:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 488
    .restart local v10       #flagDelete:Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 490
    .restart local v9       #flagAdd:Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 497
    .restart local v11       #flagUpdate:Z
    :cond_9
    if-eqz v11, :cond_c

    :try_start_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 501
    invoke-direct {p0, v14}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getTaskFromDB(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASTask;

    move-result-object v13

    .line 502
    .local v13, task:Lcom/htc/android/mail/eassvc/common/EASTask;
    if-nez v13, :cond_a

    .line 503
    const-string v1, "TaskSyncSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceTaskChangeList(): error get event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 523
    .end local v9           #flagAdd:Z
    .end local v10           #flagDelete:Z
    .end local v11           #flagUpdate:Z
    .end local v12           #serverId:Ljava/lang/String;
    .end local v13           #task:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v14           #task_id:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 524
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 506
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #flagAdd:Z
    .restart local v10       #flagDelete:Z
    .restart local v11       #flagUpdate:Z
    .restart local v12       #serverId:Ljava/lang/String;
    .restart local v13       #task:Lcom/htc/android/mail/eassvc/common/EASTask;
    .restart local v14       #task_id:Ljava/lang/String;
    :cond_a
    :try_start_4
    iput-object v14, v13, Lcom/htc/android/mail/eassvc/common/EASTask;->clientID:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 527
    .end local v9           #flagAdd:Z
    .end local v10           #flagDelete:Z
    .end local v11           #flagUpdate:Z
    .end local v12           #serverId:Ljava/lang/String;
    .end local v13           #task:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v14           #task_id:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_b
    throw v1

    .line 510
    .restart local v9       #flagAdd:Z
    .restart local v10       #flagDelete:Z
    .restart local v11       #flagUpdate:Z
    .restart local v12       #serverId:Ljava/lang/String;
    .restart local v14       #task_id:Ljava/lang/String;
    :cond_c
    if-eqz v9, :cond_4

    .line 512
    :try_start_5
    invoke-direct {p0, v14}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getTaskFromDB(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASTask;

    move-result-object v13

    .line 513
    .restart local v13       #task:Lcom/htc/android/mail/eassvc/common/EASTask;
    if-nez v13, :cond_d

    .line 514
    const-string v1, "TaskSyncSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceTaskChangeList(): error get event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 517
    :cond_d
    iput-object v14, v13, Lcom/htc/android/mail/eassvc/common/EASTask;->clientID:Ljava/lang/String;

    .line 518
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4
.end method

.method public getTaskColID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, colId:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mEasTaskInfoFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 194
    const/4 v6, 0x0

    .line 220
    :goto_0
    return-object v6

    .line 196
    :cond_0
    const/4 v4, 0x0

    .line 197
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 199
    .local v1, dis:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mEasTaskInfoFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 201
    .end local v1           #dis:Ljava/io/DataInputStream;
    .local v2, dis:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v0

    .line 205
    if-eqz v5, :cond_1

    .line 207
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 212
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 214
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_2
    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    move-object v6, v0

    .line 220
    goto :goto_0

    .line 202
    :catch_0
    move-exception v3

    .line 203
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 205
    if-eqz v4, :cond_4

    .line 207
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 212
    :cond_4
    :goto_5
    if-eqz v1, :cond_3

    .line 214
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 215
    :catch_1
    move-exception v3

    .line 216
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 205
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v4, :cond_5

    .line 207
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 212
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 214
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 205
    :cond_6
    :goto_8
    throw v6

    .line 208
    :catch_2
    move-exception v3

    .line 209
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 215
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 216
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 208
    :catch_4
    move-exception v3

    .line 209
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 208
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    .line 209
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v3           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 216
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 205
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 202
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public init()V
    .locals 0

    .prologue
    .line 794
    return-void
.end method

.method public initEasData(Z)V
    .locals 2
    .parameter "enableTaskSource"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    .line 228
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    .line 229
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->clean()V

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->saveData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isColIdExist()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, colId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getColID()Ljava/lang/String;

    move-result-object v0

    .line 1221
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    :goto_0
    return v2

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getTaskColID()Ljava/lang/String;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1228
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setColID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v1

    .line 1231
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1235
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1236
    const-string v2, "TaskSyncSource"

    const-string v3, " There is no tasks Collection ID in device !!, need getfolderhierarchy"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public processClientAddRespList(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 808
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 809
    .local v4, listSize:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 813
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASTask;

    .line 814
    .local v2, easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    iget-object v8, v2, Lcom/htc/android/mail/eassvc/common/EASTask;->clientID:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 815
    .local v6, uri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 817
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "ServerId"

    iget-object v8, v2, Lcom/htc/android/mail/eassvc/common/EASTask;->serverID:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 818
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 822
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #easTask:Lcom/htc/android/mail/eassvc/common/EASTask;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_0
    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 823
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "com.htc.task.dm"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 824
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :cond_1
    :goto_1
    return-void

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, e1:Ljava/lang/Exception;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 828
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 830
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public processServerChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 709
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    .local p2, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    .local p3, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASTask;>;"
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setCheckPoint()V

    .line 711
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->addTasks(Ljava/util/ArrayList;)V

    .line 713
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setCheckPoint()V

    .line 715
    invoke-direct {p0, p2}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->updateTasks(Ljava/util/ArrayList;)V

    .line 717
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setCheckPoint()V

    .line 719
    invoke-direct {p0, p3}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->deleteTasks(Ljava/util/ArrayList;)V

    .line 720
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public removeAllTasks()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->removeAllTasks(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method protected removeSyncInfo()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->removeSyncinfo()V

    .line 367
    return-void
.end method

.method public removeSyncinfo()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 790
    return-void
.end method

.method protected saveData()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 101
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "TaskSyncSource"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v7, v7, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- saveData():type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 102
    :cond_0
    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bDataChange:Z

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->saveDataToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 139
    :goto_1
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "TaskSyncSource"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v7, v7, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v9, "saveData(file): "

    invoke-static {v5, v7, v8, v9, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 111
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    monitor-enter v7

    .line 113
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountName = \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, whereClause:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v0, cvs:Landroid/content/ContentValues;
    const-string v5, "synckey"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v5, "CollID"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v5, "LastSyncResult"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v8, v8, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v5, "LastSyncTime"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v5, "LastSyncErrorCode"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v8, v8, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v8, "Enabled"

    iget-boolean v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v0, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, ret:I
    if-ge v2, v6, :cond_3

    .line 127
    const-string v5, "com.htc.android.mail"

    invoke-static {v5}, Lcom/htc/tasklib/TaskContract;->getTaskSourceAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, uri:Landroid/net/Uri;
    const-string v5, "accountType"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "accountName"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v5, "TaskSourceName"

    const-string v6, "Exchange ActiveSync"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-boolean v5, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "TaskSyncSource"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveData: create easSyncInfo column. type="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v9, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 133
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 135
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-static {v5, v6, v8}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->createList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    monitor-exit v7

    goto/16 :goto_1

    .end local v0           #cvs:Landroid/content/ContentValues;
    .end local v2           #ret:I
    .end local v4           #whereClause:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 120
    .restart local v0       #cvs:Landroid/content/ContentValues;
    .restart local v4       #whereClause:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public saveTaskColID(Ljava/lang/String;)V
    .locals 6
    .parameter "colId"

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 157
    .local v0, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mEasTaskInfoFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mEasTaskInfoFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 160
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mEasTaskInfoFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 162
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 166
    if-eqz v4, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 173
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 175
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_1
    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    move-object v3, v4

    .line 182
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    if-eqz v3, :cond_4

    .line 168
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 173
    :cond_4
    :goto_4
    if-eqz v0, :cond_3

    .line 175
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 176
    :catch_1
    move-exception v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 166
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_5

    .line 168
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 173
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 175
    :try_start_9
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 166
    :cond_6
    :goto_7
    throw v5

    .line 169
    :catch_2
    move-exception v2

    .line 170
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 176
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 177
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 169
    :catch_4
    move-exception v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 169
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    .line 170
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v2           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 177
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 166
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 163
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public setAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 340
    return-void
.end method

.method public updateSynckeyAndTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "synckey"
    .parameter "changeList"
    .parameter "delList"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    .line 543
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 544
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsDeleted = 1 AND serverId IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 545
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    if-eqz p2, :cond_1

    .line 548
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 549
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "_add"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 550
    const-string v3, "IsDirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 552
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->TASKS_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 558
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "_add"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 559
    const-string v3, "IsDirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 560
    const-string v3, "IsSyncing"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    const-string v3, "IsSyncing = 1"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 562
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->ACCOUNTS_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 566
    const-string v3, "synckey"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 567
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.htc.task.dm"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    .line 580
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->saveDataToFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 585
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 573
    const-string v3, "TaskSyncSource"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v3, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v4, 0x320

    const-string v5, "add Task fail"

    invoke-direct {v3, v4, v5}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 581
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 582
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "TaskSyncSource"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task updateSynckeyAndTracker("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
