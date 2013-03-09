.class public Lcom/htc/home/personalize/storedatamanager/StoreDataDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StoreDataDB.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "storedata.db"

.field public static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HomePersonalize StoreDataDB"

.field private static mInstance:Lcom/htc/home/personalize/storedatamanager/StoreDataDB;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mInstance:Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 39
    const-string v1, "storedata.db"

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    iput-object v3, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    iput-object v3, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mContext:Landroid/content/Context;

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-class v1, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mInstance:Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mInstance:Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    .line 30
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mInstance:Lcom/htc/home/personalize/storedatamanager/StoreDataDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearAllData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    const-string v0, "HomePersonalize StoreDataDB"

    const-string v1, "clearAllData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-class v0, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 238
    const-class v0, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 239
    const-class v0, Lcom/htc/home/personalize/storedatamanager/Category;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 240
    const-class v0, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 241
    const-class v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 242
    const-class v0, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/util/FileHelper;->deleteAllPreviewFile(Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method public clearAllItemData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    const-string v0, "HomePersonalize StoreDataDB"

    const-string v1, "clearAllItemData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-class v0, Lcom/htc/home/personalize/storedatamanager/Category;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 249
    const-class v0, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 250
    const-class v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 251
    const-class v0, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public clearData(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 5
    .parameter "clsName"
    .parameter "where"

    .prologue
    .line 208
    const-string v2, "HomePersonalize StoreDataDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearData clsName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 212
    .local v0, lRes:I
    const-string v1, ""

    .line 214
    .local v1, strTable:Ljava/lang/String;
    const-class v2, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    const-string v1, "setup_item"

    .line 228
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 232
    :cond_2
    return v0

    .line 216
    :cond_3
    const-class v2, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    const-string v1, "getmore_item"

    goto :goto_0

    .line 218
    :cond_4
    const-class v2, Lcom/htc/home/personalize/storedatamanager/Category;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    const-string v1, "category"

    goto :goto_0

    .line 220
    :cond_5
    const-class v2, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 221
    const-string v1, "category_list_info"

    goto :goto_0

    .line 222
    :cond_6
    const-class v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 223
    const-string v1, "store_item"

    goto :goto_0

    .line 224
    :cond_7
    const-class v2, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const-string v1, "store_item_list_info"

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->close()V

    .line 35
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    return-void
.end method

.method public insertData(Ljava/lang/Object;)Z
    .locals 11
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    .line 73
    iget-object v8, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, bRes:Z
    const-wide/16 v4, 0x0

    .line 77
    .local v4, lRes:J
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, dataClass:Ljava/lang/Class;
    const-string v7, ""

    .line 79
    .local v7, table:Ljava/lang/String;
    const/4 v6, 0x0

    .line 80
    .local v6, nullColumnHack:Ljava/lang/String;
    const/4 v3, 0x0

    .line 82
    .local v3, initialValues:Landroid/content/ContentValues;
    const-class v8, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v2, p1

    .line 83
    check-cast v2, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    .line 84
    .local v2, dataContent:Lcom/htc/home/personalize/storedatamanager/SetupItem;
    const-string v7, "setup_item"

    .line 85
    invoke-virtual {v2}, Lcom/htc/home/personalize/storedatamanager/SetupItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 86
    iget-object v8, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    .end local v2           #dataContent:Lcom/htc/home/personalize/storedatamanager/SetupItem;
    :cond_1
    :goto_0
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 115
    iget-object v8, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x5

    invoke-virtual {v8, v7, v6, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 116
    const-string v8, "HomePersonalize StoreDataDB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lRes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    .line 118
    const/4 v0, 0x1

    .line 126
    :goto_1
    return v0

    .line 87
    :cond_2
    const-class v8, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v2, p1

    .line 88
    check-cast v2, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    .line 89
    .local v2, dataContent:Lcom/htc/home/personalize/storedatamanager/GetMoreItem;
    const-string v7, "getmore_item"

    .line 90
    const-string v6, "type"

    .line 91
    invoke-virtual {v2}, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 92
    goto :goto_0

    .end local v2           #dataContent:Lcom/htc/home/personalize/storedatamanager/GetMoreItem;
    :cond_3
    const-class v8, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v2, p1

    .line 93
    check-cast v2, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    .line 94
    .local v2, dataContent:Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;
    const-string v7, "category_list_info"

    .line 95
    const-string v6, "parentCategoryID"

    .line 96
    invoke-virtual {v2}, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 97
    goto :goto_0

    .end local v2           #dataContent:Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;
    :cond_4
    const-class v8, Lcom/htc/home/personalize/storedatamanager/Category;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v2, p1

    .line 98
    check-cast v2, Lcom/htc/home/personalize/storedatamanager/Category;

    .line 99
    .local v2, dataContent:Lcom/htc/home/personalize/storedatamanager/Category;
    const-string v7, "category"

    .line 100
    const-string v6, "categoryID"

    .line 101
    invoke-virtual {v2}, Lcom/htc/home/personalize/storedatamanager/Category;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 102
    goto :goto_0

    .end local v2           #dataContent:Lcom/htc/home/personalize/storedatamanager/Category;
    :cond_5
    const-class v8, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v2, p1

    .line 103
    check-cast v2, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    .line 104
    .local v2, dataContent:Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;
    const-string v7, "store_item_list_info"

    .line 105
    const-string v6, "id"

    .line 106
    invoke-virtual {v2}, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 107
    goto :goto_0

    .end local v2           #dataContent:Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;
    :cond_6
    const-class v8, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, p1

    .line 108
    check-cast v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 109
    .local v2, dataContent:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    const-string v7, "store_item"

    .line 110
    const-string v6, "productID"

    .line 111
    invoke-virtual {v2}, Lcom/htc/home/personalize/storedatamanager/StoreItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    goto/16 :goto_0

    .line 120
    .end local v2           #dataContent:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_7
    const-string v8, "HomePersonalize StoreDataDB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert database fail, lRes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    :cond_8
    const-string v8, "HomePersonalize StoreDataDB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error table name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataClass = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 50
    const-string v0, "HomePersonalize StoreDataDB"

    const-string v1, "DB onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/htc/home/personalize/storedatamanager/SetupItem;->getCreateTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;->getCreateTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;->getCreateTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/htc/home/personalize/storedatamanager/Category;->getCreateTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;->getCreateTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/htc/home/personalize/storedatamanager/StoreItem;->getCreateTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 61
    const-string v0, "HomePersonalize StoreDataDB"

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

    .line 63
    const-string v0, "DROP TABLE IF EXISTS setup_item"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "DROP TABLE IF EXISTS getmore_item"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "DROP TABLE IF EXISTS category_list_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "DROP TABLE IF EXISTS category"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "DROP TABLE IF EXISTS store_item_list_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "DROP TABLE IF EXISTS store_item"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 70
    return-void
.end method

.method public queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "classType"
    .parameter "selection"

    .prologue
    const/4 v4, 0x0

    .line 174
    const/4 v8, 0x0

    .line 175
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 178
    :cond_0
    const-string v1, ""

    .line 179
    .local v1, table:Ljava/lang/String;
    const/4 v2, 0x0

    .line 181
    .local v2, columns:[Ljava/lang/String;
    const-class v0, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const-string v1, "setup_item"

    .line 183
    sget-object v2, Lcom/htc/home/personalize/storedatamanager/SetupItem;->PROJECTION:[Ljava/lang/String;

    .line 201
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 204
    :cond_2
    return-object v8

    .line 184
    :cond_3
    const-class v0, Lcom/htc/home/personalize/storedatamanager/Category;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    const-string v1, "category"

    .line 186
    sget-object v2, Lcom/htc/home/personalize/storedatamanager/Category;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_4
    const-class v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    const-string v1, "store_item"

    .line 189
    sget-object v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_5
    const-class v0, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    const-string v1, "getmore_item"

    .line 192
    sget-object v2, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_6
    const-class v0, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    const-string v1, "store_item_list_info"

    .line 195
    sget-object v2, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_7
    const-class v0, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const-string v1, "category_list_info"

    .line 198
    sget-object v2, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;->PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method public updateData(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 9
    .parameter "clsName"
    .parameter "contentValues"
    .parameter "strWhere"

    .prologue
    const/4 v8, 0x0

    .line 130
    const-string v5, "HomePersonalize StoreDataDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDatas clsName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v5, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, bRes:Z
    const-wide/16 v2, 0x0

    .line 141
    .local v2, lRes:J
    const-string v4, ""

    .line 143
    .local v4, table:Ljava/lang/String;
    const-class v5, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    const-string v4, "setup_item"

    .line 145
    iget-object v5, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    :cond_1
    :goto_0
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 159
    iget-object v5, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4, p2, p3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v2, v5

    .line 160
    const-string v5, "HomePersonalize StoreDataDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lRes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-lez v5, :cond_7

    .line 162
    const/4 v0, 0x1

    .line 170
    .end local v0           #bRes:Z
    .end local v2           #lRes:J
    .end local v4           #table:Ljava/lang/String;
    :goto_1
    return v0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bRes:Z
    .restart local v2       #lRes:J
    .restart local v4       #table:Ljava/lang/String;
    :cond_2
    const-class v5, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    const-string v4, "getmore_item"

    goto :goto_0

    .line 148
    :cond_3
    const-class v5, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    const-string v4, "category_list_info"

    goto :goto_0

    .line 150
    :cond_4
    const-class v5, Lcom/htc/home/personalize/storedatamanager/Category;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 151
    const-string v4, "category"

    goto :goto_0

    .line 152
    :cond_5
    const-class v5, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    const-string v4, "store_item_list_info"

    goto :goto_0

    .line 154
    :cond_6
    const-class v5, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    const-string v4, "store_item"

    goto :goto_0

    .line 164
    :cond_7
    const-string v5, "HomePersonalize StoreDataDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert database fail, lRes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    :cond_8
    const-string v5, "HomePersonalize StoreDataDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error table name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dataClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
