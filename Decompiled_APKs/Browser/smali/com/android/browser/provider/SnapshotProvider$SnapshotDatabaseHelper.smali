.class final Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SnapshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/SnapshotProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SnapshotDatabaseHelper"
.end annotation


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "snapshots.db"

.field static final DATABASE_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p1}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;->getFullDatabaseName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 79
    return-void
.end method

.method static getFullDatabaseName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "snapshots.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 88
    const-string v0, "CREATE TABLE snapshots(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,date_created INTEGER,favicon BLOB,thumbnail BLOB,background INTEGER,view_state BLOB NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 102
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 103
    const-string v0, "DROP TABLE snapshots"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    :cond_0
    return-void
.end method
