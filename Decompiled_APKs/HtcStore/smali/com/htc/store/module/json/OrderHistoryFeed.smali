.class public Lcom/htc/store/module/json/OrderHistoryFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "OrderHistoryFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/store/module/vo/MyActivityItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLatestTimestamp:J

.field private mOldestTimestamp:J

.field private mPageSize:I

.field private mResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIndex:I

.field private mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/store/module/json/OrderHistoryFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/OrderHistoryFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "startIndex"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mTotalCount:I

    .line 21
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mOldestTimestamp:J

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mLatestTimestamp:J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mResult:Ljava/util/ArrayList;

    .line 26
    iput p2, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mStartIndex:I

    .line 27
    iput p3, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mPageSize:I

    .line 28
    return-void
.end method


# virtual methods
.method public getLatestTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mLatestTimestamp:J

    return-wide v0
.end method

.method public getOldestTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mOldestTimestamp:J

    return-wide v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mTotalCount:I

    return v0
.end method

.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, url:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->getOrderHistoryURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mStartIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mPageSize:I

    if-lez v1, :cond_0

    .line 102
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "startIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "pageSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/json/OrderHistoryFeed;->mPageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "states"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "submitted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/OrderHistoryFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 22
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v18, "orderList"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 34
    .local v11, itemArray:Lorg/json/JSONArray;
    const-string v18, "count"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/store/module/json/OrderHistoryFeed;->mTotalCount:I

    .line 36
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 37
    .local v4, array_length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v4, :cond_2

    .line 38
    new-instance v14, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-direct {v14}, Lcom/htc/store/module/vo/MyActivityItem;-><init>()V

    .line 39
    .local v14, myActivity:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 44
    .local v12, itemObjct:Lorg/json/JSONObject;
    :try_start_0
    const-string v18, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 45
    .local v15, orderId:Ljava/lang/String;
    const-string v18, "createdTime"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 47
    .local v5, createdTime:J
    const-wide/16 v18, 0x3e8

    mul-long v5, v5, v18

    .line 48
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/module/json/OrderHistoryFeed;->mOldestTimestamp:J

    move-wide/from16 v18, v0

    cmp-long v18, v5, v18

    if-gez v18, :cond_0

    .line 49
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/store/module/json/OrderHistoryFeed;->mOldestTimestamp:J

    .line 51
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/module/json/OrderHistoryFeed;->mLatestTimestamp:J

    move-wide/from16 v18, v0

    cmp-long v18, v5, v18

    if-lez v18, :cond_1

    .line 52
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/store/module/json/OrderHistoryFeed;->mLatestTimestamp:J

    .line 54
    :cond_1
    const-string v18, "productID"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 55
    .local v16, productId:Ljava/lang/String;
    const-string v18, "displayName"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, displayName:Ljava/lang/String;
    const-string v18, "iconURL"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, iconUrl:Ljava/lang/String;
    const-string v18, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, appId:Ljava/lang/String;
    const-string v18, "itemType"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, itemType:Ljava/lang/String;
    const-string v18, "appPackageName"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, appPackageName:Ljava/lang/String;
    const-string v18, "appRecentVersion"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 63
    .local v17, version:Ljava/lang/String;
    invoke-virtual {v14, v5, v6}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 64
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineItemId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v14, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v14, v10}, Lcom/htc/store/module/vo/MyActivityItem;->setItemIconUrl(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v14, v2}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v14, v13}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineContentType(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v14, v3}, Lcom/htc/store/module/vo/MyActivityItem;->setItemPackageName(Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 71
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineIsPurchased(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-virtual {v14}, Lcom/htc/store/module/vo/MyActivityItem;->printContent()V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/OrderHistoryFeed;->mResult:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 74
    .end local v2           #appId:Ljava/lang/String;
    .end local v3           #appPackageName:Ljava/lang/String;
    .end local v5           #createdTime:J
    .end local v7           #displayName:Ljava/lang/String;
    .end local v10           #iconUrl:Ljava/lang/String;
    .end local v13           #itemType:Ljava/lang/String;
    .end local v15           #orderId:Ljava/lang/String;
    .end local v16           #productId:Ljava/lang/String;
    .end local v17           #version:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 76
    .local v8, e:Lorg/json/JSONException;
    sget-object v18, Lcom/htc/store/module/json/OrderHistoryFeed;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v8, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    throw v8

    .line 82
    .end local v8           #e:Lorg/json/JSONException;
    .end local v12           #itemObjct:Lorg/json/JSONObject;
    .end local v14           #myActivity:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/OrderHistoryFeed;->mResult:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    return-object v18
.end method
