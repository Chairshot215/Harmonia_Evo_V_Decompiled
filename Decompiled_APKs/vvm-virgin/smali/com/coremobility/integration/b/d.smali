.class public final Lcom/coremobility/integration/b/d;
.super Ljava/lang/Object;


# static fields
.field public static c:Landroid/content/Context;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;

.field public b:Z

.field public d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-boolean v0, p0, Lcom/coremobility/integration/b/d;->b:Z

    new-array v1, v3, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    iput-object v2, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/coremobility/integration/b/d;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/coremobility/integration/b/d;

    invoke-direct {v1}, Lcom/coremobility/integration/b/d;-><init>()V

    sget-object v2, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    const/4 v1, 0x3

    const-string v2, "Invalid GlobalContext"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v2, v4

    if-le v2, v8, :cond_4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v3

    :goto_1
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-eq v2, v6, :cond_1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    :goto_2
    iget-object v2, v1, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    const/4 v1, 0x3

    const-string v2, "Could not create DB"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB Create error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v7, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    sget-object v2, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "Could not Init Global Context"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/coremobility/integration/b/d;->c:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "1"

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J
    .locals 5

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    instance-of v2, v2, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-instance v8, Lcom/coremobility/integration/b/b;

    invoke-direct {v8}, Lcom/coremobility/integration/b/b;-><init>()V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p3

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v8, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    move-object v4, v8

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB SetVersion error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public final f()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/coremobility/integration/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB GetVersion error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
