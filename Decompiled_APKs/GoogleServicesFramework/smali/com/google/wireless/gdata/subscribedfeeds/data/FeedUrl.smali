.class public Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
.super Ljava/lang/Object;
.source "FeedUrl.java"


# instance fields
.field private authToken:Ljava/lang/String;

.field private feed:Ljava/lang/String;

.field private service:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "feed"
    .parameter "service"
    .parameter "authToken"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setFeed(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setService(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p3}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setAuthToken(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->feed:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->service:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->authToken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setFeed(Ljava/lang/String;)V
    .locals 0
    .parameter "feed"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->feed:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->service:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->toString(Ljava/lang/StringBuffer;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 61
    const-string v0, "FeedUrl"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v0, " url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v0, " service:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v0, " authToken:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    return-void
.end method
