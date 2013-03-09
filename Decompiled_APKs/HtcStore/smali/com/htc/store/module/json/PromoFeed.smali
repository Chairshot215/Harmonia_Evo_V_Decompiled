.class public Lcom/htc/store/module/json/PromoFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "PromoFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/store/module/vo/PromoItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mCategoryId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/store/module/json/PromoFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/PromoFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/PromoFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 27
    iput-wide p2, p0, Lcom/htc/store/module/json/PromoFeed;->mCategoryId:J

    .line 28
    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mContentPath:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, url:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getPromoURI()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, promURI:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getOperatorURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 129
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
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/PromoFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 18
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
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
    const-wide/16 v5, 0x0

    .line 34
    .local v5, ttl:J
    :try_start_0
    const-string v1, "ttl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 38
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v16, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    const-string v1, "promotions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 40
    .local v14, itemArray:Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 41
    .local v8, arrayLength:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v8, :cond_2

    .line 42
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 43
    .local v15, itemObj:Lorg/json/JSONObject;
    new-instance v13, Lcom/htc/store/module/vo/PromoItem;

    invoke-direct {v13}, Lcom/htc/store/module/vo/PromoItem;-><init>()V

    .line 46
    .local v13, item:Lcom/htc/store/module/vo/PromoItem;
    :try_start_1
    const-string v1, "contentCategory"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, categoryID:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v13, v9}, Lcom/htc/store/module/vo/PromoItem;->setOnlineCategoryId(Ljava/lang/String;)V

    .line 57
    const-string v1, "productID"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 58
    .local v17, productID:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/store/module/vo/PromoItem;->setOnlineItemId(Ljava/lang/String;)V

    .line 68
    const-string v1, "navigateTo"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineActionType(Ljava/lang/String;)I

    move-result v7

    .line 69
    .local v7, action_type:I
    invoke-virtual {v13, v7}, Lcom/htc/store/module/vo/PromoItem;->setOnlineActionTypeOnClick(I)V

    .line 70
    const/4 v1, 0x7

    if-ne v7, v1, :cond_1

    .line 71
    const-string v1, "intentTrigger"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/htc/store/module/vo/PromoItem;->setOnlineTriggerOnClick(Ljava/lang/String;)V

    .line 85
    :goto_1
    const-string v1, "imageURL"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, imgURL:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v13, v12}, Lcom/htc/store/module/vo/PromoItem;->setOnlineImageURLPortrait(Ljava/lang/String;)V

    .line 96
    const-string v1, "displayOrder"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/htc/store/module/vo/PromoItem;->setOnlineOrder(I)V

    .line 97
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/store/module/json/PromoFeed;->mCategoryId:J

    invoke-virtual {v13, v1, v2}, Lcom/htc/store/module/vo/PromoItem;->setCategoryId(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :try_start_2
    const-string v1, "trackingID"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :goto_2
    invoke-virtual {v13}, Lcom/htc/store/module/vo/PromoItem;->printContent()V

    .line 109
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v7           #action_type:I
    .end local v12           #imgURL:Ljava/lang/String;
    .end local v17           #productID:Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 35
    .end local v8           #arrayLength:I
    .end local v9           #categoryID:Ljava/lang/String;
    .end local v11           #i:I
    .end local v13           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v14           #itemArray:Lorg/json/JSONArray;
    .end local v15           #itemObj:Lorg/json/JSONObject;
    .end local v16           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    :catch_0
    move-exception v10

    .line 36
    .local v10, e:Lorg/json/JSONException;
    throw v10

    .line 72
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v7       #action_type:I
    .restart local v8       #arrayLength:I
    .restart local v9       #categoryID:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v13       #item:Lcom/htc/store/module/vo/PromoItem;
    .restart local v14       #itemArray:Lorg/json/JSONArray;
    .restart local v15       #itemObj:Lorg/json/JSONObject;
    .restart local v16       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .restart local v17       #productID:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_0

    .line 81
    :try_start_3
    const-string v1, "viewType"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineDetailPageType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/htc/store/module/vo/PromoItem;->setOnlineDetailPageTypeOnClick(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 98
    .end local v7           #action_type:I
    .end local v9           #categoryID:Ljava/lang/String;
    .end local v17           #productID:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 100
    .restart local v10       #e:Lorg/json/JSONException;
    throw v10

    .line 105
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v7       #action_type:I
    .restart local v9       #categoryID:Ljava/lang/String;
    .restart local v12       #imgURL:Ljava/lang/String;
    .restart local v17       #productID:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 106
    .restart local v10       #e:Lorg/json/JSONException;
    sget-object v1, Lcom/htc/store/module/json/PromoFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 111
    .end local v7           #action_type:I
    .end local v9           #categoryID:Ljava/lang/String;
    .end local v10           #e:Lorg/json/JSONException;
    .end local v12           #imgURL:Ljava/lang/String;
    .end local v13           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v15           #itemObj:Lorg/json/JSONObject;
    .end local v17           #productID:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/module/json/PromoFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/store/module/json/PromoFeed;->mCategoryId:J

    const/4 v4, 0x4

    invoke-virtual/range {v1 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateCategoryTTLItem(JIJ)Z

    .line 112
    return-object v16
.end method
