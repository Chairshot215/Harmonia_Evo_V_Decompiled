.class Lcom/htc/opensense/album/util/ThumbnailDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ImageFileCacheManager.java"


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 591
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 592
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->closeDB()V

    .line 609
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDB()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 638
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->closeDB()V

    .line 600
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 601
    return-void
.end method

.method public getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 619
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 645
    const-string v0, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT UNIQUE,type INTEGER,date_modified INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 657
    if-eq p2, p3, :cond_0

    .line 658
    const-string v0, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 662
    :cond_0
    return-void
.end method
