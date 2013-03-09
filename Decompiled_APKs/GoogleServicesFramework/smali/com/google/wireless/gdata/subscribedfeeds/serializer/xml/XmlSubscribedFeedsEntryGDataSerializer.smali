.class public Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlSubscribedFeedsEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;)V
    .locals 0
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 25
    return-void
.end method

.method private static serializeClientToken(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "clientToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string p1, ""

    .line 65
    :cond_0
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "clientToken"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "clientToken"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    return-void
.end method

.method private static serializeFeedUrl(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V
    .locals 3
    .parameter "serializer"
    .parameter "feedUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "feedurl"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    const-string v0, "value"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    const-string v0, "service"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    const-string v0, "authtoken"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "feedurl"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    return-void
.end method

.method private static serializeRoutingInfo(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "routingInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string p1, ""

    .line 76
    :cond_0
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "routingInfo"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v0, "http://schemas.google.com/gsync/data"

    const-string v1, "routingInfo"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    return-void
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "gsync"

    const-string v1, "http://schemas.google.com/gsync/data"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected getSubscribedFeedsEntry()Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    return-object v0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 2
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->getSubscribedFeedsEntry()Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    move-result-object v0

    .line 44
    .local v0, entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    invoke-virtual {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->serializeFeedUrl(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V

    .line 45
    invoke-virtual {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->serializeClientToken(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getRoutingInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;->serializeRoutingInfo(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 47
    return-void
.end method
