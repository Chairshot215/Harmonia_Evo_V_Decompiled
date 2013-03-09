.class Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ThumbFileCacheManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 296
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 297
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 304
    const-string v0, "CREATE TABLE IF NOT EXISTS thumb_server (_id INTEGER PRIMARY KEY,_data TEXT,_uri TEXT,date_modified INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    const-string v0, "CREATE TABLE IF NOT EXISTS thumb_content (_id INTEGER PRIMARY KEY,_data TEXT,_uri TEXT,date_modified INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 322
    if-eq p2, p3, :cond_0

    .line 323
    const-string v0, "DROP TABLE IF EXISTS thumb_server"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    const-string v0, "DROP TABLE IF EXISTS thumb_content"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 328
    :cond_0
    return-void
.end method
