.class public Lcom/htc/opensense/social/FeedOp;
.super Lcom/htc/opensense/social/DataOp;
.source "FeedOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/DataOp",
        "<",
        "Lcom/htc/opensense/social/data/Feed;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<",
            "Lcom/htc/opensense/social/data/Feed;",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEED:Ljava/lang/String; = "feed"

.field public static final LOG_TAG:Ljava/lang/String; = "FeedService"


# instance fields
.field private final mFeed:Lcom/htc/opensense/social/data/Feed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/htc/opensense/social/FeedOp$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/FeedOp$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V
    .locals 0
    .parameter "service"
    .parameter "feed"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/DataOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    .line 48
    iput-object p2, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    .line 49
    return-void
.end method

.method public static convertToFeedServiceList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Feed;)Ljava/util/List;
    .locals 6
    .parameter "service"
    .parameter "feeds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/ISocialService;",
            "[",
            "Lcom/htc/opensense/social/data/Feed;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v4, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense/social/data/Feed;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 69
    .local v1, feed:Lcom/htc/opensense/social/data/Feed;
    new-instance v5, Lcom/htc/opensense/social/FeedOp;

    invoke-direct {v5, p0, v1}, Lcom/htc/opensense/social/FeedOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0           #arr$:[Lcom/htc/opensense/social/data/Feed;
    .end local v1           #feed:Lcom/htc/opensense/social/data/Feed;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v4
.end method

.method public static readFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/FeedOp;
    .locals 3
    .parameter "intent"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v1

    .line 82
    .local v1, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataFromIntent(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Feed;

    .line 83
    .local v0, feed:Lcom/htc/opensense/social/data/Feed;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 84
    new-instance v2, Lcom/htc/opensense/social/FeedOp;

    invoke-direct {v2, v1, v0}, Lcom/htc/opensense/social/FeedOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V

    .line 86
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v4

    .line 95
    .local v4, service:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p0}, Lcom/htc/opensense/social/SocialServiceManager;->readDataListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 98
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 100
    .local v2, feedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 101
    .local v0, data:Landroid/os/Parcelable;
    new-instance v5, Lcom/htc/opensense/social/FeedOp;

    check-cast v0, Lcom/htc/opensense/social/data/Feed;

    .end local v0           #data:Landroid/os/Parcelable;
    invoke-direct {v5, v4, v0}, Lcom/htc/opensense/social/FeedOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Feed;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v2           #feedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public static readOpFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/FeedOp;
    .locals 2
    .parameter "intent"

    .prologue
    .line 127
    const-string v0, "com.htc.opensense.DATAININTENT"

    sget-object v1, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/FeedOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/FeedOp;

    return-object v0
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/FeedOp;
    .locals 1
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 112
    sget-object v0, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/FeedOp;

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    sget-object v1, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/FeedOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htc/opensense/social/FeedOp;->getData()Lcom/htc/opensense/social/data/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/opensense/social/data/Feed;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/opensense/social/FeedOp;->mFeed:Lcom/htc/opensense/social/data/Feed;

    return-object v0
.end method
