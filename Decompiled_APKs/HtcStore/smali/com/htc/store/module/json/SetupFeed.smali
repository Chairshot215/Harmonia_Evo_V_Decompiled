.class public Lcom/htc/store/module/json/SetupFeed;
.super Lcom/htc/store/module/json/JSONFeedRequest;
.source "SetupFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/json/JSONFeedRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/store/module/vo/CarouselItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSetupURI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/store/module/json/SetupFeed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/json/SetupFeed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "csContext"
    .parameter "storeContext"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 36
    :try_start_0
    new-instance v1, Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v2, "stores"

    invoke-direct {v1, p1, p3, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/htc/cslib/restHelper/CSRestProxy;->setupURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/module/json/SetupFeed;->mSetupURI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/module/json/SetupFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .parameter "context"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/htc/store/module/json/JSONFeedRequest;-><init>(Landroid/content/Context;)V

    .line 24
    :try_start_0
    new-instance v1, Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v2, "stores"

    invoke-direct {v1, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/htc/cslib/restHelper/CSRestProxy;->setupURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/module/json/SetupFeed;->mSetupURI:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/htc/store/module/json/SetupFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setup URI from cslib is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/module/json/SetupFeed;->mSetupURI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/module/json/SetupFeed;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "contentPath"
    .parameter "isOperator"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, url:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/htc/store/module/json/SetupFeed;->mSetupURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
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
    .line 17
    invoke-virtual {p0, p1}, Lcom/htc/store/module/json/SetupFeed;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

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
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    const-wide/16 v12, 0x0

    .line 48
    .local v12, ttl:J
    :try_start_0
    const-string v14, "ttl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 52
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "promoURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setPromoURI(Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "promoBannerRotationTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setPromoRotationTime(Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "featuredURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setFeaturedURI(Ljava/lang/String;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "navlistURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setNavlistURI(Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "categorylistURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setCategoryURI(Ljava/lang/String;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "itemlistURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setItemlistURI(Ljava/lang/String;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "detailURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setDetailURI(Ljava/lang/String;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "buyURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setBuyURI(Ljava/lang/String;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "markitemURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setMarkItemURI(Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "similarURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setSimilarURI(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "getitemsmarkedURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setGetMarkedItemsURI(Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "orderhistoryURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setOrderHistoryURI(Ljava/lang/String;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "getmoreURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setGetMoreURI(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "likeURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setLikeURI(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "commentURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setCommentURI(Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "commentLikeCountURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setCommentLikeURI(Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "friendFeedbackURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setFriendFeedbackURI(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "friendCommentsAndLikesURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setFriendCommentsAndLikesURI(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "friendsCommentsAndLikesURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setFriendsCommentsAndLikesURI(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "operatorURI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setOperatorURI(Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "currencyPrefix"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setCurrencyPrefix(Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "currencySuffix"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setCurrencySuffix(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-string v15, "trackingCampaignParameter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/store/module/PreferenceManager;->setTrackingCampaignParameter(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :try_start_2
    const-string v14, "appTitle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    const-string v14, "appIconURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    const-string v14, "operatorTitle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    const-string v14, "operatorIconURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :goto_0
    const/4 v6, 0x0

    .line 94
    .local v6, primaryTabs:Lorg/json/JSONObject;
    :try_start_3
    const-string v14, "primaryTabs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    .line 99
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v8, v1, v3

    .line 100
    .local v8, s:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 101
    new-instance v10, Lcom/htc/store/module/vo/CarouselItem;

    invoke-direct {v10}, Lcom/htc/store/module/vo/CarouselItem;-><init>()V

    .line 102
    .local v10, tab:Lcom/htc/store/module/vo/CarouselItem;
    const-string v14, "primaryTabs"

    invoke-static {v14}, Lcom/htc/store/module/json/JSONUtils;->getOnlineTabs(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setGroupId(I)V

    .line 106
    :try_start_4
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v11

    .line 112
    .local v11, tabInfo:Lorg/json/JSONObject;
    invoke-virtual {v10, v8}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineId(Ljava/lang/String;)V

    .line 113
    const-string v14, "displayName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 115
    const-string v14, "icons"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 116
    .local v4, icons:Lorg/json/JSONObject;
    const-string v14, "restState"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineIconRestURL(Ljava/lang/String;)V

    .line 117
    const-string v14, "pressState"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineIconOnURL(Ljava/lang/String;)V

    .line 118
    const-string v14, "overlayState"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineIconOverlayURL(Ljava/lang/String;)V

    .line 120
    const-string v14, "displayOrder"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineOrder(I)V

    .line 121
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v4           #icons:Lorg/json/JSONObject;
    .end local v10           #tab:Lcom/htc/store/module/vo/CarouselItem;
    .end local v11           #tabInfo:Lorg/json/JSONObject;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #primaryTabs:Lorg/json/JSONObject;
    .end local v7           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    .end local v8           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Lorg/json/JSONException;
    throw v2

    .line 78
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v7       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    :catch_1
    move-exception v2

    .line 80
    .restart local v2       #e:Lorg/json/JSONException;
    throw v2

    .line 88
    .end local v2           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 89
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v14, Lcom/htc/store/module/json/SetupFeed;->TAG:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v6       #primaryTabs:Lorg/json/JSONObject;
    :catch_3
    move-exception v2

    .line 97
    .restart local v2       #e:Lorg/json/JSONException;
    throw v2

    .line 107
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v10       #tab:Lcom/htc/store/module/vo/CarouselItem;
    :catch_4
    move-exception v2

    .line 108
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v14, Lcom/htc/store/module/json/SetupFeed;->TAG:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 125
    .end local v2           #e:Lorg/json/JSONException;
    .end local v8           #s:Ljava/lang/String;
    .end local v10           #tab:Lcom/htc/store/module/vo/CarouselItem;
    :cond_1
    const/4 v9, 0x0

    .line 127
    .local v9, secondaryTabs:Lorg/json/JSONObject;
    :try_start_5
    const-string v14, "secondaryTabs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v9

    .line 133
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v8, v1, v3

    .line 134
    .restart local v8       #s:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 135
    new-instance v10, Lcom/htc/store/module/vo/CarouselItem;

    invoke-direct {v10}, Lcom/htc/store/module/vo/CarouselItem;-><init>()V

    .line 136
    .restart local v10       #tab:Lcom/htc/store/module/vo/CarouselItem;
    const-string v14, "secondaryTabs"

    invoke-static {v14}, Lcom/htc/store/module/json/JSONUtils;->getOnlineTabs(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setGroupId(I)V

    .line 140
    :try_start_6
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v11

    .line 146
    .restart local v11       #tabInfo:Lorg/json/JSONObject;
    invoke-virtual {v10, v8}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineId(Ljava/lang/String;)V

    .line 147
    const-string v14, "displayName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 149
    const-string v14, "icons"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 150
    .restart local v4       #icons:Lorg/json/JSONObject;
    const-string v14, "restState"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineIconRestURL(Ljava/lang/String;)V

    .line 151
    const-string v14, "pressState"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineIconOnURL(Ljava/lang/String;)V

    .line 152
    const-string v14, "overlayState"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineIconOverlayURL(Ljava/lang/String;)V

    .line 154
    const-string v14, "displayOrder"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/htc/store/module/vo/CarouselItem;->setOnlineOrder(I)V

    .line 155
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v4           #icons:Lorg/json/JSONObject;
    .end local v10           #tab:Lcom/htc/store/module/vo/CarouselItem;
    .end local v11           #tabInfo:Lorg/json/JSONObject;
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 128
    .end local v8           #s:Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 130
    .restart local v2       #e:Lorg/json/JSONException;
    throw v2

    .line 141
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v8       #s:Ljava/lang/String;
    .restart local v10       #tab:Lcom/htc/store/module/vo/CarouselItem;
    :catch_6
    move-exception v2

    .line 142
    .restart local v2       #e:Lorg/json/JSONException;
    sget-object v14, Lcom/htc/store/module/json/SetupFeed;->TAG:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 159
    .end local v2           #e:Lorg/json/JSONException;
    .end local v8           #s:Ljava/lang/String;
    .end local v10           #tab:Lcom/htc/store/module/vo/CarouselItem;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/module/json/JSONFeedRequest;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const-wide/16 v15, 0x3e8

    mul-long/2addr v15, v12

    invoke-virtual/range {v14 .. v16}, Lcom/htc/store/module/PreferenceManager;->setSetupTTL(J)V

    .line 160
    return-object v7
.end method
