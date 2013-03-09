.class public Lcom/htc/store/module/json/ItemListFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "ItemListFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/store/module/vo/ItemItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mCategoryId:J

.field private mPageSize:I

.field private mStartIndex:I

.field private mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/store/module/json/ItemListFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/ItemListFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mTotalCount:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mCategoryId:J

    .line 28
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JII)V
    .locals 2
    .parameter "context"
    .parameter "categoryId"
    .parameter "startIndex"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mTotalCount:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mCategoryId:J

    .line 33
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 34
    iput-wide p2, p0, Lcom/htc/store/module/json/ItemListFeed;->mCategoryId:J

    .line 35
    iput p4, p0, Lcom/htc/store/module/json/ItemListFeed;->mStartIndex:I

    .line 36
    iput p5, p0, Lcom/htc/store/module/json/ItemListFeed;->mPageSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public getTotalCount()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mTotalCount:I

    return v0
.end method

.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mContentPath:Ljava/lang/String;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, url:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getItemlistURI()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, itemlistURI:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getOperatorURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, "startIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/store/module/json/ItemListFeed;->mStartIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, "pageSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/store/module/json/ItemListFeed;->mPageSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 137
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/ItemListFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 36
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    const-wide/16 v28, 0x0

    .line 47
    .local v28, ttl:J
    :try_start_0
    const-string v32, "ttl"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v28

    .line 51
    const-string v32, "totalCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/store/module/json/ItemListFeed;->mTotalCount:I

    .line 53
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v27, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const-string v32, "items"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 55
    .local v17, itemArray:Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_1

    .line 56
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 58
    .local v18, itemObj:Lorg/json/JSONObject;
    new-instance v16, Lcom/htc/store/module/vo/ItemItem;

    invoke-direct/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;-><init>()V

    .line 60
    .local v16, item:Lcom/htc/store/module/vo/ItemItem;
    :try_start_1
    const-string v32, "iconURL"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 62
    .local v15, icon_url:Ljava/lang/String;
    const-string v32, "contentCategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, contentCategory:Ljava/lang/String;
    const-string v32, "displayName"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, displayName:Ljava/lang/String;
    const-string v32, "navigateTo"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 66
    .local v20, navigateTo:Ljava/lang/String;
    const-string v32, "viewType"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 67
    .local v31, viewType:Ljava/lang/String;
    const-string v32, "displayOrder"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 68
    .local v10, displayOrder:I
    const-string v32, "productID"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 69
    .local v24, productId:Ljava/lang/String;
    const-string v32, "downloadCount"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 71
    .local v11, downloadCount:J
    const-string v32, "appType"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, appType:Ljava/lang/String;
    const-string v32, "appId"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, appId:Ljava/lang/String;
    const-string v32, "appPackageName"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, appPackageName:Ljava/lang/String;
    const-string v32, "itemType"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 75
    .local v19, itemType:Ljava/lang/String;
    const-string v32, "appSource"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, appSource:Ljava/lang/String;
    const-string v32, "versionCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v30

    .line 77
    .local v30, version:Ljava/lang/String;
    const-wide/16 v25, 0x0

    .line 79
    .local v25, publishedDate:J
    :try_start_2
    const-string v32, "publishedDate"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v25

    .line 83
    :goto_1
    :try_start_3
    const-string v32, "price"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v23, v0

    .line 84
    .local v23, price:F
    const-string v32, "previewImageLandscape"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 85
    .local v21, preImgLan:Ljava/lang/String;
    const-string v32, "previewImagePortrait"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 88
    .local v22, preImgPor:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/htc/store/module/vo/ItemItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/htc/store/module/vo/ItemItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/htc/store/module/vo/ItemItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineVersionName(Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineId(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lcom/htc/store/module/vo/ItemItem;->setOnlineDownloadCount(J)V

    .line 94
    invoke-static/range {v20 .. v20}, Lcom/htc/store/module/json/JSONUtils;->getOnlineActionType(Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, actionType:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineActionTypeOnClick(I)V

    .line 96
    invoke-static/range {v31 .. v31}, Lcom/htc/store/module/json/JSONUtils;->getOnlineDetailPageType(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineViewType(I)V

    .line 97
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePackageName(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/htc/store/module/vo/ItemItem;->setOnlineOrder(I)V

    .line 99
    invoke-static {v6}, Lcom/htc/store/module/json/JSONUtils;->getOnlineContentSource(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSource(I)V

    .line 100
    move-object/from16 v0, v16

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineTimeStampPublished(J)V

    .line 101
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePrice(F)V

    .line 102
    invoke-static/range {v19 .. v19}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 103
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/module/json/ItemListFeed;->mCategoryId:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-lez v32, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/module/json/ItemListFeed;->mCategoryId:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/vo/ItemItem;->setCategoryId(J)V

    .line 106
    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePreviewLandscapeURL(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePreviewPortraitURL(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 113
    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->printContent()V

    .line 114
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 48
    .end local v3           #actionType:I
    .end local v4           #appId:Ljava/lang/String;
    .end local v5           #appPackageName:Ljava/lang/String;
    .end local v6           #appSource:Ljava/lang/String;
    .end local v7           #appType:Ljava/lang/String;
    .end local v8           #contentCategory:Ljava/lang/String;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #displayOrder:I
    .end local v11           #downloadCount:J
    .end local v14           #i:I
    .end local v15           #icon_url:Ljava/lang/String;
    .end local v16           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v17           #itemArray:Lorg/json/JSONArray;
    .end local v18           #itemObj:Lorg/json/JSONObject;
    .end local v19           #itemType:Ljava/lang/String;
    .end local v20           #navigateTo:Ljava/lang/String;
    .end local v21           #preImgLan:Ljava/lang/String;
    .end local v22           #preImgPor:Ljava/lang/String;
    .end local v23           #price:F
    .end local v24           #productId:Ljava/lang/String;
    .end local v25           #publishedDate:J
    .end local v27           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v30           #version:Ljava/lang/String;
    .end local v31           #viewType:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 49
    .local v13, e:Lorg/json/JSONException;
    throw v13

    .line 80
    .end local v13           #e:Lorg/json/JSONException;
    .restart local v4       #appId:Ljava/lang/String;
    .restart local v5       #appPackageName:Ljava/lang/String;
    .restart local v6       #appSource:Ljava/lang/String;
    .restart local v7       #appType:Ljava/lang/String;
    .restart local v8       #contentCategory:Ljava/lang/String;
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v10       #displayOrder:I
    .restart local v11       #downloadCount:J
    .restart local v14       #i:I
    .restart local v15       #icon_url:Ljava/lang/String;
    .restart local v16       #item:Lcom/htc/store/module/vo/ItemItem;
    .restart local v17       #itemArray:Lorg/json/JSONArray;
    .restart local v18       #itemObj:Lorg/json/JSONObject;
    .restart local v19       #itemType:Ljava/lang/String;
    .restart local v20       #navigateTo:Ljava/lang/String;
    .restart local v24       #productId:Ljava/lang/String;
    .restart local v25       #publishedDate:J
    .restart local v27       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .restart local v30       #version:Ljava/lang/String;
    .restart local v31       #viewType:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 81
    .restart local v13       #e:Lorg/json/JSONException;
    :try_start_4
    sget-object v32, Lcom/htc/store/module/json/ItemListFeed;->TAG:Ljava/lang/String;

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "Published Date is empty"

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 108
    .end local v4           #appId:Ljava/lang/String;
    .end local v5           #appPackageName:Ljava/lang/String;
    .end local v6           #appSource:Ljava/lang/String;
    .end local v7           #appType:Ljava/lang/String;
    .end local v8           #contentCategory:Ljava/lang/String;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #displayOrder:I
    .end local v11           #downloadCount:J
    .end local v13           #e:Lorg/json/JSONException;
    .end local v15           #icon_url:Ljava/lang/String;
    .end local v19           #itemType:Ljava/lang/String;
    .end local v20           #navigateTo:Ljava/lang/String;
    .end local v24           #productId:Ljava/lang/String;
    .end local v25           #publishedDate:J
    .end local v30           #version:Ljava/lang/String;
    .end local v31           #viewType:Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 110
    .restart local v13       #e:Lorg/json/JSONException;
    sget-object v32, Lcom/htc/store/module/json/ItemListFeed;->TAG:Ljava/lang/String;

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v13}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    aput-object v13, v33, v34

    invoke-static/range {v32 .. v33}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    throw v13

    .line 116
    .end local v13           #e:Lorg/json/JSONException;
    .end local v16           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v18           #itemObj:Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/json/ItemListFeed;->updateTTL(J)V

    .line 117
    return-object v27
.end method

.method protected updateTTL(J)V
    .locals 6
    .parameter "ttl"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v1, p0, Lcom/htc/store/module/json/ItemListFeed;->mCategoryId:J

    const/4 v3, 0x3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateCategoryTTLItem(JIJ)Z

    .line 41
    return-void
.end method
