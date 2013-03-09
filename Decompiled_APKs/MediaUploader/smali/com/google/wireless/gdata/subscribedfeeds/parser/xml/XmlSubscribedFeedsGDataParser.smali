.class public Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlSubscribedFeedsGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 53
    instance-of v1, p1, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-nez v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected SubscribedFeedsEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    .line 58
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "feedurl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    invoke-direct {v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;-><init>()V

    .line 61
    const-string v3, "value"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setFeed(Ljava/lang/String;)V

    .line 62
    const-string v3, "service"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setService(Ljava/lang/String;)V

    .line 63
    const-string v3, "authtoken"

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->setAuthToken(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setSubscribedFeed(Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V

    .line 66
    :cond_1
    const-string v2, "routingInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setRoutingInfo(Ljava/lang/String;)V

    .line 70
    :cond_2
    const-string v2, "clientToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setClientToken(Ljava/lang/String;)V

    .line 74
    :cond_3
    return-void
.end method
