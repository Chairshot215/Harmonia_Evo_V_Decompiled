.class public Lcom/htc/ml/PhotoLockScreen/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.ml.PhotoLockScreen.setting.DBHelper"

.field private static final COLUMS_NAME_PATH:[Ljava/lang/String; = null

.field private static final COLUMS_TYPE_PATH:[Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x2

.field public static final DBHelper_AUTHORITY:Landroid/net/Uri; = null

.field public static final LOG_FLAG:Z = true

.field private static final LOG_PREFIX:Ljava/lang/String; = "[DBHelper]: "

.field private static final LOG_TAG:Ljava/lang/String; = "brian_LiveGallery_IdleScreen"

.field public static QuitSavingDB:Z = false

.field private static final TABLE_PATH:Ljava/lang/String; = "setting"


# instance fields
.field mDbHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    sput-boolean v2, Lcom/htc/ml/PhotoLockScreen/DBHelper;->QuitSavingDB:Z

    .line 24
    const-string v0, "content://com.htc.ml.PhotoLockScreen.setting.DBHelper"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->DBHelper_AUTHORITY:Landroid/net/Uri;

    .line 27
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v2

    const-string v1, "path"

    aput-object v1, v0, v3

    const-string v1, "isImage"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_NAME_PATH:[Ljava/lang/String;

    .line 30
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v2

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "integer"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_TYPE_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->mDbHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;

    .line 38
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_NAME_PATH:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_TYPE_PATH:[Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized getDBHelper(Landroid/content/Context;)Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    monitor-enter p0

    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 47
    :goto_0
    monitor-exit p0

    return-object v0

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->mDbHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;

    invoke-direct {v0, p0, p1}, Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;-><init>(Lcom/htc/ml/PhotoLockScreen/DBHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->mDbHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/DBHelper;->mDbHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getMediaFromDB(Landroid/content/Context;)Ljava/util/List;
    .locals 19
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v9, 0x0

    .line 129
    :goto_0
    return-object v9

    .line 88
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/htc/ml/PhotoLockScreen/DBHelper;->getDBHelper(Landroid/content/Context;)Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;

    move-result-object v12

    .line 89
    .local v12, dbHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;
    const/4 v9, 0x0

    .line 90
    .local v9, arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    monitor-enter v12

    .line 92
    :try_start_0
    invoke-virtual {v12}, Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 93
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 95
    .local v11, cur:Landroid/database/Cursor;
    :try_start_1
    const-string v2, "setting"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_NAME_PATH:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v8, v8, v18

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 96
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .end local v9           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .local v10, arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    :try_start_2
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_NAME_PATH:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 100
    .local v17, pathIdx:I
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_NAME_PATH:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 101
    .local v15, isImageIdx:I
    const/4 v14, 0x0

    .line 104
    .local v14, i:I
    :cond_1
    new-instance v16, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-direct/range {v16 .. v16}, Lcom/htc/ml/PhotoLockScreen/MediaStore;-><init>()V

    .line 105
    .local v16, ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setPath(Ljava/lang/String;)V

    .line 106
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 107
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setImage(Z)V

    .line 110
    :goto_1
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v14, v14, 0x1

    .line 114
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_1

    move-object v9, v10

    .line 123
    .end local v10           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .end local v14           #i:I
    .end local v15           #isImageIdx:I
    .end local v16           #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    .end local v17           #pathIdx:I
    .restart local v9       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    :cond_2
    if-eqz v11, :cond_3

    .line 125
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 126
    const/4 v11, 0x0

    .line 129
    :cond_3
    :goto_2
    monitor-exit v12

    goto :goto_0

    .line 130
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 109
    .end local v9           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v11       #cur:Landroid/database/Cursor;
    .restart local v14       #i:I
    .restart local v15       #isImageIdx:I
    .restart local v16       #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    .restart local v17       #pathIdx:I
    :cond_4
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->setImage(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 117
    .end local v14           #i:I
    .end local v15           #isImageIdx:I
    .end local v16           #ms:Lcom/htc/ml/PhotoLockScreen/MediaStore;
    .end local v17           #pathIdx:I
    :catch_0
    move-exception v13

    move-object v9, v10

    .line 119
    .end local v10           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v9       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .local v13, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    if-eqz v11, :cond_3

    .line 125
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 126
    const/4 v11, 0x0

    goto :goto_2

    .line 123
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v11, :cond_5

    .line 125
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 126
    const/4 v11, 0x0

    :cond_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    .end local v9           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v10       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10           #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    .restart local v9       #arrListMediaStore:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    goto :goto_4

    .line 117
    :catch_1
    move-exception v13

    goto :goto_3
.end method

.method public saveMediaToDB(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, listMS:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/MediaStore;>;"
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/DBHelper;->getDBHelper(Landroid/content/Context;)Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;

    move-result-object v1

    .line 58
    .local v1, dbHelper:Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;
    monitor-enter v1

    .line 60
    const/4 v4, 0x0

    :try_start_0
    sput-boolean v4, Lcom/htc/ml/PhotoLockScreen/DBHelper;->QuitSavingDB:Z

    .line 61
    invoke-virtual {v1}, Lcom/htc/ml/PhotoLockScreen/DBHelper$WPSettingDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "setting"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    if-nez p2, :cond_1

    .line 64
    monitor-exit v1

    goto :goto_0

    .line 80
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 65
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v3, 0x0

    .line 66
    .local v3, value:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 68
    const-string v5, "brian_LiveGallery_IdleScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DBHelper]: saveMediaToDB(): path["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v4}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #value:Landroid/content/ContentValues;
    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 70
    .restart local v3       #value:Landroid/content/ContentValues;
    sget-object v4, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_NAME_PATH:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v4}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v4, Lcom/htc/ml/PhotoLockScreen/DBHelper;->COLUMS_NAME_PATH:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/ml/PhotoLockScreen/MediaStore;

    invoke-virtual {v4}, Lcom/htc/ml/PhotoLockScreen/MediaStore;->isImage()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 72
    const-string v4, "setting"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 73
    sget-boolean v4, Lcom/htc/ml/PhotoLockScreen/DBHelper;->QuitSavingDB:Z

    if-eqz v4, :cond_3

    .line 80
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 66
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
