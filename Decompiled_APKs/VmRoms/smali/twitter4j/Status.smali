.class public Ltwitter4j/Status;
.super Ltwitter4j/TwitterResponse;
.source "Status.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1650c3edbf9bb2a0L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:I

.field private isFavorited:Z

.field private isTruncated:Z

.field private latitude:D

.field private longitude:D

.field private retweetDetails:Ltwitter4j/RetweetDetails;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private user:Ltwitter4j/User;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/high16 v1, -0x4010

    .line 75
    invoke-direct {p0}, Ltwitter4j/TwitterResponse;-><init>()V

    .line 55
    iput-wide v1, p0, Ltwitter4j/Status;->latitude:D

    .line 56
    iput-wide v1, p0, Ltwitter4j/Status;->longitude:D

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Ltwitter4j/Status;->user:Ltwitter4j/User;

    .line 76
    new-instance v0, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v0, p1}, Ltwitter4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, json:Ltwitter4j/org/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ltwitter4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/Status;->id:J

    .line 78
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Status;->text:Ljava/lang/String;

    .line 79
    const-string v1, "source"

    invoke-virtual {v0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Status;->source:Ljava/lang/String;

    .line 80
    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v1, v2}, Ltwitter4j/Status;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Status;->createdAt:Ljava/util/Date;

    .line 82
    const-string v1, "in_reply_to_status_id"

    invoke-static {v1, v0}, Ltwitter4j/Status;->getLong(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/Status;->inReplyToStatusId:J

    .line 83
    const-string v1, "in_reply_to_user_id"

    invoke-static {v1, v0}, Ltwitter4j/Status;->getInt(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/Status;->inReplyToUserId:I

    .line 84
    const-string v1, "favorited"

    invoke-static {v1, v0}, Ltwitter4j/Status;->getBoolean(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/Status;->isFavorited:Z

    .line 85
    new-instance v1, Ltwitter4j/User;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ltwitter4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/User;-><init>(Ltwitter4j/org/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/Status;->user:Ltwitter4j/User;

    .line 86
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 2
    .parameter "res"
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/high16 v0, -0x4010

    .line 69
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 55
    iput-wide v0, p0, Ltwitter4j/Status;->latitude:D

    .line 56
    iput-wide v0, p0, Ltwitter4j/Status;->longitude:D

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Status;->user:Ltwitter4j/User;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/Status;->init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 71
    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)V
    .locals 3
    .parameter "res"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/high16 v1, -0x4010

    .line 62
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 55
    iput-wide v1, p0, Ltwitter4j/Status;->latitude:D

    .line 56
    iput-wide v1, p0, Ltwitter4j/Status;->longitude:D

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Ltwitter4j/Status;->user:Ltwitter4j/User;

    .line 63
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 64
    .local v0, elem:Lorg/w3c/dom/Element;
    invoke-direct {p0, p1, v0, p2}, Ltwitter4j/Status;->init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    .line 65
    return-void
.end method

.method static constructStatuses(Ltwitter4j/http/Response;Ltwitter4j/Twitter;)Ljava/util/List;
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
            "Ltwitter4j/Status;",
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

    .line 254
    invoke-virtual {p0}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 255
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-static {v0}, Ltwitter4j/Status;->isRootNodeNilClasses(Lorg/w3c/dom/Document;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 256
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    :goto_0
    return-object v7

    .line 259
    :cond_0
    :try_start_0
    const-string v7, "statuses"

    invoke-static {v7, v0}, Ltwitter4j/Status;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 260
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v8, "status"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 262
    .local v2, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 263
    .local v3, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v5, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 265
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 266
    .local v4, status:Lorg/w3c/dom/Element;
    new-instance v7, Ltwitter4j/Status;

    invoke-direct {v7, p0, v4, p1}, Ltwitter4j/Status;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #status:Lorg/w3c/dom/Element;
    :cond_1
    move-object v7, v5

    .line 268
    goto :goto_0

    .line 269
    .end local v1           #i:I
    .end local v2           #list:Lorg/w3c/dom/NodeList;
    .end local v3           #size:I
    .end local v5           #statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 270
    .local v6, te:Ltwitter4j/TwitterException;
    const-string v7, "nil-classes"

    invoke-static {v7, v0}, Ltwitter4j/Status;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 271
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method private init(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V
    .locals 7
    .parameter "res"
    .parameter "elem"
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    const-string v3, "status"

    invoke-static {v3, p2}, Ltwitter4j/Status;->ensureRootNodeNameIs(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 91
    new-instance v4, Ltwitter4j/User;

    const-string v3, "user"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {v4, p1, v3, p3}, Ltwitter4j/User;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    iput-object v4, p0, Ltwitter4j/Status;->user:Ltwitter4j/User;

    .line 93
    const-string v3, "id"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/Status;->id:J

    .line 94
    const-string v3, "text"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/Status;->text:Ljava/lang/String;

    .line 95
    const-string v3, "source"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/Status;->source:Ljava/lang/String;

    .line 96
    const-string v3, "created_at"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/Status;->createdAt:Ljava/util/Date;

    .line 97
    const-string v3, "truncated"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v3

    iput-boolean v3, p0, Ltwitter4j/Status;->isTruncated:Z

    .line 98
    const-string v3, "in_reply_to_status_id"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/Status;->inReplyToStatusId:J

    .line 99
    const-string v3, "in_reply_to_user_id"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v3

    iput v3, p0, Ltwitter4j/Status;->inReplyToUserId:I

    .line 100
    const-string v3, "favorited"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildBoolean(Ljava/lang/String;Lorg/w3c/dom/Element;)Z

    move-result v3

    iput-boolean v3, p0, Ltwitter4j/Status;->isFavorited:Z

    .line 101
    const-string v3, "in_reply_to_screen_name"

    invoke-static {v3, p2}, Ltwitter4j/Status;->getChildText(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/Status;->inReplyToScreenName:Ljava/lang/String;

    .line 102
    const-string v3, "georss:point"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 103
    .local v0, georssPoint:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ne v6, v3, :cond_0

    .line 104
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, point:[Ljava/lang/String;
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/Status;->latitude:D

    .line 106
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/Status;->longitude:D

    .line 108
    .end local v1           #point:[Ljava/lang/String;
    :cond_0
    const-string v3, "retweet_details"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 109
    .local v2, retweetDetailsNode:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ne v6, v3, :cond_1

    .line 110
    new-instance v4, Ltwitter4j/RetweetDetails;

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {v4, p1, v3, p3}, Ltwitter4j/RetweetDetails;-><init>(Ltwitter4j/http/Response;Lorg/w3c/dom/Element;Ltwitter4j/Twitter;)V

    iput-object v4, p0, Ltwitter4j/Status;->retweetDetails:Ltwitter4j/RetweetDetails;

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    if-nez p1, :cond_0

    move v0, v4

    .line 289
    .end local p1
    :goto_0
    return v0

    .line 286
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v5

    .line 287
    goto :goto_0

    .line 289
    :cond_1
    instance-of v0, p1, Ltwitter4j/Status;

    if-eqz v0, :cond_2

    check-cast p1, Ltwitter4j/Status;

    .end local p1
    iget-wide v0, p1, Ltwitter4j/Status;->id:J

    iget-wide v2, p0, Ltwitter4j/Status;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ltwitter4j/Status;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Ltwitter4j/Status;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Ltwitter4j/Status;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Ltwitter4j/Status;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Ltwitter4j/Status;->inReplyToUserId:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Ltwitter4j/Status;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Ltwitter4j/Status;->longitude:D

    return-wide v0
.end method

.method public getRetweetDetails()Ltwitter4j/RetweetDetails;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Ltwitter4j/Status;->retweetDetails:Ltwitter4j/RetweetDetails;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ltwitter4j/Status;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ltwitter4j/Status;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ltwitter4j/Status;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Ltwitter4j/Status;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Ltwitter4j/Status;->isFavorited:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Ltwitter4j/Status;->retweetDetails:Ltwitter4j/RetweetDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Ltwitter4j/Status;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 294
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Status{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Status;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Status;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Status;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Status;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/Status;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Status;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Status;->inReplyToUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isFavorited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/Status;->isFavorited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Status;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Status;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Status;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retweetDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Status;->retweetDetails:Ltwitter4j/RetweetDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Status;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
