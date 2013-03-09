.class public Lcom/htc/store/module/json/SimilarItemFeed;
.super Lcom/htc/store/module/json/ItemListFeed;
.source "SimilarItemFeed.java"


# instance fields
.field private mOnlineItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "onlineItemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/ItemListFeed;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/htc/store/module/json/SimilarItemFeed;->mOnlineItemId:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "productId"
    .parameter "isOperator"

    .prologue
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .local v2, url:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v3}, Lcom/htc/store/module/PreferenceManager;->getSimilarURI()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, similarURI:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v0, sbb:Ljava/lang/StringBuffer;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v4}, Lcom/htc/store/module/PreferenceManager;->getOperatorURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .end local v0           #sbb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 27
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected updateTTL(J)V
    .locals 3
    .parameter "ttl"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/store/module/json/ItemListFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v1, p0, Lcom/htc/store/module/json/SimilarItemFeed;->mOnlineItemId:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateItemTTLItem(Ljava/lang/String;IJ)Z

    .line 38
    return-void
.end method
