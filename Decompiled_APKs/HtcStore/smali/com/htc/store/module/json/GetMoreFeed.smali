.class public Lcom/htc/store/module/json/GetMoreFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "GetMoreFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mDisplayName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/store/module/json/GetMoreFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/GetMoreFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/module/json/GetMoreFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 22
    iput-object p2, p0, Lcom/htc/store/module/json/GetMoreFeed;->mKey:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private updateTTL(J)V
    .locals 2
    .parameter "ttl"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/store/module/json/GetMoreFeed;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-object v1, p0, Lcom/htc/store/module/json/GetMoreFeed;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateGetMoreTTLItem(Ljava/lang/String;J)Z

    .line 27
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/store/module/json/GetMoreFeed;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/module/json/GetMoreFeed;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/store/module/json/GetMoreFeed;->mId:Ljava/lang/String;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/store/module/json/GetMoreFeed;->mPageType:I

    return v0
.end method

.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, url:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->getGetMoreURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/htc/store/module/json/GetMoreFeed;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/json/GetMoreFeed;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    const-wide/16 v3, 0x0

    .line 33
    .local v3, ttl:J
    :try_start_0
    const-string v5, "ttl"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 38
    const-string v5, "navigateTo"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, navi:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getOnlineActionType(Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, navigateTo:I
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/store/module/json/GetMoreFeed;->mId:Ljava/lang/String;

    .line 41
    const-string v5, "displayName"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/store/module/json/GetMoreFeed;->mDisplayName:Ljava/lang/String;

    .line 42
    const-string v5, "pageType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/store/module/json/JSONUtils;->getOnlineDetailPageType(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/store/module/json/GetMoreFeed;->mPageType:I

    .line 44
    invoke-direct {p0, v3, v4}, Lcom/htc/store/module/json/GetMoreFeed;->updateTTL(J)V

    .line 45
    sget-object v5, Lcom/htc/store/module/json/GetMoreFeed;->TAG:Ljava/lang/String;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "get more item==  ttl:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "   navigateTo:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    const-string v8, "-"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "   id:"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/htc/store/module/json/GetMoreFeed;->mId:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 34
    .end local v1           #navi:Ljava/lang/String;
    .end local v2           #navigateTo:I
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Lorg/json/JSONException;
    throw v0
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
    .line 12
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/GetMoreFeed;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
