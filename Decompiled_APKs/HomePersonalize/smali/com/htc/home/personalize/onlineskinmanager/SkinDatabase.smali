.class public Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SkinDatabase.java"


# static fields
.field public static final ATT_DOWNLOADSTATUS:Ljava/lang/String; = "dwonload_status"

.field public static final ATT_GUID:Ljava/lang/String; = "GUID"

.field public static final ATT_PACKAGENAME:Ljava/lang/String; = "package_name"

.field public static final DB_PATH:Ljava/lang/String; = "data/data/com.htc.skinpicker/databases/"

.field public static final SKINDB_NAME:Ljava/lang/String; = "OnlineSkin.db"

.field public static final SKINDB_VERSION:I = 0x2

.field public static final TABLE_DOWNLOAD:Ljava/lang/String; = "Download"

.field public static final TAG:Ljava/lang/String; = "SkinPicker.OnlineSkinDatabase"

.field private static mInstance:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;


# instance fields
.field DownloadedSkinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 66
    const-string v1, "OnlineSkin.db"

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    iput-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    iput-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->DownloadedSkinList:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    const-class v1, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    monitor-enter v1

    :try_start_0
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v2, "SkinDatabase getInstance"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 53
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public CreateDownloadStateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 151
    const-string v0, "CREATE TABLE Download (GUID TEXT PRIMARY KEY,dwonload_status INTEGER,package_name TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "Table Download created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public DropDownloadStateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 163
    const-string v0, "DROP TABLE Download"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "Table Download dropped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public declared-synchronized GetDownloadStatus(Ljava/lang/String;)I
    .locals 10
    .parameter "strGUID"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 194
    .local v9, nState:Ljava/lang/Integer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GUID= \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "dwonload_status"

    aput-object v1, v2, v0

    .line 196
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 198
    .local v8, cr:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 200
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 205
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_2
    const/4 v8, 0x0

    .line 208
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 191
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #cr:Landroid/database/Cursor;
    .end local v9           #nState:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetDownloadStatusByPackageName(Ljava/lang/String;)I
    .locals 10
    .parameter "strPackageName"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 215
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 216
    .local v9, nState:Ljava/lang/Integer;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 217
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 232
    :goto_0
    monitor-exit p0

    return v0

    .line 218
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package_name= \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "dwonload_status"

    aput-object v1, v2, v0

    .line 220
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    .local v8, cr:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 229
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_4
    const/4 v8, 0x0

    .line 232
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 213
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #cr:Landroid/database/Cursor;
    .end local v9           #nState:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GetDownloadedSkinList()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "Skin Database = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "GUID"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "dwonload_status"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "package_name"

    aput-object v1, v2, v0

    .line 109
    .local v2, cols:[Ljava/lang/String;
    const-string v3, "dwonload_status= \"2\""

    .line 110
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const-string v0, "package_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 114
    .local v8, colId:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 116
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    const/4 v9, 0x0

    .line 118
    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageList Num "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    :cond_3
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, skinPackage:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->DownloadedSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstall "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_4
    const/4 v9, 0x0

    .line 133
    goto/16 :goto_0

    .line 134
    .end local v8           #colId:I
    .end local v10           #skinPackage:Ljava/lang/String;
    :cond_5
    if-nez v9, :cond_6

    .line 135
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "cursor = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :cond_6
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "cursor.getCount() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized InsertNewItem(Ljava/lang/String;)V
    .locals 11
    .parameter "strGUID"

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 413
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v6, valuesDownloadStatus:Landroid/content/ContentValues;
    const-string v7, "GUID"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v7, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v2

    .line 416
    .local v2, objSkinItem:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    const/4 v1, 0x0

    .line 417
    .local v1, nDownloadStatus:I
    if-eqz v2, :cond_1

    .line 419
    iget-object v5, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .local v5, strPackageName:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 424
    :try_start_1
    iget-object v7, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 425
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x100

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 426
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 428
    const-string v7, "SkinPicker.OnlineSkinDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is installed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, 0x2

    .line 430
    const-string v7, "package_name"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #strPackageName:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    const-string v7, "dwonload_status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    iget-object v7, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Download"

    const-string v9, "GUID"

    const/4 v10, 0x4

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 433
    .restart local v5       #strPackageName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v7, "SkinPicker.OnlineSkinDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NameNotFoundException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 411
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #nDownloadStatus:I
    .end local v2           #objSkinItem:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .end local v5           #strPackageName:Ljava/lang/String;
    .end local v6           #valuesDownloadStatus:Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "strGUID"
    .parameter "nDownloadStatus"
    .parameter "strPackageName"
    .parameter "strDisplayName"
    .parameter "strVersion"

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 240
    :cond_0
    const-string v8, "SkinPicker.OnlineSkinDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+SetDownloadStatus ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v4, intentDetails:Landroid/content/Intent;
    const-string v8, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v8, "requester"

    const-string v9, "com.htc.store_oad"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v1, GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v8, "online_item_ids"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    const-string v8, "online_item_content_type"

    const-string v9, "Skin"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v8, "download_status"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v2, bundle:Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 257
    .local v5, mOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 258
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 260
    iget-object v8, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v8, p1, v9}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewFilePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, previewPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 263
    .local v3, icon:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/home/personalize/util/FileHelper;->IsFileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 265
    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 270
    :goto_0
    const-string v8, "online_item_optional_icon"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    const-string v8, "online_item_optional_label"

    move-object/from16 v0, p4

    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v8, "online_item_optional_version"

    move-object/from16 v0, p5

    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v8, "online_item_optional_data"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 276
    iget-object v8, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "dwonload_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v8, "package_name"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v8, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "Download"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GUID = \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    const-string v8, "SkinPicker.OnlineSkinDatabase"

    const-string v9, "-SetDownloadStatus"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 267
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02000e

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 238
    .end local v1           #GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #icon:Landroid/graphics/Bitmap;
    .end local v4           #intentDetails:Landroid/content/Intent;
    .end local v5           #mOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #previewPath:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized SetDownloadStatusByPackageName(Ljava/lang/String;I)V
    .locals 13
    .parameter "strPackageName"
    .parameter "nStatus"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+SetDownloadStatusByPackageName ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 295
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "GUID"

    aput-object v1, v2, v0

    .line 296
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package_name = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 299
    .local v9, cr:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 301
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 304
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, strGUID:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v10, intentDetails:Landroid/content/Intent;
    const-string v0, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v0, "requester"

    const-string v1, "com.htc.store_oad"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v8, GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v0, "online_item_ids"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 312
    const-string v0, "online_item_content_type"

    const-string v1, "Skin"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v0, "download_status"

    invoke-virtual {v10, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    .end local v8           #GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #intentDetails:Landroid/content/Intent;
    .end local v11           #strGUID:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "dwonload_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v0, "package_name"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package_name = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 328
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "-SetDownloadStatusByPackageNam"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 290
    .end local v2           #cols:[Ljava/lang/String;
    .end local v9           #cr:Landroid/database/Cursor;
    .end local v12           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public UpdateSkinDatabaseByFOTA(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, DeletedSkinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 92
    const-string v2, "SkinPicker.OnlineSkinDatabase"

    const-string v3, "Skin Database = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, strPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatusByPackageName(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->close()V

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void
.end method

.method public getDownloadedSkinList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->DownloadedSkinList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getGUIDByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "strPackageName"

    .prologue
    .line 382
    monitor-enter p0

    const/4 v9, 0x0

    .line 383
    .local v9, strGUID:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 385
    :cond_0
    const-string v0, "data/data/com.htc.skinpicker/databases/OnlineSkin.db"

    invoke-static {v0}, Lcom/htc/home/personalize/util/FileHelper;->IsFileExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move-object v10, v9

    .line 406
    .end local v9           #strGUID:Ljava/lang/String;
    .local v10, strGUID:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v10

    .line 390
    .end local v10           #strGUID:Ljava/lang/String;
    .restart local v9       #strGUID:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package_name= \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "GUID"

    aput-object v1, v2, v0

    .line 392
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 394
    .local v8, cr:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 396
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 399
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 401
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :cond_3
    const/4 v8, 0x0

    :cond_4
    move-object v10, v9

    .line 406
    .end local v9           #strGUID:Ljava/lang/String;
    .restart local v10       #strGUID:Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #cr:Landroid/database/Cursor;
    .end local v10           #strGUID:Ljava/lang/String;
    .restart local v9       #strGUID:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "strGUID"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 171
    :cond_0
    const-string v9, ""

    .line 172
    .local v9, strPackage:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GUID= \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "package_name"

    aput-object v1, v2, v0

    .line 174
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 176
    .local v8, cr:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 183
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_2
    const/4 v8, 0x0

    .line 186
    :cond_3
    monitor-exit p0

    return-object v9

    .line 169
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #cr:Landroid/database/Cursor;
    .end local v9           #strPackage:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSkinNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "strPackageName"

    .prologue
    .line 447
    monitor-enter p0

    if-nez p1, :cond_0

    .line 449
    :try_start_0
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "invalid skin name"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->CreateDownloadStateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 81
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public declared-synchronized setStatusToAllSkin(I)V
    .locals 13
    .parameter "nStatus"

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+setStatusToAllSkin ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 337
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "GUID"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "package_name"

    aput-object v1, v2, v0

    .line 338
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 340
    .local v9, cr:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 342
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    :cond_1
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applied skin package name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_3
    const/4 v9, 0x0

    .line 377
    :cond_4
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    const-string v1, "-setStatusToAllSkin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 350
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 353
    .local v11, strGUID:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v10, intentDetails:Landroid/content/Intent;
    const-string v0, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v0, "requester"

    const-string v1, "com.htc.store_oad"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v8, GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v0, "online_item_ids"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 359
    const-string v0, "online_item_content_type"

    const-string v1, "Skin"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v0, "download_status"

    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "package_name"

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "dwonload_status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GUID = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    const-string v0, "SkinPicker.OnlineSkinDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set skin : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 333
    .end local v2           #cols:[Ljava/lang/String;
    .end local v8           #GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #cr:Landroid/database/Cursor;
    .end local v10           #intentDetails:Landroid/content/Intent;
    .end local v11           #strGUID:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
