.class public abstract Lcom/android/providers/calendar/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SQLiteContentProvider"


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

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsCallerSyncAdapter:Ljava/lang/Boolean;

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

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
    .locals 8
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
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 217
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 218
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    .local v1, numOperations:I
    new-array v3, v1, [Landroid/content/ContentProviderResult;

    .line 223
    .local v3, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 224
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 225
    .local v2, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v5, 0xfa0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 228
    :cond_0
    invoke-virtual {v2, p0, v3, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v3, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 234
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v4}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    return-object v3

    .line 233
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 234
    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    throw v4
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 120
    array-length v2, p2

    .line 121
    .local v2, numValues:I
    const/4 v1, 0x0

    .line 122
    .local v1, isCallerSyncAdapter:Z
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 123
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 127
    :try_start_0
    aget-object v4, p2, v0

    invoke-virtual {p0, p1, v4, v1}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, result:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 129
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 131
    :cond_0
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v3           #result:Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v4}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 139
    return v2

    .line 135
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 179
    .local v0, applyingBatch:Z
    const/4 v2, 0x0

    .line 180
    .local v2, isCallerSyncAdapter:Z
    if-nez v0, :cond_2

    .line 181
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 182
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v2

    .line 185
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 186
    if-lez v1, :cond_0

    .line 187
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v3}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 202
    :cond_1
    :goto_0
    return v1

    .line 191
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v4}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 196
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v2

    .line 197
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 198
    if-lez v1, :cond_1

    .line 199
    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method protected doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SQLiteContentProvider"

    const-string v2, "endTransaction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected getIsCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 206
    const-string v1, "caller_is_syncadapter"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    .line 208
    .local v0, isCurrentSyncAdapter:Z
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    .line 211
    :cond_1
    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 92
    .local v0, applyingBatch:Z
    const/4 v1, 0x0

    .line 93
    .local v1, isCallerSyncAdapter:Z
    if-nez v0, :cond_2

    .line 94
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 98
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_0

    .line 100
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v3}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 115
    :cond_1
    :goto_0
    return-object v2

    .line 104
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v4}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 109
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 110
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
.end method

.method protected abstract notifyChange(Z)V
.end method

.method public onBegin()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    .line 241
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onBeginTransaction()V

    .line 242
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 246
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 55
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 259
    iget-boolean v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v1, :cond_2

    .line 260
    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 262
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->notifyChange(Z)V

    .line 264
    :cond_2
    return-void
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x1

    .line 144
    const/4 v7, 0x0

    .line 145
    .local v7, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v6

    .line 146
    .local v6, applyingBatch:Z
    const/4 v5, 0x0

    .line 147
    .local v5, isCallerSyncAdapter:Z
    if-nez v6, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 152
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 154
    if-lez v7, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 172
    :cond_1
    :goto_0
    return v7

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/SQLiteContentProvider;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 164
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 167
    if-lez v7, :cond_1

    .line 168
    iput-boolean v8, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method
