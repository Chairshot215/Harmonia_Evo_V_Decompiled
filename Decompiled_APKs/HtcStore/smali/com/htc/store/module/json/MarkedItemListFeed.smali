.class public Lcom/htc/store/module/json/MarkedItemListFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "MarkedItemListFeed.java"


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


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/module/json/MarkedItemListFeed;->mResult:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, url:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->getGetMarkedItemsURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/MarkedItemListFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
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
    .line 25
    const-string v7, "totalCount"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 27
    .local v6, totalCount:I
    const-string v7, "entries"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 28
    .local v2, itemArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 29
    .local v0, arrayLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 30
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 31
    .local v3, itemObject:Lorg/json/JSONObject;
    new-instance v5, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-direct {v5}, Lcom/htc/store/module/vo/MyActivityItem;-><init>()V

    .line 33
    .local v5, myActivity:Lcom/htc/store/module/vo/MyActivityItem;
    const-string v7, "productID"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineItemId(Ljava/lang/String;)V

    .line 34
    const-string v7, "markID"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineMarkedId(Ljava/lang/String;)V

    .line 35
    const-string v7, "displayName"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    .line 36
    const-string v7, "iconURL"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setItemIconUrl(Ljava/lang/String;)V

    .line 37
    const-string v7, "appPackageName"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setItemPackageName(Ljava/lang/String;)V

    .line 38
    const-string v7, "appId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 39
    const-string v7, "itemType"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v4

    .line 40
    .local v4, itemType:I
    invoke-static {v4}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineContentType(Ljava/lang/String;)V

    .line 41
    const-string v7, "version"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 42
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 47
    const-string v7, "skuID"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->printContent()V

    .line 51
    iget-object v7, p0, Lcom/htc/store/module/json/MarkedItemListFeed;->mResult:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v3           #itemObject:Lorg/json/JSONObject;
    .end local v4           #itemType:I
    .end local v5           #myActivity:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_0
    iget-object v7, p0, Lcom/htc/store/module/json/MarkedItemListFeed;->mResult:Ljava/util/ArrayList;

    return-object v7
.end method
