.class public Ltwitter4j/RetweetDetails;
.super Ltwitter4j/TwitterResponse;
.source "RetweetDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1b2c267fe22c03d6L


# instance fields
.field private retweetId:J

.field private retweetedAt:Ljava/util/Date;

.field private retweetingUser:Ltwitter4j/User;


# direct methods
.method constructor <init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 0
    .parameter "res"
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 60
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/RetweetDetails;->init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 61
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V
    .locals 2
    .parameter "res"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 53
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 54
    .local v0, elem:Lorg/w3c/dom/Element;
    invoke-direct {p0, p1, v0, p2}, Ltwitter4j/RetweetDetails;->init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 55
    return-void
.end method

.method static createRetweetDetails(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;
    .locals 10
    .parameter "res"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/http/Response;",
            "Ltwitter4j/Twitter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/RetweetDetails;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 86
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 87
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-static {v0}, Ltwitter4j/RetweetDetails;->isRootNodeNilClasses(Lorg/w3c/dom/Document;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    :goto_0
    return-object v7

    .line 91
    :cond_0
    :try_start_0
    const-string v7, "retweets"

    invoke-static {v7, v0}, Ltwitter4j/RetweetDetails;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 92
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v8, "retweet_details"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 94
    .local v2, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 95
    .local v3, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v5, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/RetweetDetails;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 97
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 98
    .local v4, status:Lorg/w3c/dom/Element;
    new-instance v7, Ltwitter4j/RetweetDetails;

    invoke-direct {v7, p0, v4, p1}, Ltwitter4j/RetweetDetails;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #status:Lorg/w3c/dom/Element;
    :cond_1
    move-object v7, v5

    .line 100
    goto :goto_0

    .line 101
    .end local v1           #i:I
    .end local v2           #list:Lorg/w3c/dom/NodeList;
    .end local v3           #size:I
    .end local v5           #statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/RetweetDetails;>;"
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 102
    .local v6, te:Ltwitter4j/TwitterException;
    const-string v7, "nil-classes"

    invoke-static {v7, v0}, Ltwitter4j/RetweetDetails;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 103
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method private init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 3
    .parameter "res"
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "retweet_details"

    invoke-static {v0, p2}, Ltwitter4j/RetweetDetails;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 66
    const-string v0, "retweet_id"

    invoke-static {v0, p2}, Ltwitter4j/RetweetDetails;->getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/RetweetDetails;->retweetId:J

    .line 67
    const-string v0, "retweeted_at"

    invoke-static {v0, p2}, Ltwitter4j/RetweetDetails;->getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/RetweetDetails;->retweetedAt:Ljava/util/Date;

    .line 68
    new-instance v1, Ltwitter4j/User;

    const-string v0, "retweeting_user"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, p1, v0, p3}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    iput-object v1, p0, Ltwitter4j/RetweetDetails;->retweetingUser:Ltwitter4j/User;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 116
    :goto_0
    return v2

    .line 112
    :cond_0
    instance-of v2, p1, Ltwitter4j/RetweetDetails;

    if-nez v2, :cond_1

    move v2, v6

    goto :goto_0

    .line 114
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/RetweetDetails;

    move-object v1, v0

    .line 116
    .local v1, that:Ltwitter4j/RetweetDetails;
    iget-wide v2, p0, Ltwitter4j/RetweetDetails;->retweetId:J

    iget-wide v4, v1, Ltwitter4j/RetweetDetails;->retweetId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method public getRetweetId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Ltwitter4j/RetweetDetails;->retweetId:J

    return-wide v0
.end method

.method public getRetweetedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltwitter4j/RetweetDetails;->retweetedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getRetweetingUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ltwitter4j/RetweetDetails;->retweetingUser:Ltwitter4j/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 121
    iget-wide v1, p0, Ltwitter4j/RetweetDetails;->retweetId:J

    iget-wide v3, p0, Ltwitter4j/RetweetDetails;->retweetId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v0, v1

    .line 122
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/RetweetDetails;->retweetedAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 123
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/RetweetDetails;->retweetingUser:Ltwitter4j/User;

    invoke-virtual {v2}, Ltwitter4j/User;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 124
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RetweetDetails{retweetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/RetweetDetails;->retweetId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retweetedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RetweetDetails;->retweetedAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retweetingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RetweetDetails;->retweetingUser:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
