.class public Ltwitter4j/IDs;
.super Ltwitter4j/TwitterResponse;
.source "IDs.java"


# static fields
.field private static ROOT_NODE_NAMES:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x5b62b6c47b2132b9L


# instance fields
.field private ids:[I

.field private nextCursor:J

.field private previousCursor:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id_list"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ids"

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/IDs;->ROOT_NODE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ltwitter4j/http/Response;)V
    .locals 7
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 49
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 50
    .local v0, elem:Lorg/w3c/dom/Element;
    sget-object v4, Ltwitter4j/IDs;->ROOT_NODE_NAMES:[Ljava/lang/String;

    invoke-static {v4, v0}, Ltwitter4j/IDs;->ensureRootNodeNameIs([Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 51
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 52
    .local v2, idlist:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Ltwitter4j/IDs;->ids:[I

    .line 53
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 55
    :try_start_0
    iget-object v4, p0, Ltwitter4j/IDs;->ids:[I

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 57
    .local v3, nfe:Ljava/lang/NumberFormatException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Twitter API returned malformed response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 60
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    const-string v4, "previous_cursor"

    invoke-static {v4, v0}, Ltwitter4j/IDs;->getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/IDs;->previousCursor:J

    .line 61
    const-string v4, "next_cursor"

    invoke-static {v4, v0}, Ltwitter4j/IDs;->getChildLong(Ljava/lang/String;Lorg/w3c/dom/Element;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/IDs;->nextCursor:J

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 109
    :goto_0
    return v2

    .line 103
    :cond_0
    instance-of v2, p1, Ltwitter4j/IDs;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 105
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/IDs;

    move-object v1, v0

    .line 107
    .local v1, iDs:Ltwitter4j/IDs;
    iget-object v2, p0, Ltwitter4j/IDs;->ids:[I

    iget-object v3, v1, Ltwitter4j/IDs;->ids:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    .line 109
    goto :goto_0
.end method

.method public getIDs()[I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/IDs;->ids:[I

    return-object v0
.end method

.method public getNextCursor()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Ltwitter4j/IDs;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Ltwitter4j/IDs;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDs;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/IDs;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ltwitter4j/IDs;->ids:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/IDs;->ids:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IDs{ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/IDs;->ids:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", previousCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDs;->previousCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", nextCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/IDs;->nextCursor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
