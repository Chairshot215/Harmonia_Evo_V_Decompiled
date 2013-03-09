.class public Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;
.super Ljava/lang/Object;
.source "XmlCalendarGDataParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata2/client/GDataParserFactory;


# instance fields
.field private final xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 32
    return-void
.end method


# virtual methods
.method public createCalendarsFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    new-instance v1, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;

    invoke-direct {v1, p1, v0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v0}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    new-instance v1, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;

    invoke-direct {v1, p1, v0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not create XmlPullParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 74
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-ne p1, v0, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->createCalendarsFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-ne p1, v0, :cond_1

    .line 77
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entry class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSerializer(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    .locals 2
    .parameter

    .prologue
    .line 94
    instance-of v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected EventEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 98
    new-instance v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v0, v1, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    return-object v0
.end method

.method public createSerializer(Ljava/util/Enumeration;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    .locals 2
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlBatchGDataSerializer;-><init>(Lcom/google/wireless/gdata2/client/GDataParserFactory;Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Ljava/util/Enumeration;)V

    return-object v0
.end method
