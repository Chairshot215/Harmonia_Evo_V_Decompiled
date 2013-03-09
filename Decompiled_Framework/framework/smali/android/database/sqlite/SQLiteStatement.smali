.class public Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# static fields
.field private static final LOCK_ACQUIRED:I = 0x2

.field private static final READ:Z = true

.field private static final TAG:Ljava/lang/String; = "SQLiteStatement"

.field private static final TRANS_STARTED:I = 0x1

.field private static final WRITE:Z


# instance fields
.field private mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method private acquireAndLock(Z)J
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    iput v3, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v3, v3, 0x40

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteStatement;->setNativeHandle(I)V

    if-nez p1, :cond_3

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    :goto_1
    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionUsingExecSqlFlag()V

    :cond_0
    :goto_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    iput v5, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->compileAndbindAllArgs()V

    return-wide v1

    :cond_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_3
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    goto :goto_1

    :cond_4
    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    const/4 v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    goto :goto_2
.end method

.method private final native native_1x1_blob_ashmem()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()I
.end method

.method private final native native_executeInsert()J
.end method

.method private final native native_executeSql(Ljava/lang/String;)V
.end method

.method private releaseAndUnlock()V
    .locals 2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    :goto_0
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->resetTransactionUsingExecSqlFlag()V

    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->release()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mOrigDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteStatement;->setNativeHandle(I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    iget v0, p0, Landroid/database/sqlite/SQLiteStatement;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0
.end method

.method private saveSqlAsLastSqlStatement()V
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLastSqlStatement(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    return-void
.end method

.method public executeInsert()J
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->saveSqlAsLastSqlStatement()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v0
.end method

.method public executeUpdateDelete()I
    .locals 4

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->saveSqlAsLastSqlStatement()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->shouldDumpSql()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SQLiteStatement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitored statement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->native_executeSql(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v1
.end method

.method public simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 8

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->shouldDumpSql()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SQLiteStatement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Monitored SQL Type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_blob_ashmem()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-object v2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v5, "SQLiteStatement"

    const-string/jumbo v6, "simpleQueryForBlobFileDescriptor() failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v5, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v5
.end method

.method public simpleQueryForLong()J
    .locals 8

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->shouldDumpSql()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SQLiteStatement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Monitored SQL Type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_long()J

    move-result-wide v1

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-wide v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v5, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v5
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteStatement;->acquireAndLock(Z)J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->shouldDumpSql()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SQLiteStatement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Monitored SQL Type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Landroid/database/sqlite/SQLiteDoneException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected 1 row from this query but query returned no data. check the query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteDoneException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseAndUnlock()V

    throw v4
.end method
