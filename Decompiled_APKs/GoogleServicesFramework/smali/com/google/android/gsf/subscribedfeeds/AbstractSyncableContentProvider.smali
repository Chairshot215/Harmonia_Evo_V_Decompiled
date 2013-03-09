.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
.super Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final sAccountProjection:[Ljava/lang/String;


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContainsDiffs:Z

.field private final mContentUri:Landroid/net/Uri;

.field private mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsMergeCancelled:Z

.field private mIsTemporary:Z

.field protected mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mPendingBatchNotifications:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

.field private mSyncingAccount:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 2
    .parameter "dbName"
    .parameter "dbVersion"
    .parameter "contentUri"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    .line 53
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    .line 54
    iput-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 63
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    .line 83
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseVersion:I

    .line 85
    iput-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    .line 86
    iput-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsTemporary:Z

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->setContainsDiffs(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 486
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 487
    .local v1, successful:Z
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->beginBatch()V

    .line 489
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 490
    .local v0, results:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x1

    .line 493
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->endBatch(Z)V

    return-object v0

    .end local v0           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->endBatch(Z)V

    throw v2
.end method

.method public final beginBatch()V
    .locals 4

    .prologue
    .line 435
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 437
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "applyBatch is not reentrant but mApplyingBatch is already set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 445
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 446
    const/4 v1, 0x0

    .line 448
    .local v1, successful:Z
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    const/4 v1, 0x1

    .line 451
    if-nez v1, :cond_2

    .line 453
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 456
    :cond_2
    return-void

    .line 451
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 453
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v2
.end method

.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 109
    return-void
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 383
    array-length v4, p2

    .line 384
    .local v4, size:I
    const/4 v0, 0x0

    .line 385
    .local v0, completed:I
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v5, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v2

    .line 386
    .local v2, isSyncStateUri:Z
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 387
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 389
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 392
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 397
    .local v3, result:Landroid/net/Uri;
    :goto_1
    if-eqz v3, :cond_0

    .line 398
    add-int/lit8 v0, v0, 0x1

    .line 389
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v3           #result:Landroid/net/Uri;
    :cond_1
    aget-object v5, p2, v1

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 395
    .restart local v3       #result:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 403
    .end local v3           #result:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 401
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v5

    if-nez v5, :cond_3

    if-ne v0, v4, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 409
    :cond_3
    return v0
.end method

.method public changeRequiresLocalSync(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 101
    :cond_0
    return-void
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 309
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 310
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 311
    .local v0, notApplyingBatch:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 312
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 315
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v3, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 316
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, numRows:I
    if-eqz v0, :cond_1

    .line 318
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_1
    if-eqz v0, :cond_2

    .line 337
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v1           #numRows:I
    :cond_2
    :goto_1
    return v1

    .line 310
    .end local v0           #notApplyingBatch:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    .restart local v0       #notApplyingBatch:Z
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 323
    .local v2, result:I
    if-eqz v0, :cond_5

    .line 324
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 326
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_6

    if-lez v2, :cond_6

    .line 327
    if-eqz v0, :cond_8

    .line 328
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 337
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    move v1, v2

    goto :goto_1

    .line 331
    :cond_8
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 336
    .end local v2           #result:I
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_9

    .line 337
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    throw v3
.end method

.method protected abstract deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "table"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, accounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 685
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 686
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    const-string v5, "_sync_account, _sync_account_type"

    move-object v1, p2

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 689
    .local v11, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 691
    .local v9, accountName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 692
    .local v10, accountType:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .local v8, account:Landroid/accounts/Account;
    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    const-string v1, "_sync_account=? AND _sync_account_type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 708
    .end local v8           #account:Landroid/accounts/Account;
    .end local v9           #accountName:Ljava/lang/String;
    .end local v10           #accountType:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 710
    return-void
.end method

.method public final endBatch(Z)V
    .locals 6
    .parameter "successful"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 469
    if-eqz p1, :cond_0

    .line 472
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 477
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 478
    .local v1, url:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v3

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 475
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #url:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    move-object v3, v2

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 477
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 478
    .restart local v1       #url:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v4

    invoke-virtual {v2, v1, v5, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_1

    .end local v1           #url:Landroid/net/Uri;
    :cond_1
    throw v3

    .line 482
    :cond_2
    return-void
.end method

.method public getContainsDiffs()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContainsDiffs:Z

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSyncingAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncingAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 210
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    .local v1, temp:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
    iput-boolean v3, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsTemporary:Z

    .line 222
    invoke-virtual {v1, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->setContainsDiffs(Z)V

    .line 223
    new-instance v2, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v4, v4}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;-><init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 224
    new-instance v2, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    iget-object v3, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v2, v3}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v2, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getSyncingAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V

    .line 231
    :cond_0
    return-object v1

    .line 211
    .end local v1           #temp:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unable to instantiate class, this should never happen"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 214
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IllegalAccess while instantiating class, this should never happen"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "url"
    .parameter "values"

    .prologue
    .line 348
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 349
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 350
    .local v0, notApplyingBatch:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 351
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 354
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v3, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 355
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 356
    .local v1, result:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 357
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_1
    if-eqz v0, :cond_2

    .line 376
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    move-object v2, v1

    .end local v1           #result:Landroid/net/Uri;
    .local v2, result:Landroid/net/Uri;
    :goto_1
    return-object v2

    .line 349
    .end local v0           #notApplyingBatch:Z
    .end local v2           #result:Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 361
    .restart local v0       #notApplyingBatch:Z
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 362
    .restart local v1       #result:Landroid/net/Uri;
    if-eqz v0, :cond_5

    .line 363
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 365
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 366
    if-eqz v0, :cond_8

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 376
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    move-object v2, v1

    .end local v1           #result:Landroid/net/Uri;
    .restart local v2       #result:Landroid/net/Uri;
    goto :goto_1

    .line 370
    .end local v2           #result:Landroid/net/Uri;
    .restart local v1       #result:Landroid/net/Uri;
    :cond_8
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 375
    .end local v1           #result:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_9

    .line 376
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    throw v3
.end method

.method protected abstract insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsTemporary:Z

    return v0
.end method

.method public merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "diffs"
    .parameter "result"
    .parameter "syncResult"

    .prologue
    .line 557
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 558
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 560
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 561
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 562
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getMergers()Ljava/lang/Iterable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 565
    .local v8, mergers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;>;"
    :try_start_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    .line 566
    .local v0, merger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 567
    :try_start_4
    iget-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    if-eqz v1, :cond_1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 572
    .end local v0           #merger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
    :cond_0
    :try_start_5
    iget-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    .line 580
    :try_start_6
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 581
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    .line 582
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 586
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 588
    .end local p1
    :goto_1
    return-void

    .line 562
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #mergers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;>;"
    .restart local p1
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 586
    .end local p1
    :catchall_1
    move-exception v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 568
    .restart local v0       #merger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #mergers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;>;"
    .restart local p1
    :cond_1
    :try_start_a
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    .line 569
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 570
    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getSyncingAccount()Landroid/accounts/Account;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->merge(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_0

    .line 580
    .end local v0           #merger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local p1
    :catchall_2
    move-exception v1

    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 581
    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    .line 582
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 569
    .restart local v0       #merger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local p1
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 582
    .end local v0           #merger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
    :catchall_4
    move-exception v1

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 573
    :cond_2
    if-eqz p1, :cond_3

    .line 574
    :try_start_13
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    check-cast p1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    .end local p1
    iget-object v2, p1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getSyncingAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 580
    :cond_3
    :try_start_14
    monitor-enter p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 581
    const/4 v1, 0x0

    :try_start_15
    iput-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    .line 582
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 584
    :try_start_16
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 586
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 582
    :catchall_5
    move-exception v1

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_6
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1
.end method

.method protected onAccountsChanged([Landroid/accounts/Account;)V
    .locals 10
    .parameter "accountsArray"

    .prologue
    .line 653
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v1, accounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Boolean;>;"
    move-object v2, p1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 655
    .local v0, account:Landroid/accounts/Account;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 658
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    iget-object v9, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 659
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v7

    .line 660
    .local v7, tableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 661
    .local v8, tables:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 662
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 664
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 666
    :try_start_0
    iget-object v9, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v9, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 667
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 668
    .local v6, table:Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 672
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #table:Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 670
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 674
    return-void
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCreate() called for temp provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;-><init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 168
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;-><init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 197
    return v3
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 129
    return-void
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 596
    monitor-enter p0

    .line 597
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 598
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->onMergeCancelled()V

    .line 601
    :cond_0
    monitor-exit p0

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSyncStart(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you passed in an empty account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncingAccount:Landroid/accounts/Account;

    .line 528
    return-void
.end method

.method public onSyncStop(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 536
    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 511
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public setContainsDiffs(Z)V
    .locals 2
    .parameter "containsDiffs"

    .prologue
    .line 244
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only a temporary provider can contain diffs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContainsDiffs:Z

    .line 249
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 271
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 272
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 273
    .local v0, notApplyingBatch:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 274
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 277
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v3, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, numRows:I
    if-eqz v0, :cond_1

    .line 281
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    if-eqz v0, :cond_2

    .line 301
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v1           #numRows:I
    :cond_2
    :goto_1
    return v1

    .line 272
    .end local v0           #notApplyingBatch:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    .restart local v0       #notApplyingBatch:Z
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 287
    .local v2, result:I
    if-eqz v0, :cond_5

    .line 288
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 290
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_6

    if-lez v2, :cond_6

    .line 291
    if-eqz v0, :cond_8

    .line 292
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 301
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    move v1, v2

    goto :goto_1

    .line 295
    :cond_8
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 300
    .end local v2           #result:I
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_9

    .line 301
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    throw v3
.end method

.method protected abstract updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
.end method

.method public wipeAccount(Landroid/accounts/Account;)V
    .locals 9
    .parameter "account"

    .prologue
    .line 717
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 718
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v3

    .line 719
    .local v3, tableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v4, tables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 721
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 723
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 727
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v5, v0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V

    .line 730
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 731
    .local v2, table:Ljava/lang/String;
    const-string v5, "_sync_account=? AND _sync_account_type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 736
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #table:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 734
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 738
    return-void
.end method
