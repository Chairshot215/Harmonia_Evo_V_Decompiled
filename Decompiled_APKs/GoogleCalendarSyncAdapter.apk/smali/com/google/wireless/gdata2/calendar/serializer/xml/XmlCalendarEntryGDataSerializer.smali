.class public Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlCalendarEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 0
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 40
    return-void
.end method

.method private static serializeAccessLevel(Lorg/xmlpull/v1/XmlSerializer;B)V
    .locals 3
    .parameter "serializer"
    .parameter "accessLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 128
    const-string v0, "none"

    .line 130
    .local v0, accessLevelString:Ljava/lang/String;
    :goto_0
    const-string v1, "http://schemas.google.com/gCal/2005"

    const-string v2, "accesslevel"

    invoke-static {p0, v1, v2, v0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 109
    .end local v0           #accessLevelString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "none"

    .line 110
    .restart local v0       #accessLevelString:Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0           #accessLevelString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "read"

    .line 113
    .restart local v0       #accessLevelString:Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0           #accessLevelString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "freebusy"

    .line 116
    .restart local v0       #accessLevelString:Ljava/lang/String;
    goto :goto_0

    .line 118
    .end local v0           #accessLevelString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "editor"

    .line 119
    .restart local v0       #accessLevelString:Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v0           #accessLevelString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "owner"

    .line 122
    .restart local v0       #accessLevelString:Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v0           #accessLevelString:Ljava/lang/String;
    :pswitch_5
    const-string v0, "root"

    .line 125
    .restart local v0       #accessLevelString:Ljava/lang/String;
    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static serializeColor(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "color"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "color"

    invoke-static {p0, v0, v1, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static serializeHidden(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .parameter "serializer"
    .parameter "isHidden"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "hidden"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private serializeOverrideName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "overrideName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "overridename"

    invoke-static {p1, v0, v1, p2}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private static serializeSelected(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .parameter "serializer"
    .parameter "isSelected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "selected"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private static serializeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "namespace"
    .parameter "elementName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const/4 v0, 0x0

    const-string v1, "value"

    invoke-interface {p0, v0, v1, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeTimezone(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "timezone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "http://schemas.google.com/gCal/2005"

    const-string v1, "timezone"

    invoke-static {p0, v0, v1, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeStringValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "gCal"

    const-string v1, "http://schemas.google.com/gCal/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 2
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 55
    .local v0, entry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeTimezone(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isHidden()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeHidden(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 59
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeColor(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isSelected()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeSelected(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 63
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v1

    invoke-static {p1, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeAccessLevel(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 65
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getOverrideName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlCalendarEntryGDataSerializer;->serializeOverrideName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 66
    return-void
.end method
