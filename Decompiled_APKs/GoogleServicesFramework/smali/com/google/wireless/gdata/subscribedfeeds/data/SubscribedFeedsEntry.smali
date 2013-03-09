.class public Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "SubscribedFeedsEntry.java"


# instance fields
.field private clientToken:Ljava/lang/String;

.field private feedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

.field private routingInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 48
    return-void
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutingInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->routingInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->feedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    return-object v0
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0
    .parameter "clientToken"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->clientToken:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setRoutingInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "routingInfo"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->routingInfo:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSubscribedFeed(Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V
    .locals 0
    .parameter "feedUrl"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->feedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    .line 32
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "sb"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 52
    return-void
.end method
