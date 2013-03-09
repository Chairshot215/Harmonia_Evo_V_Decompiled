.class public Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;
.super Ljava/lang/Object;
.source "DiscoverItemsProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 41
    .local v1, discoverItems:Lorg/jivesoftware/smackx/packet/DiscoverItems;
    const/4 v2, 0x0

    .line 42
    .local v2, done:Z
    const/4 v4, 0x0

    .line 43
    .local v4, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    const-string v5, ""

    .line 44
    .local v5, jid:Ljava/lang/String;
    const-string v6, ""

    .line 45
    .local v6, name:Ljava/lang/String;
    const-string v0, ""

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v7, ""

    .line 47
    .local v7, node:Ljava/lang/String;
    const-string v8, ""

    const-string v9, "node"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 50
    .local v3, eventType:I
    const/4 v8, 0x2

    if-ne v3, v8, :cond_1

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    const-string v8, ""

    const-string v9, "jid"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    const-string v8, ""

    const-string v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    const-string v8, ""

    const-string v9, "node"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    const-string v8, ""

    const-string v9, "action"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    .line 59
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 61
    new-instance v4, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .end local v4           #item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v4       #item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-virtual {v4, v6}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setNode(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->setAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->addItem(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V

    .line 67
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "query"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 68
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    .end local v3           #eventType:I
    :cond_3
    return-object v1
.end method
