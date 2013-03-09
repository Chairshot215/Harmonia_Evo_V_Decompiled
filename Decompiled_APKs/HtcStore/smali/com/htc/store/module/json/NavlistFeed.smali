.class public Lcom/htc/store/module/json/NavlistFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "NavlistFeed.java"


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

.field private mActionType:I

.field private mFrameID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/store/module/json/NavlistFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/NavlistFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "frameId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/NavlistFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 25
    iput-wide p2, p0, Lcom/htc/store/module/json/NavlistFeed;->mFrameID:J

    .line 26
    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mContentPath:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v1, url:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getNavlistURI()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, navlistURI:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v2}, Lcom/htc/store/module/PreferenceManager;->getOperatorURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 154
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
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/NavlistFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

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
    .line 30
    const-wide/16 v5, 0x0

    .line 32
    .local v5, ttl:J
    :try_start_0
    const-string v1, "ttl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 36
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v17, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    const-string v1, "navigationItems"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 38
    .local v14, itemArray:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 39
    new-instance v7, Lcom/htc/store/module/vo/CategoryItem;

    invoke-direct {v7}, Lcom/htc/store/module/vo/CategoryItem;-><init>()V

    .line 41
    .local v7, category:Lcom/htc/store/module/vo/CategoryItem;
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 43
    .local v13, item:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/store/module/json/NavlistFeed;->mFrameID:J

    invoke-virtual {v7, v1, v2}, Lcom/htc/store/module/vo/CategoryItem;->setParentId(J)V

    .line 45
    :try_start_1
    const-string v1, "displayName"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, displayName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {v7, v9}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 56
    const-string v1, "contentCategory"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 57
    .local v16, plainId:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineId(Ljava/lang/String;)V

    .line 59
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePlainId(Ljava/lang/String;)V

    .line 71
    :goto_1
    const-string v1, "description"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, description:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {v7, v8}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineDescription(Ljava/lang/String;)V

    .line 82
    const-string v1, "imageURL"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, imgURL:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineIconURL(Ljava/lang/String;)V

    .line 93
    const-string v1, "navigateTo"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineActionType(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/store/module/json/NavlistFeed;->mActionType:I

    .line 94
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/store/module/json/NavlistFeed;->mActionType:I

    invoke-virtual {v7, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineActionTypeOnClick(I)V

    .line 95
    const/4 v1, 0x7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/json/NavlistFeed;->mActionType:I

    if-ne v1, v2, :cond_3

    .line 96
    const-string v1, "intentTrigger"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineTriggerOnClick(Ljava/lang/String;)V

    .line 109
    :goto_2
    const-string v1, "displayOrder"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineOrder(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    const/4 v1, 0x7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/module/json/NavlistFeed;->mActionType:I

    if-ne v1, v2, :cond_0

    .line 117
    :try_start_2
    const-string v1, "componentPackage"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 118
    .local v15, packageName:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {v7, v15}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePackageName(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 134
    .end local v15           #packageName:Ljava/lang/String;
    :cond_0
    :goto_3
    invoke-virtual {v7}, Lcom/htc/store/module/vo/CategoryItem;->printContent()V

    .line 135
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v8           #description:Ljava/lang/String;
    .end local v12           #imgURL:Ljava/lang/String;
    .end local v16           #plainId:Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 33
    .end local v7           #category:Lcom/htc/store/module/vo/CategoryItem;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v11           #i:I
    .end local v13           #item:Lorg/json/JSONObject;
    .end local v14           #itemArray:Lorg/json/JSONArray;
    .end local v17           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :catch_0
    move-exception v10

    .line 34
    .local v10, e:Lorg/json/JSONException;
    throw v10

    .line 61
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v7       #category:Lcom/htc/store/module/vo/CategoryItem;
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v13       #item:Lorg/json/JSONObject;
    .restart local v14       #itemArray:Lorg/json/JSONArray;
    .restart local v16       #plainId:Ljava/lang/String;
    .restart local v17       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :cond_2
    :try_start_3
    const-string v1, ""

    invoke-virtual {v7, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineId(Ljava/lang/String;)V

    .line 62
    const-string v1, ""

    invoke-virtual {v7, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePlainId(Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/htc/store/module/json/NavlistFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "no contentCategory attribute in "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 110
    .end local v9           #displayName:Ljava/lang/String;
    .end local v16           #plainId:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 112
    .restart local v10       #e:Lorg/json/JSONException;
    throw v10

    .line 97
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v8       #description:Ljava/lang/String;
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v12       #imgURL:Ljava/lang/String;
    .restart local v16       #plainId:Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/store/module/json/NavlistFeed;->mActionType:I

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "pageType"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineDetailPageType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePageType(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 121
    :catch_2
    move-exception v10

    .line 122
    .restart local v10       #e:Lorg/json/JSONException;
    sget-object v1, Lcom/htc/store/module/json/NavlistFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Server do not have this key : componentPackage"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-string v1, "com.sdgtl.watch.shooter"

    invoke-virtual {v7, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePackageName(Ljava/lang/String;)V

    goto :goto_3

    .line 137
    .end local v7           #category:Lcom/htc/store/module/vo/CategoryItem;
    .end local v8           #description:Ljava/lang/String;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #e:Lorg/json/JSONException;
    .end local v12           #imgURL:Ljava/lang/String;
    .end local v13           #item:Lorg/json/JSONObject;
    .end local v16           #plainId:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/module/json/NavlistFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/store/module/json/NavlistFeed;->mFrameID:J

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateCategoryTTLItem(JIJ)Z

    .line 138
    return-object v17
.end method
