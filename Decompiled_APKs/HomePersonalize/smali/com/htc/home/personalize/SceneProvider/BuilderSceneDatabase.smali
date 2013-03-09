.class public Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BuilderSceneDatabase.java"


# static fields
.field private static ATT_LAND_PREVIEW_URL:Ljava/lang/String;

.field private static ATT_ONLINEID:Ljava/lang/String;

.field private static ATT_PORT_PREVIEW_URL:Ljava/lang/String;

.field private static ATT_UPDATE_TIME:Ljava/lang/String;

.field public static BuilderSceneDB_Name:Ljava/lang/String;

.field public static BuilderSceneDB_Version:I

.field private static TABLE_BUILDERSCENE:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "BuilderSceneDatabase"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "builder_scene.db"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->BuilderSceneDB_Name:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->BuilderSceneDB_Version:I

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mInstance:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    .line 23
    const-string v0, "builder_scene"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    .line 24
    const-string v0, "online_id"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    .line 26
    const-string v0, "port_preview_url"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_PORT_PREVIEW_URL:Ljava/lang/String;

    .line 27
    const-string v0, "land_preview_url"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_LAND_PREVIEW_URL:Ljava/lang/String;

    .line 28
    const-string v0, "update_timestamp"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_UPDATE_TIME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->BuilderSceneDB_Name:Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->BuilderSceneDB_Version:I

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    iput-object p1, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mContext:Landroid/content/Context;

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    const-class v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v2, "BuilderSceneDatabase getInstance"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mInstance:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mInstance:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;

    .line 36
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mInstance:Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSceneCountByGUID(Ljava/lang/String;)I
    .locals 10
    .parameter "strGUID"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v1, "Builder scene db = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return v8

    .line 138
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    aput-object v0, v2, v8

    .line 139
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 141
    .local v9, cr:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 142
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 146
    .local v8, count:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public CreateDownloadStateTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .parameter "db"
    .parameter "iSkinVersion"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_PORT_PREVIEW_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_LAND_PREVIEW_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
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
    .line 50
    invoke-virtual {p0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->close()V

    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    return-void
.end method

.method public getBuilderSceneByGUID(Ljava/lang/String;)Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    .locals 10
    .parameter "strGUID"

    .prologue
    const/4 v4, 0x0

    .line 151
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v1, "Builder scene db = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-object v4

    .line 156
    :cond_0
    const/4 v9, 0x0

    .line 158
    .local v9, sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_UPDATE_TIME:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_PORT_PREVIEW_URL:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_LAND_PREVIEW_URL:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 159
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 161
    .local v8, cr:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 162
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    new-instance v9, Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    .end local v9           #sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    invoke-direct {v9}, Lcom/htc/home/personalize/scene/BuilderSceneInfo;-><init>()V

    .line 167
    .restart local v9       #sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_UPDATE_TIME:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_PORT_PREVIEW_URL:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_LAND_PREVIEW_URL:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    .line 173
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    const/4 v8, 0x0

    move-object v4, v9

    .line 175
    goto/16 :goto_0
.end method

.method public getBuilderScenes()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/scene/BuilderSceneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v1, "Builder scene db = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-object v3

    .line 84
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v8, builderScenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_UPDATE_TIME:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 86
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 87
    .local v9, cr:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 88
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v1, "cursor = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :cond_2
    new-instance v10, Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    invoke-direct {v10}, Lcom/htc/home/personalize/scene/BuilderSceneInfo;-><init>()V

    .line 94
    .local v10, sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_UPDATE_TIME:Ljava/lang/String;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BuilderSceneInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    .end local v10           #sceneInfo:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 104
    goto :goto_0
.end method

.method public insertAllBuilderSceneInfo(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/scene/BuilderSceneInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, scenesInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/scene/BuilderSceneInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    check-cast v0, [Lcom/htc/home/personalize/scene/BuilderSceneInfo;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->insertAllBuilderSceneInfo([Lcom/htc/home/personalize/scene/BuilderSceneInfo;)V

    .line 124
    return-void
.end method

.method public insertAllBuilderSceneInfo([Lcom/htc/home/personalize/scene/BuilderSceneInfo;)V
    .locals 4
    .parameter "scenesInfo"

    .prologue
    .line 127
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 128
    .local v2, info:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->insertBuilderSceneInfo(Lcom/htc/home/personalize/scene/BuilderSceneInfo;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v2           #info:Lcom/htc/home/personalize/scene/BuilderSceneInfo;
    :cond_0
    return-void
.end method

.method public insertBuilderSceneInfo(Lcom/htc/home/personalize/scene/BuilderSceneInfo;)V
    .locals 5
    .parameter "sceneInfo"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 109
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Builder scene db = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v0, value:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_ONLINEID:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_PORT_PREVIEW_URL:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_LAND_PREVIEW_URL:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->ATT_UPDATE_TIME:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 56
    sget v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->BuilderSceneDB_Version:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->CreateDownloadStateTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 57
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 77
    return-void
.end method

.method public removeAllBuilderSceneInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TAG:Ljava/lang/String;

    const-string v1, "Builder scene db = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/htc/home/personalize/SceneProvider/BuilderSceneDatabase;->TABLE_BUILDERSCENE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
