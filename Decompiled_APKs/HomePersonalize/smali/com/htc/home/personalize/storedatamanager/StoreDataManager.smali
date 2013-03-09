.class public Lcom/htc/home/personalize/storedatamanager/StoreDataManager;
.super Ljava/lang/Object;
.source "StoreDataManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HomePersonalize StoreDataManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "nType"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->mContext:Landroid/content/Context;

    .line 17
    const-string v0, "HomePersonalize StoreDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoreDataManager type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-object p1, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static getWallpaperCategory(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v1

    const-class v2, Lcom/htc/home/personalize/storedatamanager/Category;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 25
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 26
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 27
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    :cond_0
    new-instance v0, Lcom/htc/home/personalize/storedatamanager/Category;

    invoke-direct {v0}, Lcom/htc/home/personalize/storedatamanager/Category;-><init>()V

    .line 30
    .local v0, cate:Lcom/htc/home/personalize/storedatamanager/Category;
    const-string v1, "categoryID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageURL"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentCategory"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "displayName"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "navigateTo"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "displayOrder"

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/home/personalize/storedatamanager/Category;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    .end local v0           #cate:Lcom/htc/home/personalize/storedatamanager/Category;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_2
    const/4 v8, 0x0

    .line 45
    :cond_3
    return-object v9
.end method

.method public static loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .locals 23
    .parameter "context"
    .parameter "strProductId"

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "productID = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 130
    .local v22, where:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 131
    .local v21, cursor:Landroid/database/Cursor;
    const-string v3, "HomePersonalize StoreDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadStoreItemByProductId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v21, :cond_2

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 135
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    new-instance v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .end local v2           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    invoke-direct {v2}, Lcom/htc/home/personalize/storedatamanager/StoreItem;-><init>()V

    .line 137
    .restart local v2       #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    const-string v3, "productID"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconURL"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "contentCategory"

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayName"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "navigateTo"

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "displayOrder"

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "appType"

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "appId"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "appPackageName"

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "appSource"

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "versionCode"

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "publishedDate"

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "price"

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "contentSize"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "previewImageLandscape"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "previewImagePortrait"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "viewType"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "cateID"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v2 .. v20}, Lcom/htc/home/personalize/storedatamanager/StoreItem;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 157
    const-string v3, "HomePersonalize StoreDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are assets with the same id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    const/16 v21, 0x0

    .line 163
    .end local v2           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStoreItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 24
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/StoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v22, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewType = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 91
    .local v23, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 92
    .local v21, cursor:Landroid/database/Cursor;
    const-string v3, "HomePersonalize StoreDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStoreItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz v21, :cond_3

    .line 94
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 95
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    :cond_0
    new-instance v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-direct {v2}, Lcom/htc/home/personalize/storedatamanager/StoreItem;-><init>()V

    .line 98
    .local v2, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    const-string v3, "productID"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconURL"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "contentCategory"

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayName"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "navigateTo"

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "displayOrder"

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "appType"

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "appId"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "appPackageName"

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "appSource"

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "versionCode"

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "publishedDate"

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "price"

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "contentSize"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "previewImageLandscape"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "previewImagePortrait"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "viewType"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "cateID"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v2 .. v20}, Lcom/htc/home/personalize/storedatamanager/StoreItem;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "GGG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    .end local v2           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_2
    const/16 v21, 0x0

    .line 124
    :cond_3
    return-object v22
.end method

.method public hasItemListinDB(Ljava/lang/String;)Z
    .locals 6
    .parameter "strType"

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, bRet:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewType = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, where:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {v3, v4, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 72
    const-string v3, "HomePersonalize StoreDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasItemListinDB ? true type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x1

    .line 79
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_0
    return v0

    .line 75
    :cond_1
    const-string v3, "HomePersonalize StoreDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasItemListinDB ? false type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWallpaperCategoryinDB()Z
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v2

    const-class v3, Lcom/htc/home/personalize/storedatamanager/Category;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 53
    const-string v2, "HomePersonalize StoreDataManager"

    const-string v3, "hasWallpaperCategoryinDB ? true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x1

    .line 60
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_0
    return v0

    .line 56
    :cond_1
    const-string v2, "HomePersonalize StoreDataManager"

    const-string v3, "hasWallpaperCategoryinDB ? false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method
