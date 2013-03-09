.class public Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlGroupEntryGDataParser.java"


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
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/wireless/gdata/contacts/data/GroupsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/contacts/data/GroupsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 48
    instance-of v1, p1, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-nez v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected GroupEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    .line 52
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "systemGroup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string v1, "id"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v3

    .line 57
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->setSystemGroup(Ljava/lang/String;)V

    .line 59
    :cond_2
    return-void
.end method
