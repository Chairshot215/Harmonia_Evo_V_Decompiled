.class public Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private mClosed:Z

.field private mOffsetIndex:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p2, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput v1, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    iget-object v0, p2, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    iget v0, p2, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    iput v0, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput v0, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    iput p3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeColumnCount(I)I
.end method

.method private static native nativeColumnName(II)Ljava/lang/String;
.end method

.method private static native nativeFillWindow(IIIII)I
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    return-void
.end method

.method columnCountLocked()I
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    :try_start_0
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    invoke-static {v0}, Landroid/database/sqlite/SQLiteQuery;->nativeColumnCount(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    :try_start_0
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteQuery;->nativeColumnName(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method fillWindow(Landroid/database/CursorWindow;)I
    .locals 11

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v4

    iget v7, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    iget v8, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    iget v9, p1, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v10, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    invoke-static {v7, v8, v9, v4, v10}, Landroid/database/sqlite/SQLiteQuery;->nativeFillWindow(IIIII)I

    move-result v3

    sget-boolean v7, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v5

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v8, "SQLiteQuery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillWindow took "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms: window=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\", startPos="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", offset="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", filledRows="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", countedRows="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", query=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", args=["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    const-string v7, ", "

    iget-object v10, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :goto_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return v3

    :cond_1
    :try_start_3
    const-string v7, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    iget-object v8, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v7

    :catch_2
    move-exception v0

    :try_start_7
    const-string v7, "SQLiteQuery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; query: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method requery()V
    .locals 2

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requerying a closed cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->compileAndbindAllArgs()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
