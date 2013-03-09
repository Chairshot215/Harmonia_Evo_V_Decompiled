.class public Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlEventsGDataParser.java"


# static fields
.field private static GCAL_NAMESPACE:Ljava/lang/String;

.field private static GD_NAMESPACE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "http://schemas.google.com/g/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GD_NAMESPACE:Ljava/lang/String;

    .line 29
    const-string v0, "http://schemas.google.com/gCal/2005"

    sput-object v0, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlEventsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    return-void
.end method
