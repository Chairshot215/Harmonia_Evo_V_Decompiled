.class public Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/CalendarsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 58
    instance-of v1, p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected CalendarEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 65
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "accesslevel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 67
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 87
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 125
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    const-string v1, "read"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string v1, "freebusy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    const/4 v0, 0x2

    goto :goto_0

    .line 76
    :cond_4
    const-string v1, "contributor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v6

    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-string v1, "editor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v6

    .line 81
    goto :goto_0

    .line 82
    :cond_6
    const-string v1, "owner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    const/4 v0, 0x4

    goto :goto_0

    .line 84
    :cond_7
    const-string v1, "root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    const/4 v0, 0x5

    goto :goto_0

    .line 88
    :cond_8
    const-string v2, "color"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 89
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_9
    const-string v2, "hidden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 93
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    .line 101
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_1

    .line 98
    :cond_a
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v5

    .line 99
    goto :goto_2

    .line 106
    :cond_b
    const-string v2, "selected"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 107
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v0, v3

    .line 115
    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_1

    .line 112
    :cond_c
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    .line 113
    goto :goto_3

    .line 116
    :cond_d
    const-string v2, "timezone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 117
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    :cond_e
    const-string v2, "overridename"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setOverrideName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    move v0, v3

    goto :goto_3

    :cond_10
    move v0, v3

    goto :goto_2

    :cond_11
    move v0, v5

    goto/16 :goto_0
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "alternate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/atom+xml"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    check-cast p4, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    .line 139
    invoke-virtual {p4, p3}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setAlternateLink(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method
