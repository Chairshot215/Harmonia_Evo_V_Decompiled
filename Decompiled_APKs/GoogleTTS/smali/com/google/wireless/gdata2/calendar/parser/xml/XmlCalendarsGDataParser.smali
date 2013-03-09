.class public Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# static fields
.field private static EVENT_FEED_SCHEMA:Ljava/lang/String;

.field private static GCAL_NAMESPACE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "http://schemas.google.com/gCal/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    .line 25
    const-string v0, "http://schemas.google.com/gCal/2005#eventFeed"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->EVENT_FEED_SCHEMA:Ljava/lang/String;

    return-void
.end method
