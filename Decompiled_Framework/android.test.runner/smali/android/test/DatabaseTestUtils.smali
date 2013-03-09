.class public Landroid/test/DatabaseTestUtils;
.super Ljava/lang/Object;
.source "DatabaseTestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertSchemaEquals(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-static {p0}, Landroid/test/DatabaseTestUtils;->getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Landroid/test/DatabaseTestUtils;->getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static getSchemaSet(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    const-string v3, "SELECT sql FROM sqlite_master"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method
