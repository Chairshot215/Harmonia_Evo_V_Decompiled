.class public Lcom/htc/store/module/json/FeaturedFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "FeaturedFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/store/module/vo/FeaturedItem;",
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
    const-class v0, Lcom/htc/store/module/json/FeaturedFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/FeaturedFeed;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/htc/store/module/json/FeaturedFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 27
    iput-wide p2, p0, Lcom/htc/store/module/json/FeaturedFeed;->mCategoryId:J

    .line 28
    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mContentPath:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, url:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getFeaturedURI()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, featuredURI:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getOperatorURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 143
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
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/FeaturedFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

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
            "Lcom/htc/store/module/vo/FeaturedItem;",
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
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v17, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    const-string v1, "featured"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 40
    .local v14, itemArray:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 41
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 42
    .local v15, itemObj:Lorg/json/JSONObject;
    new-instance v13, Lcom/htc/store/module/vo/FeaturedItem;

    invoke-direct {v13}, Lcom/htc/store/module/vo/FeaturedItem;-><init>()V

    .line 44
    .local v13, item:Lcom/htc/store/module/vo/FeaturedItem;
    :try_start_1
    const-string v1, "contentCategory"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, categoryID:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v13, v8}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineCategoryId(Ljava/lang/String;)V

    .line 56
    const-string v1, "displayName"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, displayName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {v13, v9}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineItemLabel(Ljava/lang/String;)V

    .line 68
    const-string v1, "productID"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 69
    .local v16, productID:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineItemId(Ljava/lang/String;)V

    .line 80
    const-string v1, "navigateTo"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineActionType(Ljava/lang/String;)I

    move-result v7

    .line 81
    .local v7, action_type:I
    invoke-virtual {v13, v7}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineActionTypeOnClick(I)V

    .line 82
    const/4 v1, 0x7

    if-ne v1, v7, :cond_3

    .line 83
    const-string v1, "intentTrigger"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineTriggerOnClick(Ljava/lang/String;)V

    .line 98
    :goto_1
    const-string v1, "imageURL"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, iconURL:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 100
    invoke-virtual {v13, v12}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 110
    const-string v1, "displayOrder"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineOrder(I)V

    .line 111
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/store/module/json/FeaturedFeed;->mCategoryId:J

    invoke-virtual {v13, v1, v2}, Lcom/htc/store/module/vo/FeaturedItem;->setCategoryId(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :try_start_2
    const-string v1, "trackingID"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    :goto_2
    invoke-virtual {v13}, Lcom/htc/store/module/vo/FeaturedItem;->printContent()V

    .line 123
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .end local v7           #action_type:I
    .end local v9           #displayName:Ljava/lang/String;
    .end local v12           #iconURL:Ljava/lang/String;
    .end local v16           #productID:Ljava/lang/String;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 35
    .end local v8           #categoryID:Ljava/lang/String;
    .end local v11           #i:I
    .end local v13           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v14           #itemArray:Lorg/json/JSONArray;
    .end local v15           #itemObj:Lorg/json/JSONObject;
    .end local v17           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    :catch_0
    move-exception v10

    .line 36
    .local v10, e:Lorg/json/JSONException;
    throw v10

    .line 52
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v8       #categoryID:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v13       #item:Lcom/htc/store/module/vo/FeaturedItem;
    .restart local v14       #itemArray:Lorg/json/JSONArray;
    .restart local v15       #itemObj:Lorg/json/JSONObject;
    .restart local v17       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    :cond_0
    :try_start_3
    sget-object v1, Lcom/htc/store/module/json/FeaturedFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Missing category ID in json feed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 112
    .end local v8           #categoryID:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 114
    .restart local v10       #e:Lorg/json/JSONException;
    throw v10

    .line 64
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v8       #categoryID:Ljava/lang/String;
    .restart local v9       #displayName:Ljava/lang/String;
    :cond_1
    :try_start_4
    sget-object v1, Lcom/htc/store/module/json/FeaturedFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Missing displayed name in json feed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 76
    .restart local v16       #productID:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/htc/store/module/json/FeaturedFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Missing product ID in json feed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 84
    .restart local v7       #action_type:I
    :cond_3
    if-nez v7, :cond_4

    .line 89
    sget-object v1, Lcom/htc/store/module/json/FeaturedFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Missing navigateTo in json feed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 94
    :cond_4
    const-string v1, "viewType"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineDetailPageType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/htc/store/module/vo/FeaturedItem;->setOnlineDetailPageTypeOnClick(I)V

    goto :goto_1

    .line 106
    .restart local v12       #iconURL:Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/htc/store/module/json/FeaturedFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Missing icon URL in json feed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 119
    :catch_2
    move-exception v10

    .line 120
    .restart local v10       #e:Lorg/json/JSONException;
    sget-object v1, Lcom/htc/store/module/json/FeaturedFeed;->TAG:Ljava/lang/String;

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

    .line 125
    .end local v7           #action_type:I
    .end local v8           #categoryID:Ljava/lang/String;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #e:Lorg/json/JSONException;
    .end local v12           #iconURL:Ljava/lang/String;
    .end local v13           #item:Lcom/htc/store/module/vo/FeaturedItem;
    .end local v15           #itemObj:Lorg/json/JSONObject;
    .end local v16           #productID:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/module/json/FeaturedFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/store/module/json/FeaturedFeed;->mCategoryId:J

    const/4 v4, 0x5

    invoke-virtual/range {v1 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateCategoryTTLItem(JIJ)Z

    .line 126
    return-object v17
.end method
