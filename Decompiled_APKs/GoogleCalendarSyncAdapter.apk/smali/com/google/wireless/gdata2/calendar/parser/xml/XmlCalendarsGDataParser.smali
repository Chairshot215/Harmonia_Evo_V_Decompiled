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

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/CalendarsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 14
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 63
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v12, p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-nez v12, :cond_0

    .line 64
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Expected CalendarEntry!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    move-object v2, p1

    .line 66
    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 68
    .local v2, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, name:Ljava/lang/String;
    sget-object v12, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->GCAL_NAMESPACE:Ljava/lang/String;

    invoke-static {v8, v12}, Lcom/google/wireless/gdata2/data/XmlUtils;->matchNameSpaceUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 71
    const-string v12, "accesslevel"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 72
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, accesslevelStr:Ljava/lang/String;
    const/4 v0, 0x1

    .line 75
    .local v0, accesslevel:B
    const-string v12, "none"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 76
    const/4 v0, 0x0

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 131
    .end local v0           #accesslevel:B
    .end local v1           #accesslevelStr:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 77
    .restart local v0       #accesslevel:B
    .restart local v1       #accesslevelStr:Ljava/lang/String;
    :cond_3
    const-string v12, "read"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_4
    const-string v12, "freebusy"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 80
    const/4 v0, 0x2

    goto :goto_0

    .line 81
    :cond_5
    const-string v12, "contributor"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 84
    const/4 v0, 0x3

    goto :goto_0

    .line 85
    :cond_6
    const-string v12, "editor"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 86
    const/4 v0, 0x3

    goto :goto_0

    .line 87
    :cond_7
    const-string v12, "owner"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 88
    const/4 v0, 0x4

    goto :goto_0

    .line 89
    :cond_8
    const-string v12, "root"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 90
    const/4 v0, 0x5

    goto :goto_0

    .line 93
    .end local v0           #accesslevel:B
    .end local v1           #accesslevelStr:Ljava/lang/String;
    :cond_9
    const-string v12, "color"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 94
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, color:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v3           #color:Ljava/lang/String;
    :cond_a
    const-string v12, "hidden"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 98
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, hiddenStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 101
    .local v4, hidden:Z
    const-string v12, "false"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 102
    const/4 v4, 0x0

    .line 106
    :cond_b
    :goto_2
    invoke-virtual {v2, v4}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 108
    if-eqz v4, :cond_2

    .line 109
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_1

    .line 103
    :cond_c
    const-string v12, "true"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 104
    const/4 v4, 0x1

    goto :goto_2

    .line 111
    .end local v4           #hidden:Z
    .end local v5           #hiddenStr:Ljava/lang/String;
    :cond_d
    const-string v12, "selected"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 112
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, selectedStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 115
    .local v9, selected:Z
    const-string v12, "false"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 116
    const/4 v9, 0x0

    .line 120
    :cond_e
    :goto_3
    invoke-virtual {v2, v9}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_1

    .line 117
    :cond_f
    const-string v12, "true"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 118
    const/4 v9, 0x1

    goto :goto_3

    .line 121
    .end local v9           #selected:Z
    .end local v10           #selectedStr:Ljava/lang/String;
    :cond_10
    const-string v12, "timezone"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 122
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, timezone:Ljava/lang/String;
    invoke-virtual {v2, v11}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    .end local v11           #timezone:Ljava/lang/String;
    :cond_11
    const-string v12, "overridename"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 126
    const-string v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, overrideName:Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setOverrideName(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 2
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v1, "application/atom+xml"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p4

    .line 143
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 144
    .local v0, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    const-string v1, "self"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelfUri(Ljava/lang/String;)V

    .line 152
    .end local v0           #calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0       #calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    :cond_1
    const-string v1, "edit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEditUri(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    sget-object v1, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->EVENT_FEED_SCHEMA:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEventsUri(Ljava/lang/String;)V

    goto :goto_0
.end method
