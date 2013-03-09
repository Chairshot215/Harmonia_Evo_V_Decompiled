.class public Lcom/htc/wrap/com/google/android/mms/util/HtcWrapSqliteWrapper;
.super Ljava/lang/Object;
.source "HtcWrapSqliteWrapper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 0
    .parameter "context"
    .parameter "e"

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 18
    return-void
.end method

.method public static isLowStorage(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/google/android/mms/util/SqliteWrapper;->isLowStorage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
