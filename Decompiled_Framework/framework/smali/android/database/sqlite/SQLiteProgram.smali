.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field static final STATEMENT_CACHEABLE:I = 0x10

.field static final STATEMENT_DONT_PREPARE:I = 0x20

.field static final STATEMENT_TYPE_MASK:I = 0xf

.field static final STATEMENT_USE_POOLED_CONN:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SQLiteProgram"


# instance fields
.field mBindArgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mShouldDumpSql:Z

.field final mSql:Ljava/lang/String;

.field final mStatementType:I

.field protected nHandle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected nStatement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    if-eqz p3, :cond_0

    array-length v2, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    invoke-direct {p0, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    or-int/lit8 v3, v1, 0x10

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_0

    :pswitch_2
    or-int/lit8 v3, v1, 0x10

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_0

    :pswitch_3
    or-int/lit8 v3, v1, 0x20

    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->compileAndbindAllArgs()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private addToBindArgs(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private bind(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/database/sqlite/SQLiteProgram;->addToBindArgs(ILjava/lang/Object;)V

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    :cond_0
    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0

    :pswitch_2
    :try_start_2
    check-cast p3, [B

    check-cast p3, [B

    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_1

    :pswitch_3
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_1

    :pswitch_4
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private compileSql()V
    .locals 4

    iget v1, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v1, :cond_2

    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v1, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCompiledSql;->acquire()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    iget v0, v1, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    new-instance v1, Landroid/database/sqlite/SQLiteCompiledSql;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/database/sqlite/SQLiteCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    goto :goto_1
.end method

.method private final native native_clear_bindings()V
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bindBlob(I[B)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    return-void
.end method

.method public bindNull(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(IILjava/lang/Object;)V

    return-void
.end method

.method public clearBindings()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->native_clear_bindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    goto :goto_0
.end method

.method protected compile(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method compileAndbindAllArgs()V
    .locals 10

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mStatementType:I

    and-int/lit8 v4, v4, 0x20

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t pass bindargs for this sql :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-nez v4, :cond_1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->compileSql()V

    :cond_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    if-nez v4, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V

    goto :goto_0

    :cond_4
    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_5

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_6

    :cond_5
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V

    goto :goto_0

    :cond_6
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_0

    :cond_7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    move-wide v4, v6

    :goto_1
    invoke-virtual {p0, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_0

    :cond_8
    move-wide v4, v8

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V

    goto :goto_0

    :cond_a
    instance-of v4, v3, [B

    if-eqz v4, :cond_b

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V

    goto :goto_0

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V

    goto :goto_0
.end method

.method getSqlStatementId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSqlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method protected final native native_bind_blob(I[B)V
.end method

.method protected final native native_bind_double(ID)V
.end method

.method protected final native native_bind_long(IJ)V
.end method

.method protected final native native_bind_null(I)V
.end method

.method protected final native native_bind_string(ILjava/lang/String;)V
.end method

.method protected final native native_compile(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected final native native_finalize()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->release()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void
.end method

.method release()V
    .locals 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    goto :goto_0
.end method

.method public setDumpSql(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    return-void
.end method

.method final declared-synchronized setNativeHandle(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldDumpSql()Z
    .locals 2

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteProgram;->mShouldDumpSql:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    and-int/2addr v0, v1

    return v0
.end method
