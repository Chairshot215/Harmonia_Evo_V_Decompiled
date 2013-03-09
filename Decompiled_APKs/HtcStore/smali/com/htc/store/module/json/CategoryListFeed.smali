.class public Lcom/htc/store/module/json/CategoryListFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "CategoryListFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/store/module/vo/CategoryItem;",
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
    .line 18
    const-class v0, Lcom/htc/store/module/json/CategoryListFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/CategoryListFeed;->TAG:Ljava/lang/String;

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
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/CategoryListFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 26
    iput-wide p2, p0, Lcom/htc/store/module/json/CategoryListFeed;->mCategoryId:J

    .line 27
    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mContentPath:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, url:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getCategoryURI()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, categoryURI:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getOperatorURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 147
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
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/CategoryListFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 21
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    const-wide/16 v5, 0x0

    .line 33
    .local v5, ttl:J
    :try_start_0
    const-string v1, "ttl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 40
    :try_start_1
    const-string v1, "parentCategoryName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 42
    .local v19, parent_category:Ljava/lang/String;
    const-string v1, "parentCategoryID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    const-string v1, "subcategories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 48
    .local v18, itemArray:Lorg/json/JSONArray;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 49
    .local v8, array_length:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v8, :cond_3

    .line 50
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 52
    .local v17, item:Lorg/json/JSONObject;
    new-instance v9, Lcom/htc/store/module/vo/CategoryItem;

    invoke-direct {v9}, Lcom/htc/store/module/vo/CategoryItem;-><init>()V

    .line 55
    .local v9, category:Lcom/htc/store/module/vo/CategoryItem;
    :try_start_2
    const-string v1, "categoryID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, categoryID:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v9, v10}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineId(Ljava/lang/String;)V

    .line 66
    const-string v1, "contentCategory"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, contentCategory:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {v9, v11}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePlainId(Ljava/lang/String;)V

    .line 77
    const-string v1, "displayName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, displayName:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {v9, v13}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 88
    const-string v1, "description"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, description:Ljava/lang/String;
    invoke-virtual {v9, v12}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineDescription(Ljava/lang/String;)V

    .line 91
    const-string v1, "imageURL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, imgURL:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 102
    :goto_1
    const-string v1, "navigateTo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineActionType(Ljava/lang/String;)I

    move-result v7

    .line 103
    .local v7, action_type:I
    invoke-virtual {v9, v7}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineActionTypeOnClick(I)V

    .line 104
    const/4 v1, 0x7

    if-ne v7, v1, :cond_2

    .line 105
    const-string v1, "intentTrigger"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineTriggerOnClick(Ljava/lang/String;)V

    .line 119
    :goto_2
    const-string v1, "displayOrder"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineOrder(I)V

    .line 120
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/store/module/json/CategoryListFeed;->mCategoryId:J

    invoke-virtual {v9, v1, v2}, Lcom/htc/store/module/vo/CategoryItem;->setParentId(J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    invoke-virtual {v9}, Lcom/htc/store/module/vo/CategoryItem;->printContent()V

    .line 127
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v7           #action_type:I
    .end local v11           #contentCategory:Ljava/lang/String;
    .end local v12           #description:Ljava/lang/String;
    .end local v13           #displayName:Ljava/lang/String;
    .end local v16           #imgURL:Ljava/lang/String;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 34
    .end local v8           #array_length:I
    .end local v9           #category:Lcom/htc/store/module/vo/CategoryItem;
    .end local v10           #categoryID:Ljava/lang/String;
    .end local v15           #i:I
    .end local v17           #item:Lorg/json/JSONObject;
    .end local v18           #itemArray:Lorg/json/JSONArray;
    .end local v19           #parent_category:Ljava/lang/String;
    .end local v20           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :catch_0
    move-exception v14

    .line 35
    .local v14, e:Lorg/json/JSONException;
    throw v14

    .line 43
    .end local v14           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v14

    .line 44
    .restart local v14       #e:Lorg/json/JSONException;
    throw v14

    .line 99
    .end local v14           #e:Lorg/json/JSONException;
    .restart local v8       #array_length:I
    .restart local v9       #category:Lcom/htc/store/module/vo/CategoryItem;
    .restart local v10       #categoryID:Ljava/lang/String;
    .restart local v11       #contentCategory:Ljava/lang/String;
    .restart local v12       #description:Ljava/lang/String;
    .restart local v13       #displayName:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v16       #imgURL:Ljava/lang/String;
    .restart local v17       #item:Lorg/json/JSONObject;
    .restart local v18       #itemArray:Lorg/json/JSONArray;
    .restart local v19       #parent_category:Ljava/lang/String;
    .restart local v20       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :cond_1
    :try_start_3
    const-string v1, ""

    invoke-virtual {v9, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineIconURL(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 121
    .end local v10           #categoryID:Ljava/lang/String;
    .end local v11           #contentCategory:Ljava/lang/String;
    .end local v12           #description:Ljava/lang/String;
    .end local v13           #displayName:Ljava/lang/String;
    .end local v16           #imgURL:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 123
    .restart local v14       #e:Lorg/json/JSONException;
    sget-object v1, Lcom/htc/store/module/json/CategoryListFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    throw v14

    .line 106
    .end local v14           #e:Lorg/json/JSONException;
    .restart local v7       #action_type:I
    .restart local v10       #categoryID:Ljava/lang/String;
    .restart local v11       #contentCategory:Ljava/lang/String;
    .restart local v12       #description:Ljava/lang/String;
    .restart local v13       #displayName:Ljava/lang/String;
    .restart local v16       #imgURL:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 115
    :try_start_4
    const-string v1, "pageType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineDetailPageType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePageType(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 129
    .end local v7           #action_type:I
    .end local v9           #category:Lcom/htc/store/module/vo/CategoryItem;
    .end local v10           #categoryID:Ljava/lang/String;
    .end local v11           #contentCategory:Ljava/lang/String;
    .end local v12           #description:Ljava/lang/String;
    .end local v13           #displayName:Ljava/lang/String;
    .end local v16           #imgURL:Ljava/lang/String;
    .end local v17           #item:Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/module/json/CategoryListFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/store/module/json/CategoryListFeed;->mCategoryId:J

    const/4 v4, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateCategoryTTLItem(JIJ)Z

    .line 130
    return-object v20
.end method
