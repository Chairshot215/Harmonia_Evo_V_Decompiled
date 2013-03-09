.class public Lcom/google/wireless/gdata/calendar/client/CalendarClient;
.super Lcom/google/wireless/gdata/client/GDataServiceClient;
.source "CalendarClient.java"


# static fields
.field private static final CALENDAR_BASE_FEED_URL:Ljava/lang/String; = "http://www.google.com/calendar/feeds/"

.field public static final PROJECTION_PRIVATE_FULL:Ljava/lang/String; = "/private/full"

.field public static final PROJECTION_PRIVATE_SELF_ATTENDANCE:Ljava/lang/String; = "/private/full-selfattendance"

.field public static final SERVICE:Ljava/lang/String; = "cl"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataServiceClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getDefaultCalendarUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/client/QueryParams;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/calendar/feeds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/wireless/gdata/client/GDataClient;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez p3, :cond_0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3, v0}, Lcom/google/wireless/gdata/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParserForUserCalendars(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v0

    .line 93
    invoke-interface {v0, p1, p2}, Lcom/google/wireless/gdata/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getGDataParserFactory()Lcom/google/wireless/gdata/client/GDataParserFactory;

    move-result-object v1

    const-class v2, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    invoke-interface {v1, v2, v0}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "cl"

    return-object v0
.end method

.method public getUserCalendarsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/calendar/feeds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/wireless/gdata/client/GDataClient;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
