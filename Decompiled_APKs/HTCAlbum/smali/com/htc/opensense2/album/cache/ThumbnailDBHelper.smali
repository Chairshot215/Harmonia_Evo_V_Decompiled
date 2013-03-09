.class Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ImageFileCacheManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 583
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 584
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->close()V

    .line 592
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 593
    return-void
.end method

.method public getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 615
    const-string v0, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT UNIQUE,type INTEGER,date_modified INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 627
    if-eq p2, p3, :cond_0

    .line 628
    const-string v0, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/cache/ThumbnailDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 632
    :cond_0
    return-void
.end method
