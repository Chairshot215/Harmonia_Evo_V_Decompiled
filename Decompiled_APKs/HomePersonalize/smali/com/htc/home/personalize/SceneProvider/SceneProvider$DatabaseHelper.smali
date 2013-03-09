.class Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SceneProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SceneProvider/SceneProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 210
    const-string v0, "scene.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 211
    return-void
.end method

.method private createDefaultBottomAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 263
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->CreateDefaultBottomAppsTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private createDownloadSceneTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 259
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/DownloadedScene;->getCreateTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
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
    .line 254
    invoke-virtual {p0}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->close()V

    .line 255
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 256
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TABLE "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, createCmd:Ljava/lang/StringBuilder;
    const-string v4, "scene"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    sget-object v4, Lcom/htc/htcSceneManager/scene/Scene;->SCENE_DB_COLUMNS:[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    array-length v0, v4

    .line 222
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 223
    sget-object v4, Lcom/htc/htcSceneManager/scene/Scene;->SCENE_DB_COLUMNS:[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aget-object v1, v4, v3

    .line 224
    .local v1, col:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;
    iget-object v4, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_0

    .line 226
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v1           #col:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->createDownloadSceneTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->createDefaultBottomAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 245
    const-string v0, "SceneProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download_scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->createDownloadSceneTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->createDefaultBottomAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 250
    return-void
.end method
