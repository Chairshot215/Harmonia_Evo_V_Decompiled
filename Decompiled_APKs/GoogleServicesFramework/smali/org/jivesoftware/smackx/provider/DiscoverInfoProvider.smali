.class public Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;
.super Ljava/lang/Object;
.source "DiscoverInfoProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 90
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
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 42
    .local v1, discoverInfo:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const/4 v2, 0x0

    .line 43
    .local v2, done:Z
    const/4 v4, 0x0

    .line 44
    .local v4, feature:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;
    const/4 v5, 0x0

    .line 45
    .local v5, identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    const-string v0, ""

    .line 46
    .local v0, category:Ljava/lang/String;
    const-string v6, ""

    .line 47
    .local v6, name:Ljava/lang/String;
    const-string v7, ""

    .line 48
    .local v7, type:Ljava/lang/String;
    const-string v8, ""

    .line 49
    .local v8, variable:Ljava/lang/String;
    const-string v9, ""

    const-string v10, "node"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 52
    .local v3, eventType:I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "identity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 55
    const-string v9, ""

    const-string v10, "category"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v9, ""

    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    const-string v9, ""

    const-string v10, "type"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "feature"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 61
    const-string v9, ""

    const-string v10, "var"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 68
    :cond_3
    const/4 v9, 0x3

    if-ne v3, v9, :cond_0

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "identity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    new-instance v5, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .end local v5           #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-direct {v5, v0, v6}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .restart local v5       #identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v5, v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->setType(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V

    .line 75
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "feature"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 77
    invoke-virtual {v1, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)V

    .line 79
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "query"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 85
    .end local v3           #eventType:I
    :cond_6
    return-object v1
.end method
