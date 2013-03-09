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
    .parameter "xmlFactory"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 33
    return-void
.end method


# virtual methods
.method public createCalendarsFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 46
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 47
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
    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 61
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 62
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
    .line 75
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-ne p1, v0, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->createCalendarsFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-ne p1, v0, :cond_1

    .line 78
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v0

    goto :goto_0

    .line 80
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
    .locals 5
    .parameter "entry"

    .prologue
    .line 95
    instance-of v2, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 96
    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 97
    .local v1, eventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    new-instance v2, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 101
    .end local v1           #eventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    :goto_0
    return-object v2

    .line 99
    :cond_0
    instance-of v2, p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 101
    .local v0, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    new-instance v2, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v2, v3, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    goto :goto_0

    .line 104
    .end local v0           #calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Entry class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSerializer(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/serializer/GDataSerializer;
    .locals 6
    .parameter "entry"
    .parameter "oldEntry"

    .prologue
    .line 122
    instance-of v3, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 123
    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .local v1, eventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    move-object v2, p2

    .line 124
    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 125
    .local v2, oldEventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    new-instance v3, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;

    iget-object v4, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 129
    .end local v1           #eventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    .end local v2           #oldEventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    :goto_0
    return-object v3

    .line 127
    :cond_0
    instance-of v3, p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 129
    .local v0, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    new-instance v3, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;

    iget-object v4, p0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-direct {v3, v4, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    goto :goto_0

    .line 132
    .end local v0           #calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Entry class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
