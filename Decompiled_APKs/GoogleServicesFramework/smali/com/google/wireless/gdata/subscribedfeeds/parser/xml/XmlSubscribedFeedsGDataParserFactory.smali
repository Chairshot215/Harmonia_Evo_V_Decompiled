.class public Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;
.super Ljava/lang/Object;
.source "XmlSubscribedFeedsGDataParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataParserFactory;


# instance fields
.field private final xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V
    .locals 0
    .parameter "xmlFactory"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    .line 27
    return-void
.end method


# virtual methods
.method public createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 38
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 39
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eq p1, v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SubscribedFeeds supports only a single feed type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;->createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .locals 3
    .parameter "entry"

    .prologue
    .line 72
    instance-of v1, p1, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected SubscribedFeedsEntry!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    .line 78
    .local v0, subscribedFeedsEntry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    new-instance v1, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;

    iget-object v2, p0, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/subscribedfeeds/serializer/xml/XmlSubscribedFeedsEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;)V

    return-object v1
.end method
