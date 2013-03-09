.class public Lcom/htc/store/module/json/DetailItemFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "DetailItemFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Lcom/htc/store/module/vo/ItemItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mOnlineItemId:Ljava/lang/String;

.field private mSoundset:Lcom/htc/store/module/vo/SoundsetItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/store/module/json/DetailItemFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/DetailItemFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/DetailItemFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 28
    return-void
.end method

.method private getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;
    .locals 8
    .parameter "type"
    .parameter "obj"

    .prologue
    .line 211
    new-instance v1, Lcom/htc/store/module/vo/ItemItem;

    invoke-direct {v1}, Lcom/htc/store/module/vo/ItemItem;-><init>()V

    .line 213
    .local v1, item:Lcom/htc/store/module/vo/ItemItem;
    :try_start_0
    const-string v3, "productID"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, productId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    sget-object v3, Lcom/htc/store/module/json/DetailItemFeed;->TAG:Ljava/lang/String;

    const-string v4, "no product id"

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no product id"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v2           #productId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/module/json/DetailItemFeed;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v3, Lcom/htc/store/module/json/DetailItemFeed;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Some of field are missing in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sub item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const/4 v1, 0x0

    .line 247
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 218
    .restart local v2       #productId:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/htc/store/module/vo/ItemItem;->setOnlineId(Ljava/lang/String;)V

    .line 219
    const-string v3, "appId"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 220
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePackageName(Ljava/lang/String;)V

    .line 221
    const-string v3, "appSource"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/store/module/json/JSONUtils;->getOnlineContentSource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSource(I)V

    .line 222
    const-string v3, "itemType"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 223
    const-string v3, "contentSize"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSize(Ljava/lang/String;)V

    .line 224
    const-string v3, "displayName"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 225
    const-string v3, "preUrl"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineTrialContentURL(Ljava/lang/String;)V

    .line 226
    const-string v3, "publishedDate"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/htc/store/module/vo/ItemItem;->setOnlineTimeStampPublished(J)V

    .line 227
    const-string v3, "shortDescription"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineDescription(Ljava/lang/String;)V

    .line 228
    const-string v3, "contentCategory"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineGenres(Ljava/lang/String;)V

    .line 229
    const-string v3, "thumbNailImage"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 230
    const-string v3, "version"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/ItemItem;->setOnlineVersionName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateTTL(J)V
    .locals 3
    .parameter "ttl"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/store/module/json/DetailItemFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v1, p0, Lcom/htc/store/module/json/DetailItemFeed;->mOnlineItemId:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateItemTTLItem(Ljava/lang/String;IJ)Z

    .line 33
    return-void
.end method


# virtual methods
.method public getSoundsetItem()Lcom/htc/store/module/vo/SoundsetItem;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "productID"
    .parameter "isOperator"

    .prologue
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v1, url:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getDetailURI()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, detailURI:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getOperatorURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 262
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;
    .locals 28
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v10, Lcom/htc/store/module/vo/ItemItem;

    invoke-direct {v10}, Lcom/htc/store/module/vo/ItemItem;-><init>()V

    .line 38
    .local v10, item:Lcom/htc/store/module/vo/ItemItem;
    const-wide/16 v22, 0x0

    .line 40
    .local v22, ttl:J
    :try_start_0
    const-string v24, "ttl"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 45
    const-string v24, "itemType"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v5

    .line 46
    .local v5, contentType:I
    invoke-virtual {v10, v5}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 47
    const-string v24, "displayName"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 48
    const-string v24, "shortDescription"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineDescription(Ljava/lang/String;)V

    .line 49
    const-string v24, "contentCategory"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineGenres(Ljava/lang/String;)V

    .line 51
    const-string v24, "thumbNailImage"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 52
    const-string v24, "productID"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/store/module/json/DetailItemFeed;->mOnlineItemId:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mOnlineItemId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineId(Ljava/lang/String;)V

    .line 54
    const-string v24, "skuID"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSkuId(Ljava/lang/String;)V

    .line 55
    const-string v24, "author"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineAuthor(Ljava/lang/String;)V

    .line 58
    const-string v24, "htcVersion"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineVersionName(Ljava/lang/String;)V

    .line 59
    const-wide/16 v15, 0x0

    .line 61
    .local v15, publishedDate:J
    :try_start_1
    const-string v24, "publishedDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v15

    .line 65
    :goto_0
    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setOnlineTimeStampPublished(J)V

    .line 66
    const-string v24, "price"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePrice(F)V

    .line 67
    const-string v24, "appSource"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/htc/store/module/json/JSONUtils;->getOnlineContentSource(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSource(I)V

    .line 68
    const-string v24, "contentSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSize(Ljava/lang/String;)V

    .line 69
    const-string v24, "viewType"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/htc/store/module/json/JSONUtils;->getOnlineDetailPageType(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineViewType(I)V

    .line 73
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v5, v0, :cond_0

    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v5, v0, :cond_0

    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v5, v0, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_2

    .line 75
    :cond_0
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSnapshotPortraitURLs(Ljava/lang/String;)V

    .line 107
    :goto_1
    const-string v24, "appId"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 117
    packed-switch v5, :pswitch_data_0

    .line 197
    :cond_1
    :goto_2
    :pswitch_0
    if-eqz v10, :cond_15

    .line 198
    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->printContent()V

    .line 202
    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->updateTTL(J)V

    .line 203
    return-object v10

    .line 41
    .end local v5           #contentType:I
    .end local v15           #publishedDate:J
    :catch_0
    move-exception v6

    .line 42
    .local v6, e:Lorg/json/JSONException;
    throw v6

    .line 62
    .end local v6           #e:Lorg/json/JSONException;
    .restart local v5       #contentType:I
    .restart local v15       #publishedDate:J
    :catch_1
    move-exception v6

    .line 63
    .restart local v6       #e:Lorg/json/JSONException;
    sget-object v24, Lcom/htc/store/module/json/DetailItemFeed;->TAG:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Published Date is empty"

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    .end local v6           #e:Lorg/json/JSONException;
    :cond_2
    const/4 v14, 0x0

    .line 79
    .local v14, previewImagesCount:I
    :try_start_2
    const-string v24, "previewImageCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    .line 89
    :goto_4
    if-lez v14, :cond_5

    .line 90
    const-string v24, "previewImages"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 91
    .local v13, previewImages:Lorg/json/JSONArray;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v20, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_4

    .line 93
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 80
    .end local v9           #i:I
    .end local v13           #previewImages:Lorg/json/JSONArray;
    .end local v20           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v7

    .line 81
    .local v7, ee:Lcom/google/gson/JsonParseException;
    sget-object v24, Lcom/htc/store/module/json/DetailItemFeed;->TAG:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "preview image count is not integer"

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-string v24, "previewImageCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 83
    .local v21, tempCountString:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 84
    const/4 v14, 0x0

    goto :goto_4

    .line 86
    :cond_3
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_4

    .line 95
    .end local v7           #ee:Lcom/google/gson/JsonParseException;
    .end local v21           #tempCountString:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v13       #previewImages:Lorg/json/JSONArray;
    .restart local v20       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v24, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSnapshotPortraitURLs(Ljava/lang/String;)V

    .line 98
    .end local v9           #i:I
    .end local v13           #previewImages:Lorg/json/JSONArray;
    .end local v20           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-string v24, "previewImagesLandscape"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 99
    .restart local v13       #previewImages:Lorg/json/JSONArray;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .restart local v20       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_6
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_6

    .line 101
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 103
    :cond_6
    const-string v24, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineSnapshotLansscapeURLs(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    .end local v9           #i:I
    .end local v13           #previewImages:Lorg/json/JSONArray;
    .end local v14           #previewImagesCount:I
    .end local v20           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    const-string v24, "preUrl"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineTrialContentURL(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :pswitch_2
    new-instance v24, Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lcom/htc/store/module/vo/SoundsetItem;-><init>(Lcom/htc/store/module/vo/ItemItem;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    .line 126
    const/4 v10, 0x0

    .line 127
    const-string v24, "ringtone"

    const-string v25, "ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v17

    .line 128
    .local v17, ringtoneItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v24

    if-nez v24, :cond_7

    .line 129
    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 131
    :cond_7
    if-eqz v17, :cond_8

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setRingtoneItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 134
    :cond_8
    const-string v24, "alarm"

    const-string v25, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    .line 135
    .local v3, alarmItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v24

    if-nez v24, :cond_9

    .line 136
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 138
    :cond_9
    if-eqz v3, :cond_a

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/htc/store/module/vo/SoundsetItem;->setAlarmItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 141
    :cond_a
    const-string v24, "notification"

    const-string v25, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v12

    .line 142
    .local v12, notificationItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v12}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v24

    if-nez v24, :cond_b

    .line 143
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 145
    :cond_b
    if-eqz v12, :cond_c

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/htc/store/module/vo/SoundsetItem;->setNotificationItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 148
    :cond_c
    const-string v24, "message"

    const-string v25, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v11

    .line 149
    .local v11, messageItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v24

    if-nez v24, :cond_d

    .line 150
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 152
    :cond_d
    if-eqz v11, :cond_e

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/htc/store/module/vo/SoundsetItem;->setMessageItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 155
    :cond_e
    const-string v24, "calendar"

    const-string v25, "calendar"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v4

    .line 156
    .local v4, calendarItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v24

    if-nez v24, :cond_f

    .line 157
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 159
    :cond_f
    if-eqz v4, :cond_10

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/store/module/vo/SoundsetItem;->setCalendarItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 162
    :cond_10
    const-string v24, "email"

    const-string v25, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v8

    .line 163
    .local v8, emailItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v8}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v24

    if-nez v24, :cond_11

    .line 164
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 166
    :cond_11
    if-eqz v8, :cond_12

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/htc/store/module/vo/SoundsetItem;->setEmailItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 169
    :cond_12
    const-string v24, "task"

    const-string v25, "task"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/store/module/json/DetailItemFeed;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v18

    .line 170
    .local v18, taskItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v24

    if-nez v24, :cond_13

    .line 171
    const/16 v24, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/ItemItem;->setContentType(I)V

    .line 173
    :cond_13
    if-eqz v18, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/SoundsetItem;->setTaskItem(Lcom/htc/store/module/vo/ItemItem;)V

    goto/16 :goto_2

    .line 183
    .end local v3           #alarmItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v4           #calendarItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v8           #emailItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v11           #messageItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v12           #notificationItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v17           #ringtoneItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v18           #taskItem:Lcom/htc/store/module/vo/ItemItem;
    :pswitch_3
    const-string v24, "appPackageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePackageName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 186
    :pswitch_4
    const-string v24, "appPackageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePackageName(Ljava/lang/String;)V

    .line 187
    const-string v24, "isPlugin"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 188
    .local v19, temp:Ljava/lang/String;
    const-string v24, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 189
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePackageTypePlugin(Z)V

    goto/16 :goto_2

    .line 191
    :cond_14
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlinePackageTypePlugin(Z)V

    goto/16 :goto_2

    .line 200
    .end local v19           #temp:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/module/json/DetailItemFeed;->mSoundset:Lcom/htc/store/module/vo/SoundsetItem;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/store/module/vo/SoundsetItem;->printContent()V

    goto/16 :goto_3

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
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
    .line 19
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/DetailItemFeed;->parse(Lorg/json/JSONObject;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    return-object v0
.end method
