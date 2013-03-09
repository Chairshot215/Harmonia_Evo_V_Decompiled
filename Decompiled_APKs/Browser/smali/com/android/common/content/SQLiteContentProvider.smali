.class public abstract Lcom/android/common/content/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field private static final MAX_OPERATIONS_PER_YIELD_POINT:I = 0x1f4

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

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

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
    .locals 11
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
    const/4 v10, 0x0

    .line 198
    const/4 v6, 0x0

    .line 199
    .local v6, ypCount:I
    const/4 v2, 0x0

    .line 200
    .local v2, opCount:I
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 201
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 203
    :try_start_0
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 205
    .local v1, numOperations:I
    new-array v4, v1, [Landroid/content/ContentProviderResult;

    .line 206
    .local v4, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 207
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x1f4

    if-lt v2, v7, :cond_0

    .line 208
    new-instance v7, Landroid/content/OperationApplicationException;

    const-string v8, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v7, v8, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v4           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 230
    iget-object v8, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 231
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->onEndTransaction()V

    throw v7

    .line 213
    .restart local v0       #i:I
    .restart local v1       #numOperations:I
    .restart local v4       #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 214
    .local v3, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_1

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    const/4 v2, 0x0

    .line 216
    iget-boolean v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 217
    .local v5, savedNotifyChange:Z
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 218
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 219
    iput-boolean v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 220
    add-int/lit8 v6, v6, 0x1

    .line 224
    .end local v5           #savedNotifyChange:Z
    :cond_1
    invoke-virtual {v3, p0, v4, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v4, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 230
    iget-object v7, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 231
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->onEndTransaction()V

    return-object v4
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 116
    array-length v1, p2

    .line 117
    .local v1, numValues:I
    iget-object v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    iget-object v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    :try_start_0
    aget-object v5, p2, v0

    invoke-virtual {p0, p1, v5}, Lcom/android/common/content/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 123
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 125
    :cond_0
    iget-boolean v4, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 126
    .local v4, savedNotifyChange:Z
    iget-object v3, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    .local v3, savedDb:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 128
    iput-object v3, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    iput-boolean v4, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v2           #result:Landroid/net/Uri;
    .end local v3           #savedDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #savedNotifyChange:Z
    :cond_1
    iget-object v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v5, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 137
    return v1

    .line 133
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/common/content/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 172
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 174
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 176
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/content/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 177
    if-lez v1, :cond_0

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 185
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 192
    :cond_1
    :goto_0
    return v1

    .line 182
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 187
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/content/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 188
    if-lez v1, :cond_1

    .line 189
    iput-boolean v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/common/content/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 91
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 95
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/common/content/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 111
    :cond_1
    :goto_0
    return-object v1

    .line 101
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 106
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/common/content/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    iput-boolean v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onBegin()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->onBeginTransaction()V

    .line 237
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 241
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/common/content/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 56
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction()V
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->notifyChange()V

    .line 258
    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/common/content/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 144
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 148
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/common/content/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 149
    if-lez v1, :cond_0

    .line 150
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    invoke-virtual {p0}, Lcom/android/common/content/SQLiteContentProvider;->onEndTransaction()V

    .line 165
    :cond_1
    :goto_0
    return v1

    .line 154
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/common/content/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 159
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/common/content/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 160
    if-lez v1, :cond_1

    .line 161
    iput-boolean v2, p0, Lcom/android/common/content/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
