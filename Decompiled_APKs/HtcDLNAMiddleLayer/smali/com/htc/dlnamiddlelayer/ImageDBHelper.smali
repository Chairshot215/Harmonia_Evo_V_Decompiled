.class Lcom/htc/dlnamiddlelayer/ImageDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ImageFileCacheManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 285
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 292
    const-string v0, "CREATE TABLE IF NOT EXISTS image_photo (_id INTEGER PRIMARY KEY,_data TEXT,_uri TEXT,date_modified INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const-string v0, "CREATE TABLE IF NOT EXISTS image_music (_id INTEGER PRIMARY KEY,_data TEXT,_uri TEXT,date_modified INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 310
    if-eq p2, p3, :cond_0

    .line 311
    const-string v0, "DROP TABLE IF EXISTS image_photo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string v0, "DROP TABLE IF EXISTS image_music"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/ImageDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    :cond_0
    return-void
.end method
