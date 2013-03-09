.class public Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;
.super Ljava/lang/Object;
.source "XmlContactsGDataParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata2/client/GDataParserFactory;


# instance fields
.field private final xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V
    .locals 0
    .parameter "xmlFactory"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 35
    return-void
.end method


# virtual methods
.method public createGroupEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlGroupEntryGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlGroupEntryGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 48
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 49
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createMediaEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/XmlMediaEntryGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata2/parser/xml/XmlMediaEntryGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 65
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 66
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 80
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 81
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 94
    const-class v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    if-ne p1, v0, :cond_0

    .line 95
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-class v0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    if-ne p1, v0, :cond_1

    .line 98
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->createGroupEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    const-class v0, Lcom/google/wireless/gdata2/data/MediaEntry;

    if-ne p1, v0, :cond_2

    .line 101
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->createMediaEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected feed type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    .locals 5
    .parameter "entry"

    .prologue
    .line 117
    instance-of v2, p1, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 118
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 119
    .local v0, contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    new-instance v2, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;

    iget-object v3, p0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v2, v3, v0}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlContactEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)V

    .line 123
    .end local v0           #contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    :goto_0
    return-object v2

    .line 121
    :cond_0
    instance-of v2, p1, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 122
    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    .line 123
    .local v1, groupEntry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    new-instance v2, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlGroupEntryGDataSerializer;

    iget-object v3, p0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata2/contacts/serializer/xml/XmlGroupEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/contacts/data/GroupEntry;)V

    goto :goto_0

    .line 125
    .end local v1           #groupEntry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected entry type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSerializer(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    .locals 1
    .parameter "entry"
    .parameter "oldEntry"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;->createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;

    move-result-object v0

    return-object v0
.end method
