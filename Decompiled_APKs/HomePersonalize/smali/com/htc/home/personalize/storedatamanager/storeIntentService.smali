.class public Lcom/htc/home/personalize/storedatamanager/storeIntentService;
.super Landroid/app/Service;
.source "storeIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HomePersonalize.storeIntentService"

.field private static mHandler:Landroid/os/Handler; = null

.field private static mRetryCount:I = 0x0

.field private static final mRetryLimit:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mHandler:Landroid/os/Handler;

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/storedatamanager/storeIntentService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSubcatogoryList(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetWallpaperItemList(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSceneSkinItemList(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/storedatamanager/storeIntentService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doGetDownloadURL(Landroid/content/Intent;)V

    return-void
.end method

.method private cleanPreview(Landroid/content/Context;ILjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "type"
    .parameter "categoryID"

    .prologue
    .line 967
    const-string v6, "HomePersonalize.storeIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanPreview, type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v6, 0x3

    if-ne p2, v6, :cond_3

    .line 969
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v6

    const-class v7, Lcom/htc/home/personalize/storedatamanager/Category;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 970
    .local v2, itemCursor:Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v1, categoryIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 972
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 974
    :cond_0
    const-string v6, "categoryID"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, categoryId:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 979
    .end local v0           #categoryId:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 981
    :cond_2
    invoke-static {p1, v1}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->cleanPreview(Landroid/content/Context;Ljava/util/List;)V

    .line 1011
    .end local v1           #categoryIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 985
    .end local v2           #itemCursor:Landroid/database/Cursor;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cateID=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 986
    .local v5, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v6

    const-class v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {v6, v7, v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 987
    .restart local v2       #itemCursor:Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v4, productIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_6

    .line 989
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 991
    :cond_4
    const-string v6, "productID"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, productId:Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 996
    .end local v3           #productId:Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 999
    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 1008
    const-string v6, "HomePersonalize.storeIntentService"

    const-string v7, "clean preview : unknown type"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1001
    :pswitch_0
    invoke-static {p1, v4}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->cleanPreview(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 1005
    :pswitch_1
    invoke-static {p1, v4}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->cleanPreview(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private doActionGetSceneSkinItemList(Landroid/content/Intent;I)V
    .locals 20
    .parameter "storeDataIntent"
    .parameter "nType"

    .prologue
    .line 215
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 217
    .local v4, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->setup(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList setup fail"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v3, -0x1

    const-string v6, ""

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v6}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 224
    :cond_0
    const/4 v15, 0x1

    .line 225
    .local v15, bNeedUpdateGetMore:Z
    const/16 v16, 0x1

    .line 226
    .local v16, bNeedUpdateItemList:Z
    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getValidIDfromGetMoreTable(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, strItemListID:Ljava/lang/String;
    const-string v3, "base_idx"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 228
    .local v7, nBaseIdx:I
    const-string v3, "page_size"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 230
    .local v8, nPageSize:I
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p2

    .line 233
    invoke-direct/range {v3 .. v8}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->needUpdateItemListOrNextPage(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v16

    .line 237
    :goto_1
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bNeedUpdateGetMore = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", bNeedUpdateItemList = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-nez v16, :cond_2

    .line 241
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "do not need to retrieve the list again"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    const/4 v15, 0x1

    goto :goto_1

    .line 246
    :cond_2
    const/16 v18, -0x1

    .line 247
    .local v18, nRet:I
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v19, strGetMoreRsult:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 251
    .local v9, csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    :try_start_0
    new-instance v9, Lcom/htc/home/personalize/storedatamanager/CSHelper;

    .end local v9           #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v3, v6}, Lcom/htc/home/personalize/storedatamanager/CSHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    .restart local v9       #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    if-eqz v15, :cond_8

    .line 265
    move/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->doGetMore(ILjava/lang/StringBuffer;)I

    move-result v18

    .line 266
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_GETMORE type = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", nRet"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_3

    .line 270
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList doGetMore fail"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v9           #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    :catch_0
    move-exception v17

    .line 253
    .local v17, e:Lcom/htc/cslib/exceptions/MyCSException;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->handleMyCSException(Landroid/content/Context;Lcom/htc/cslib/exceptions/MyCSException;I)V

    .line 254
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 256
    .end local v17           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_1
    move-exception v17

    .line 257
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "init- create CSHelper fail"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v9       #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    :cond_3
    const/4 v3, -0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 274
    sget v3, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    const/4 v6, 0x1

    if-ge v3, v6, :cond_4

    .line 275
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList doGetMore with wrong version and need to reload"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget v3, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 277
    invoke-direct/range {p0 .. p2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSceneSkinItemList(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 279
    :cond_4
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList reload doGetMore over retry limit, so clear all store data"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 281
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_5
    const/4 v3, -0x3

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    const/4 v3, -0x4

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 285
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    .line 286
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->storeGetMoreItem(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 291
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList storeGetMoreItem fail"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :cond_8
    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getIDFromGetMoreTablebyType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 299
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 301
    :cond_9
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList invalid strItemListID"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :cond_a
    const-string v3, "itemlistURI"

    invoke-static {v4, v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getUriByFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, strItemListCallUri:Ljava/lang/String;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 309
    :cond_b
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid strItemListCallUri "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 314
    :cond_c
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strItemListID = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", strCateCallUri = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v14, strBufferItemList:Ljava/lang/StringBuffer;
    const/16 v18, -0x1

    move-object v11, v5

    move v12, v7

    move v13, v8

    .line 318
    invoke-virtual/range {v9 .. v14}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->doGetItemList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuffer;)I

    move-result v18

    .line 320
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_d

    .line 322
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList doGetItemList fail"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_d
    const/4 v3, -0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_f

    .line 326
    sget v3, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    const/4 v6, 0x1

    if-ge v3, v6, :cond_e

    .line 328
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList doGetItemList with wrong version and need to reload"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget v3, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 330
    invoke-direct/range {p0 .. p2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSceneSkinItemList(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 332
    :cond_e
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList reload doGetItemList over retry limit, so clear all store data"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 334
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_f
    const/4 v3, -0x3

    move/from16 v0, v18

    if-eq v0, v3, :cond_10

    const/4 v3, -0x4

    move/from16 v0, v18

    if-ne v0, v3, :cond_11

    .line 338
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    .line 339
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_11
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->storeItemListInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 345
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :cond_12
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v6, "doActionGetSceneSkinItemList storeItemListInfo fail"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private doActionGetSubcatogoryList(Landroid/content/Intent;)V
    .locals 17
    .parameter "storeDataIntent"

    .prologue
    .line 449
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v4, "storedata_type"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 451
    .local v14, nType:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 452
    .local v10, context:Landroid/content/Context;
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->setup(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 454
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList setup fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    .line 574
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    .local v15, strResult:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 462
    .local v1, csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    :try_start_0
    new-instance v1, Lcom/htc/home/personalize/storedatamanager/CSHelper;

    .end local v1           #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/htc/home/personalize/storedatamanager/CSHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 473
    .restart local v1       #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    const/4 v8, 0x1

    .line 474
    .local v8, bNeedUpdateGetMore:Z
    const/4 v7, 0x1

    .line 475
    .local v7, bNeedUpdateCategoryList:Z
    invoke-static {v10, v14}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getValidIDfromGetMoreTable(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, strCategoryID:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 478
    const/4 v8, 0x0

    .line 479
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->needUpdateSubcategoryList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 483
    :goto_1
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bNeedUpdateGetMore = "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, ", bNeedUpdateCategoryList = "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-nez v7, :cond_2

    .line 486
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto :goto_0

    .line 463
    .end local v1           #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .end local v3           #strCategoryID:Ljava/lang/String;
    .end local v7           #bNeedUpdateCategoryList:Z
    .end local v8           #bNeedUpdateGetMore:Z
    :catch_0
    move-exception v11

    .line 464
    .local v11, e:Lcom/htc/cslib/exceptions/MyCSException;
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->handleMyCSException(Landroid/content/Context;Lcom/htc/cslib/exceptions/MyCSException;I)V

    .line 465
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto :goto_0

    .line 467
    .end local v11           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_1
    move-exception v12

    .line 469
    .local v12, e2:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto :goto_0

    .line 481
    .end local v12           #e2:Ljava/lang/Exception;
    .restart local v1       #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .restart local v3       #strCategoryID:Ljava/lang/String;
    .restart local v7       #bNeedUpdateCategoryList:Z
    .restart local v8       #bNeedUpdateGetMore:Z
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 490
    :cond_2
    const/4 v13, -0x1

    .line 491
    .local v13, nRet:I
    if-eqz v8, :cond_8

    .line 493
    invoke-virtual {v1, v14, v15}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->doGetMore(ILjava/lang/StringBuffer;)I

    move-result v13

    .line 495
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ACTION_GETMORE type = "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, ", nRet"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v4, -0x1

    if-ne v13, v4, :cond_3

    .line 498
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList doGetMore fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 501
    :cond_3
    const/4 v4, -0x2

    if-ne v13, v4, :cond_5

    .line 502
    sget v4, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    .line 503
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList doGetMore with wrong version and need to reload"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget v4, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 505
    invoke-direct/range {p0 .. p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSubcatogoryList(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 507
    :cond_4
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList reload doGetMore over retry limit, so clear all data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {v10}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 509
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 512
    :cond_5
    const/4 v4, -0x3

    if-eq v13, v4, :cond_6

    const/4 v4, -0x4

    if-ne v13, v4, :cond_7

    .line 513
    :cond_6
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    .line 514
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 518
    :cond_7
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->storeGetMoreItem(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 520
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList storeGetMoreItem fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 527
    :cond_8
    invoke-static {v10, v14}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getIDFromGetMoreTablebyType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 528
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 530
    :cond_9
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid strCategoryID "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 535
    :cond_a
    const-string v4, "categorylistURI"

    invoke-static {v10, v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getUriByFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, strCateCallUri:Ljava/lang/String;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 538
    :cond_b
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid strCateCallUri "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 543
    :cond_c
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    .local v6, strBuffer:Ljava/lang/StringBuffer;
    const/4 v13, -0x1

    .line 545
    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->doGetSubcategoryList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuffer;)I

    move-result v13

    .line 547
    const/4 v4, -0x1

    if-ne v13, v4, :cond_d

    .line 549
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 551
    :cond_d
    const/4 v4, -0x2

    if-ne v13, v4, :cond_f

    .line 552
    sget v4, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_e

    .line 554
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList doGetSubcategoryList with wrong version and need to reload"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget v4, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 556
    invoke-direct/range {p0 .. p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetSubcatogoryList(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 558
    :cond_e
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "doActionGetSubcatogoryList reload doGetSubcategoryList over retry limit, so clear all data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {v10}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 560
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 563
    :cond_f
    const/4 v4, -0x3

    if-eq v13, v4, :cond_10

    const/4 v4, -0x4

    if-ne v13, v4, :cond_11

    .line 564
    :cond_10
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    .line 565
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 569
    :cond_11
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->storeCategoryListInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 570
    .local v9, bRet:Z
    if-eqz v9, :cond_12

    .line 571
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 573
    :cond_12
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v14}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V

    goto/16 :goto_0
.end method

.method private doActionGetWallpaperItemList(Landroid/content/Intent;)V
    .locals 18
    .parameter "storeDataIntent"

    .prologue
    .line 355
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v10, "doActionGetWallpaperItemList"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 357
    .local v3, context:Landroid/content/Context;
    const-string v2, "storedata_type"

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 358
    .local v5, nType:I
    const-string v2, "store_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, strItemListID:Ljava/lang/String;
    const-string v2, "base_idx"

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 360
    .local v6, nBaseIdx:I
    const-string v2, "page_size"

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 362
    .local v7, nPageSize:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->setup(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v10, "doActionGetWallpaperItemList setup fail"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    .line 445
    :goto_0
    return-void

    .line 369
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    :cond_1
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    .line 372
    const-string v2, "HomePersonalize.storeIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doActionGetWallpaperItemList invalid strCateID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v2, p0

    .line 376
    invoke-direct/range {v2 .. v7}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->needUpdateItemListOrNextPage(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v14

    .line 377
    .local v14, bNeedUpdateItemList:Z
    const-string v2, "HomePersonalize.storeIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bNeedUpdateItemList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-nez v14, :cond_3

    .line 381
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v10, "bNeedUpdateItemList = false return directly"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_3
    const/4 v8, 0x0

    .line 388
    .local v8, csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    :try_start_0
    new-instance v8, Lcom/htc/home/personalize/storedatamanager/CSHelper;

    .end local v8           #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v10, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v2, v10}, Lcom/htc/home/personalize/storedatamanager/CSHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    .restart local v8       #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    const-string v2, "itemlistURI"

    invoke-static {v3, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getUriByFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, strItemListCallUri:Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 403
    :cond_4
    const-string v2, "HomePersonalize.storeIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid strItemListCallUri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 389
    .end local v8           #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .end local v9           #strItemListCallUri:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 390
    .local v15, e:Lcom/htc/cslib/exceptions/MyCSException;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->handleMyCSException(Landroid/content/Context;Lcom/htc/cslib/exceptions/MyCSException;I)V

    .line 391
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 393
    .end local v15           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_1
    move-exception v16

    .line 395
    .local v16, e2:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v16           #e2:Ljava/lang/Exception;
    .restart local v8       #csHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .restart local v9       #strItemListCallUri:Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    .local v13, strResult:Ljava/lang/StringBuffer;
    const/16 v17, -0x1

    .local v17, nRet:I
    move-object v10, v4

    move v11, v6

    move v12, v7

    .line 410
    invoke-virtual/range {v8 .. v13}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->doGetItemList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuffer;)I

    move-result v17

    .line 412
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 414
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v10, "doActionGetWallpaperItemList doGetItemList fail"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_6
    const/4 v2, -0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    .line 418
    sget v2, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    const/4 v10, 0x1

    if-ge v2, v10, :cond_7

    .line 420
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v10, "doActionGetWallpaperItemList doGetItemList with wrong version and need to reload"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget v2, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 422
    invoke-direct/range {p0 .. p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doActionGetWallpaperItemList(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 424
    :cond_7
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v10, "doActionGetWallpaperItemList reload doGetItemList over retry limit, so clear all store data"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 426
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :cond_8
    const/4 v2, -0x3

    move/from16 v0, v17

    if-eq v0, v2, :cond_9

    const/4 v2, -0x4

    move/from16 v0, v17

    if-ne v0, v2, :cond_a

    .line 431
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v3, v1, v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    .line 432
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_a
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->storeItemListInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 438
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :cond_b
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v10, "doActionGetWallpaperItemList storeItemListInfo fail"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private doGetDownloadURL(Landroid/content/Intent;)V
    .locals 12
    .parameter "storeDataIntent"

    .prologue
    const/4 v2, -0x1

    .line 578
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v5, "doGetDownloadURL+"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 580
    .local v1, context:Landroid/content/Context;
    const-string v0, "store_productid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, strProductID:Ljava/lang/String;
    const-string v0, "storedata_type"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 583
    .local v3, nType:I
    invoke-direct {p0, v1, v3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->setup(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v5, "doGetDownloadURL setup fail"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 656
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v0, "buyURI"

    invoke-static {v1, v0}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->getUriByFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 591
    .local v11, strPurchaseUri:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 592
    .local v10, strBuffer:Ljava/lang/StringBuffer;
    if-nez v11, :cond_1

    .line 594
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v2, "doGetDownloadURL get buyURI fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_1
    const/4 v6, 0x0

    .line 601
    .local v6, cshelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    :try_start_0
    new-instance v6, Lcom/htc/home/personalize/storedatamanager/CSHelper;

    .end local v6           #cshelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    sget-object v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v1, v0}, Lcom/htc/home/personalize/storedatamanager/CSHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 612
    .restart local v6       #cshelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    invoke-virtual {v6, v11, v4, v10}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->doPurchaseCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v9

    .line 613
    .local v9, nRet:I
    if-ne v9, v2, :cond_2

    .line 615
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v2, "doGetDownloadURL doPurchaseCall fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    .end local v6           #cshelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .end local v9           #nRet:I
    :catch_0
    move-exception v7

    .line 603
    .local v7, e:Lcom/htc/cslib/exceptions/MyCSException;
    invoke-direct {p0, v1, v7, v3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->handleMyCSException(Landroid/content/Context;Lcom/htc/cslib/exceptions/MyCSException;I)V

    .line 604
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    .end local v7           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_1
    move-exception v7

    .line 607
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #cshelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .restart local v9       #nRet:I
    :cond_2
    const/4 v0, -0x2

    if-ne v9, v0, :cond_4

    .line 619
    sget v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    const/4 v5, 0x1

    if-ge v0, v5, :cond_3

    .line 621
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v2, "doGetDownloadURL doPurchaseCall with wrong version and need to reload"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sget v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 623
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->doGetDownloadURL(Landroid/content/Intent;)V

    goto :goto_0

    .line 625
    :cond_3
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v5, "doGetDownloadURL reload doPurchaseCall over limit, so clear all store data"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    .line 627
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_4
    const/4 v0, -0x3

    if-eq v9, v0, :cond_5

    const/4 v0, -0x4

    if-ne v9, v0, :cond_6

    .line 631
    :cond_5
    invoke-direct {p0, v1, v9, v3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    .line 632
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    :cond_6
    new-instance v8, Lcom/htc/home/personalize/storedatamanager/PurchaseItem;

    invoke-direct {v8}, Lcom/htc/home/personalize/storedatamanager/PurchaseItem;-><init>()V

    .line 638
    .local v8, item:Lcom/htc/home/personalize/storedatamanager/PurchaseItem;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/htc/home/personalize/storedatamanager/PurchaseItem;

    invoke-static {v8, v0, v5}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #item:Lcom/htc/home/personalize/storedatamanager/PurchaseItem;
    check-cast v8, Lcom/htc/home/personalize/storedatamanager/PurchaseItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 646
    .restart local v8       #item:Lcom/htc/home/personalize/storedatamanager/PurchaseItem;
    if-nez v8, :cond_7

    .line 648
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v2, "doGetDownloadURL fail can not parse the content"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    .end local v8           #item:Lcom/htc/home/personalize/storedatamanager/PurchaseItem;
    :catch_2
    move-exception v7

    .line 641
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 653
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #item:Lcom/htc/home/personalize/storedatamanager/PurchaseItem;
    :cond_7
    const/4 v2, 0x0

    iget-object v5, v8, Lcom/htc/home/personalize/storedatamanager/PurchaseItem;->downloadURL:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "HomePersonalize.storeIntentService"

    const-string v2, "doGetDownloadURL-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getItemCountByCateIdandViewType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "strCateID"
    .parameter "strType"

    .prologue
    .line 837
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItemCountByCateIdandViewType+ strCateID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", strType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cateID=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "viewType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {v3, v4, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 841
    .local v0, cr:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 842
    .local v1, nCount:I
    if-eqz v0, :cond_0

    .line 844
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 847
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 848
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_1
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItemCountByCateIdandViewType- count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return v1
.end method

.method private getStringTypeName(I)Ljava/lang/String;
    .locals 4
    .parameter "nType"

    .prologue
    .line 815
    const-string v0, "Unknown"

    .line 816
    .local v0, strType:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 828
    const-string v1, "HomePersonalize.storeIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringTypeName invalid type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_0
    return-object v0

    .line 819
    :pswitch_0
    const-string v0, "Scene"

    .line 820
    goto :goto_0

    .line 822
    :pswitch_1
    const-string v0, "Wallpaper"

    .line 823
    goto :goto_0

    .line 825
    :pswitch_2
    const-string v0, "Skin"

    .line 826
    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTotalCountByCate(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "strCateID"

    .prologue
    .line 795
    const/4 v1, 0x0

    .line 796
    .local v1, nTotalCount:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {v3, v4, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 798
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 800
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    const-string v3, "totalCount"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 805
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 806
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_1
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTotalCountByCate return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v1
.end method

.method private handleMyCSException(Landroid/content/Context;Lcom/htc/cslib/exceptions/MyCSException;I)V
    .locals 5
    .parameter "context"
    .parameter "e"
    .parameter "nType"

    .prologue
    .line 951
    invoke-virtual {p2}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorMessage()Lcom/htc/cslib/exceptions/CustomErrorMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 952
    invoke-virtual {p2}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorString()Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, errorString:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorCode()Lcom/htc/cslib/exceptions/ErrorCode;

    move-result-object v0

    .line 954
    .local v0, errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    const-string v2, "HomePersonalize.storeIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyCSException errorString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cslib/exceptions/ErrorCode;

    if-ne v0, v2, :cond_1

    .line 956
    const/4 v2, -0x3

    invoke-direct {p0, p1, v2, p3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    .line 964
    .end local v0           #errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    .end local v1           #errorString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 958
    .restart local v0       #errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    .restart local v1       #errorString:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/htc/cslib/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cslib/exceptions/ErrorCode;

    if-ne v0, v2, :cond_0

    .line 959
    const/4 v2, -0x4

    invoke-direct {p0, p1, v2, p3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V

    goto :goto_0

    .line 962
    .end local v0           #errorCode:Lcom/htc/cslib/exceptions/ErrorCode;
    .end local v1           #errorString:Ljava/lang/String;
    :cond_2
    const-string v2, "HomePersonalize.storeIntentService"

    const-string v3, "ErrorMessge = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private needCleanPreview(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 930
    const/4 v0, 0x1

    .line 931
    .local v0, bNeed:Z
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 932
    .local v1, cr:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 934
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 936
    const-string v3, "cacheExpireTTL"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, strTTL:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkNeedUpdateByTTL(Ljava/lang/String;)Z

    move-result v0

    .line 940
    .end local v2           #strTTL:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 941
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 943
    :cond_1
    return v0
.end method

.method private needSetupCall(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 197
    const/4 v0, 0x1

    .line 198
    .local v0, bRet:Z
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 201
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const-string v3, "ttl"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, strTTL:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkNeedUpdateByTTL(Ljava/lang/String;)Z

    move-result v0

    .line 206
    .end local v2           #strTTL:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_1
    const/4 v1, 0x0

    .line 209
    :cond_2
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needSetupCall? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v0
.end method

.method private needUpdateItemList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7
    .parameter "context"
    .parameter "strID"
    .parameter "nType"

    .prologue
    .line 870
    const/4 v0, 0x1

    .line 871
    .local v0, bNeed:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 872
    .local v4, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v5

    const-class v6, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {v5, v6, v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 873
    .local v1, cr:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 875
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 877
    const-string v5, "ttl"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, strTTL:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkNeedUpdateByTTL(Ljava/lang/String;)Z

    move-result v0

    .line 879
    if-eqz v0, :cond_1

    .line 881
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->needCleanPreview(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 882
    const-string v5, "HomePersonalize.storeIntentService"

    const-string v6, "current preview is out-of-date. clean preview in cache folder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-direct {p0, p1, p3, p2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->cleanPreview(Landroid/content/Context;ILjava/lang/String;)V

    .line 886
    :cond_0
    const-string v5, "HomePersonalize.storeIntentService"

    const-string v6, "current data is out-of-date. clear store items in db"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cateID=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, strWhere:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v5

    const-class v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    invoke-virtual {v5, v6, v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 892
    .end local v2           #strTTL:Ljava/lang/String;
    .end local v3           #strWhere:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 893
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_2
    return v0
.end method

.method private needUpdateItemListOrNextPage(Landroid/content/Context;Ljava/lang/String;III)Z
    .locals 6
    .parameter "context"
    .parameter "strID"
    .parameter "nType"
    .parameter "baseIndex"
    .parameter "pageSize"

    .prologue
    .line 856
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->needUpdateItemList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 857
    .local v0, bNeed:Z
    if-nez v0, :cond_0

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getTotalCountByCate(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 859
    .local v2, totalCount:I
    invoke-direct {p0, p3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getStringTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getItemCountByCateIdandViewType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 860
    .local v1, currentCount:I
    if-ge v1, v2, :cond_1

    add-int v3, p4, p5

    if-ge v1, v3, :cond_1

    const/4 v0, 0x1

    .line 861
    :goto_0
    const-string v3, "HomePersonalize.storeIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking is loading next page? bNeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", totalCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", baseIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pageSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v1           #currentCount:I
    .end local v2           #totalCount:I
    :cond_0
    return v0

    .line 860
    .restart local v1       #currentCount:I
    .restart local v2       #totalCount:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needUpdateSubcategoryList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "strID"

    .prologue
    .line 900
    const/4 v0, 0x1

    .line 901
    .local v0, bNeed:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    const-class v5, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-virtual {v4, v5, v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 903
    .local v1, cr:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 905
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 907
    const-string v4, "ttl"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, strTTL:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkNeedUpdateByTTL(Ljava/lang/String;)Z

    move-result v0

    .line 909
    if-eqz v0, :cond_1

    .line 911
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->needCleanPreview(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 912
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "current preview is out-of-date. clean preview in cache folder"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v4, 0x3

    invoke-direct {p0, p1, v4, p2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->cleanPreview(Landroid/content/Context;ILjava/lang/String;)V

    .line 916
    :cond_0
    const-string v4, "HomePersonalize.storeIntentService"

    const-string v5, "current data is out-of-date. clear category items in db"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    const-class v5, Lcom/htc/home/personalize/storedatamanager/Category;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    .line 921
    .end local v2           #strTTL:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 922
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 924
    :cond_2
    const-string v4, "HomePersonalize.storeIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needUpdateSubcategoryList where = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return v0
.end method

.method private resetRetryCount()V
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 948
    return-void
.end method

.method private sendGetCategoryListResultBroadcast(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "nResult"
    .parameter "nType"

    .prologue
    .line 731
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 732
    .local v0, intentGetMoreRsp:Landroid/content/Intent;
    const-string v1, "com.htc.home.personalize.storedatamanager.ACTION_GETSUBCATEGORYLIST_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v1, "result_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    const-string v1, "storedata_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string v1, "HomePersonalize.storeIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send ACTION_GETITEMLIST_RESPONSE result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", EXTRA_DATATYPE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 738
    invoke-direct {p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->resetRetryCount()V

    .line 739
    return-void
.end method

.method private sendGetDownloadURLResultBroadcast(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "nResult"
    .parameter "nType"
    .parameter "strProductID"
    .parameter "strURL"

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 744
    .local v0, intentGetURLRsp:Landroid/content/Intent;
    const-string v1, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v1, "result_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    const-string v1, "storedata_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    const-string v1, "store_productid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v1, "store_url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v1, "HomePersonalize.storeIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send ACTION_GETDOWNLOADURL_RESPONSE result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", strProductID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 752
    invoke-direct {p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->resetRetryCount()V

    .line 753
    return-void
.end method

.method private sendGetItemListResultBroadcast(Landroid/content/Context;IILjava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "nResult"
    .parameter "nType"
    .parameter "strCateID"

    .prologue
    .line 757
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 758
    .local v2, intentGetMoreRsp:Landroid/content/Intent;
    const-string v7, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST_RESPONSE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v7, "result_code"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string v7, "storedata_type"

    invoke-virtual {v2, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, bHasNextPage:Z
    if-nez p2, :cond_0

    .line 764
    invoke-direct {p0, p1, p4}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getTotalCountByCate(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 765
    .local v5, nTotalCount:I
    invoke-direct {p0, p3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getStringTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, p4, v7}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getItemCountByCateIdandViewType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 766
    .local v3, nCurrentCount:I
    const-string v7, "HomePersonalize.storeIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendGetItemListResultBroadcast nTotalCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nCurrentCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-ge v3, v5, :cond_1

    const/4 v0, 0x1

    .line 769
    .end local v3           #nCurrentCount:I
    .end local v5           #nTotalCount:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 770
    .local v4, nHasNext:I
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v1, contentValue:Landroid/content/ContentValues;
    const-string v7, "hasNext"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, strWhere:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v7

    const-class v8, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-virtual {v7, v8, v1, v6}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->updateData(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 774
    const-string v7, "store_rehasnext"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 776
    const-string v7, "HomePersonalize.storeIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send ACTION_GETITEMLIST_RESPONSE result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", EXTRA_DATATYPE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", EXTRA_RESULT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", EXTRA_RETHASNEXT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 779
    invoke-direct {p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->resetRetryCount()V

    .line 780
    return-void

    .line 767
    .end local v1           #contentValue:Landroid/content/ContentValues;
    .end local v4           #nHasNext:I
    .end local v6           #strWhere:Ljava/lang/String;
    .restart local v3       #nCurrentCount:I
    .restart local v5       #nTotalCount:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 769
    .end local v3           #nCurrentCount:I
    .end local v5           #nTotalCount:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private sendMyCSExceptionBroadcast(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "errorCode"
    .parameter "nType"

    .prologue
    .line 783
    const-string v1, "HomePersonalize.storeIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMyCSExceptionBroadcast error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 785
    .local v0, intentMyCSException:Landroid/content/Intent;
    const-string v1, "com.htc.home.personalize.storedatamanager.ACTION_MYCSEXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    const-string v1, "storedata_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 790
    invoke-direct {p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->resetRetryCount()V

    .line 791
    return-void
.end method

.method private setup(Landroid/content/Context;I)Z
    .locals 14
    .parameter "context"
    .parameter "nType"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 117
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v12, "init+"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->needSetupCall(Landroid/content/Context;)Z

    move-result v1

    .line 119
    .local v1, bNeedSetupCall:Z
    if-nez v1, :cond_0

    .line 121
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v11, "init- no need setup call"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 192
    :goto_0
    return v9

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 127
    .local v2, csRestHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    :try_start_0
    new-instance v2, Lcom/htc/home/personalize/storedatamanager/CSHelper;

    .end local v2           #csRestHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    sget-object v9, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p1, v9}, Lcom/htc/home/personalize/storedatamanager/CSHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .restart local v2       #csRestHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    const/4 v6, -0x1

    .line 139
    .local v6, nRet:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v8, strResult:Ljava/lang/StringBuffer;
    :try_start_1
    invoke-virtual {v2, v8}, Lcom/htc/home/personalize/storedatamanager/CSHelper;->doSetup(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 142
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    .line 144
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v10, "init- doSetup fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v9, v11

    .line 145
    goto :goto_0

    .line 128
    .end local v2           #csRestHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .end local v6           #nRet:I
    .end local v8           #strResult:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 129
    .local v3, e:Lcom/htc/cslib/exceptions/MyCSException;
    move/from16 v0, p2

    invoke-direct {p0, p1, v3, v0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->handleMyCSException(Landroid/content/Context;Lcom/htc/cslib/exceptions/MyCSException;I)V

    move v9, v11

    .line 130
    goto :goto_0

    .line 131
    .end local v3           #e:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_1
    move-exception v5

    .line 133
    .local v5, e2:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v10, "init- create CSHelper fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 135
    goto :goto_0

    .line 147
    .end local v5           #e2:Ljava/lang/Exception;
    .restart local v2       #csRestHelper:Lcom/htc/home/personalize/storedatamanager/CSHelper;
    .restart local v6       #nRet:I
    .restart local v8       #strResult:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v9, -0x2

    if-ne v6, v9, :cond_3

    .line 149
    :try_start_2
    sget v9, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    if-ge v9, v10, :cond_2

    .line 151
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v10, "init- need to redo Setup"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget v9, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mRetryCount:I

    .line 153
    invoke-direct/range {p0 .. p2}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->setup(Landroid/content/Context;I)Z

    move-result v9

    goto :goto_0

    .line 155
    :cond_2
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v10, "init- redo Setup over retry limit, so clear all store data"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllData()V

    move v9, v11

    .line 157
    goto :goto_0

    .line 159
    :cond_3
    const/4 v9, -0x3

    if-eq v6, v9, :cond_4

    const/4 v9, -0x4

    if-ne v6, v9, :cond_5

    .line 160
    :cond_4
    move/from16 v0, p2

    invoke-direct {p0, p1, v6, v0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->sendMyCSExceptionBroadcast(Landroid/content/Context;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v9, v11

    .line 161
    goto :goto_0

    .line 163
    :catch_2
    move-exception v4

    .line 165
    .local v4, e1:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v10, "init- doSetup fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 167
    goto :goto_0

    .line 170
    .end local v4           #e1:Ljava/lang/Exception;
    :cond_5
    new-instance v7, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-direct {v7}, Lcom/htc/home/personalize/storedatamanager/SetupItem;-><init>()V

    .line 172
    .local v7, setupItem:Lcom/htc/home/personalize/storedatamanager/SetupItem;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-class v12, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-static {v7, v9, v12}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    move-object v7, v0

    .line 173
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0x88

    if-ne v9, v12, :cond_6

    .line 174
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v12, "The staticAssetCacheTTL is not support in Rider_S"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_1
    const-string v9, "HomePersonalize.storeIntentService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupItem = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 185
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->insertData(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 187
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v10, "init- insert setup data fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 188
    goto/16 :goto_0

    .line 176
    :cond_6
    :try_start_4
    iget-object v9, v7, Lcom/htc/home/personalize/storedatamanager/SetupItem;->staticAssetCacheTTL:Ljava/lang/String;

    invoke-static {v9}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->computeCacheExpireTTL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/htc/home/personalize/storedatamanager/SetupItem;->cacheExpireTTL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 179
    :catch_3
    move-exception v3

    .line 180
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v10, "init- exception occurs during JSON parsing"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 182
    goto/16 :goto_0

    .line 191
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    const-string v9, "HomePersonalize.storeIntentService"

    const-string v11, "init- true"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 192
    goto/16 :goto_0
.end method

.method private storeCategoryListInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "strCategoryList"
    .parameter "strCategoryID"

    .prologue
    .line 677
    new-instance v5, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-direct {v5}, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;-><init>()V

    .line 679
    .local v5, listInfo:Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;
    :try_start_0
    const-string v6, "HomePersonalize.storeIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "strCategoryList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-class v6, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    invoke-static {v5, p2, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;

    move-object v5, v0

    .line 681
    invoke-virtual {v5}, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;->getCategories()Ljava/util/List;

    move-result-object v2

    .line 682
    .local v2, cateList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    const-string v6, "HomePersonalize.storeIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cateList size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/storedatamanager/Category;

    .line 685
    .local v1, cate:Lcom/htc/home/personalize/storedatamanager/Category;
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->insertData(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    .end local v1           #cate:Lcom/htc/home/personalize/storedatamanager/Category;
    .end local v2           #cateList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 693
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "HomePersonalize.storeIntentService"

    const-string v7, "parsingCategoryListInfoResult exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    const/4 v6, 0x0

    .line 698
    .end local v3           #e:Ljava/lang/Exception;
    :goto_1
    return v6

    .line 687
    .restart local v2       #cateList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/Category;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iput-object p3, v5, Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;->id:Ljava/lang/String;

    .line 689
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 690
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->insertData(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 698
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private storeGetMoreItem(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .parameter "context"
    .parameter "strGetMore"
    .parameter "nType"

    .prologue
    .line 660
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v4, "storeGetMoreItem"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v2, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-direct {v2}, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;-><init>()V

    .line 663
    .local v2, objItem:Lcom/htc/home/personalize/storedatamanager/GetMoreItem;
    :try_start_0
    const-class v3, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-static {v2, p2, v3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    move-object v2, v0

    .line 664
    iput p3, v2, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;->type:I

    .line 665
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->insertData(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HomePersonalize.storeIntentService"

    const-string v4, "parsingGetMoreResult exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private storeItemListInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "strItemListContent"
    .parameter "strListID"

    .prologue
    .line 703
    new-instance v5, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-direct {v5}, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;-><init>()V

    .line 705
    .local v5, listInfo:Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;
    :try_start_0
    const-string v7, "HomePersonalize.storeIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strItemListContent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-class v7, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    invoke-static {v5, p2, v7}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;

    move-object v5, v0

    .line 707
    invoke-virtual {v5}, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;->getItemList()Ljava/util/List;

    move-result-object v4

    .line 708
    .local v4, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    const-string v7, "HomePersonalize.storeIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "itemlist size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v6, ""

    .line 710
    .local v6, strViewType:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 712
    .local v3, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iput-object p3, v3, Lcom/htc/home/personalize/storedatamanager/StoreItem;->cateID:Ljava/lang/String;

    .line 713
    iget-object v6, v3, Lcom/htc/home/personalize/storedatamanager/StoreItem;->viewType:Ljava/lang/String;

    .line 714
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->insertData(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .end local v4           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    .end local v6           #strViewType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 721
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "HomePersonalize.storeIntentService"

    const-string v8, "parsingCategoryListInfoResult exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    const/4 v7, 0x0

    .line 726
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return v7

    .line 716
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    .restart local v6       #strViewType:Ljava/lang/String;
    :cond_0
    :try_start_1
    iput-object p3, v5, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;->id:Ljava/lang/String;

    .line 717
    iput-object v6, v5, Lcom/htc/home/personalize/storedatamanager/StoreItemListInfo;->viewType:Ljava/lang/String;

    .line 719
    invoke-static {p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->insertData(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 726
    const/4 v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 98
    const-string v1, "HomePersonalize.storeIntentService"

    const-string v2, "onStartCommand() +"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/storedatamanager/storeIntentService;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;

    invoke-direct {v0, p0, p3}, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;-><init>(Lcom/htc/home/personalize/storedatamanager/storeIntentService;I)V

    .line 102
    .local v0, task:Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/storedatamanager/storeIntentService$StoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    const-string v1, "HomePersonalize.storeIntentService"

    const-string v2, "onStartCommand() -"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x3

    return v1
.end method
