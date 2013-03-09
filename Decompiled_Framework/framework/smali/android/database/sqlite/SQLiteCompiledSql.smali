.class Landroid/database/sqlite/SQLiteCompiledSql;
.super Ljava/lang/Object;
.source "SQLiteCompiledSql.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompiledSql"


# instance fields
.field final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInUse:Z

.field private mSqlStmt:Ljava/lang/String;

.field private final mStackTrace:Ljava/lang/Throwable;

.field final nHandle:I

.field nStatement:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    :goto_0
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nHandle:I

    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCompiledSql;->native_compile(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private final native native_compile(Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized acquire()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v1, 0x3e8

    :try_start_0
    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->isInQueueOfStatementsToBeFinalized(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing statement in a finalizer. Please ensure that you explicitly call close() on your cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseIfNotInUse()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSqlStatement()V
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->finalizeStatementLater(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v2, 0x64

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nStatement="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mInUse="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", db="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", db_connectionNum="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-short v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sql="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
