.class public Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;
.super Ljava/lang/Object;
.source "XmlContactsGDataParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataParserFactory;


# instance fields
.field private final xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    .line 33
    return-void
.end method


# virtual methods
.method public createGroupEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    new-instance v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;

    invoke-direct {v1, p1, v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createMediaEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    new-instance v1, Lcom/google/wireless/gdata/parser/xml/XmlMediaEntryGDataParser;

    invoke-direct {v1, p1, v0}, Lcom/google/wireless/gdata/parser/xml/XmlMediaEntryGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    new-instance v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;

    invoke-direct {v1, p1, v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    const-class v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-class v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-ne p1, v0, :cond_1

    .line 96
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->createGroupEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const-class v0, Lcom/google/wireless/gdata/data/MediaEntry;

    if-ne p1, v0, :cond_2

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->createMediaEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    goto :goto_0

    .line 101
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

.method public createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .locals 3
    .parameter

    .prologue
    .line 115
    instance-of v0, p1, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    .line 117
    new-instance v0, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v0, v1, p1}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 121
    :goto_0
    return-object v0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    .line 121
    new-instance v0, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v0, v1, p1}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/contacts/data/GroupEntry;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
