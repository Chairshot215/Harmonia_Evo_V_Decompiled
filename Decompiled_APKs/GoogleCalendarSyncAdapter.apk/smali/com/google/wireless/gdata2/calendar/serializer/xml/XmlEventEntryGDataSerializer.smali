.class public Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;
.super Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.source "XmlEventEntryGDataSerializer.java"


# static fields
.field private static final EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;


# instance fields
.field private serializeAttendees:Z

.field private serializeExtendedProperties:Z

.field private serializeReminders:Z

.field private serializeWhens:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    new-instance v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;-><init>()V

    sput-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 50
    sget-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 51
    sget-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setVisibility(B)V

    .line 52
    sget-object v0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTransparency(B)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 4
    .parameter "factory"
    .parameter "entry"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    sget-object v1, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 44
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeAttendees:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminders:Z

    .line 46
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhens:Z

    .line 47
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperties:Z

    .line 58
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeAttendees:Z

    .line 59
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperties:Z

    .line 62
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, recurrence:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 64
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminders:Z

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhens:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 15
    .parameter "xmlFactory"
    .parameter "entry"
    .parameter "oldEntry"

    .prologue
    .line 72
    if-nez p3, :cond_0

    sget-object p3, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .end local p3
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/Entry;)V

    .line 44
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeAttendees:Z

    .line 45
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminders:Z

    .line 46
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhens:Z

    .line 47
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperties:Z

    .line 74
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    move-object/from16 p3, v0

    check-cast p3, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .line 78
    .restart local p3
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, content:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getContent()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, oldContent:Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 81
    sget-object p3, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    .line 86
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v4, fields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Set;

    move-result-object v1

    .line 90
    .local v1, attendees:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Who;>;"
    iget-object v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v13, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v13}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Set;

    move-result-object v5

    .line 91
    .local v5, oldAttendees:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Who;>;"
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 92
    const-string v13, "gd:who"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeAttendees:Z

    .line 100
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Set;

    move-result-object v11

    .line 101
    .local v11, reminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Set;

    move-result-object v8

    .line 102
    .local v8, oldReminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, recurrence:Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 104
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 105
    :cond_3
    const-string v13, "gd:reminder"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v13, "gd:when"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminders:Z

    .line 120
    :cond_4
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Map;

    move-result-object v3

    .line 121
    .local v3, extendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Map;

    move-result-object v7

    .line 122
    .local v7, oldExtendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 123
    const-string v13, "gd:extendedProperty"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperties:Z

    .line 128
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 129
    const-string v13, "gd:where"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->isPartial()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 134
    const-string v13, ","

    invoke-static {v13, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setFields(Ljava/lang/String;)V

    .line 136
    :cond_7
    return-void

    .line 110
    .end local v3           #extendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #oldExtendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhens()Ljava/util/List;

    move-result-object v12

    .line 111
    .local v12, whens:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/gdata2/calendar/data/When;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhens()Ljava/util/List;

    move-result-object v9

    .line 112
    .local v9, oldWhens:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/gdata2/calendar/data/When;>;"
    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 113
    :cond_9
    const-string v13, "gd:reminder"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v13, "gd:when"

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhens:Z

    goto :goto_0
.end method

.method private serializeAttendees(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 290
    iget-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeAttendees:Z

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v3, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Set;

    move-result-object v0

    .line 292
    .local v0, attendees:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Who;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 293
    .local v2, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    invoke-static {p1, v2}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Who;)V

    goto :goto_0

    .line 296
    .end local v0           #attendees:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Who;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    :cond_0
    return-void
.end method

.method private static serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serializer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 523
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "extendedProperty"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    const-string v0, "name"

    invoke-interface {p0, v2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    const-string v0, "value"

    invoke-interface {p0, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "extendedProperty"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    return-void
.end method

.method private serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 481
    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, originalEventId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, originalEventTime:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, oldOriginalEventId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, oldOriginalEventTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string v6, "http://schemas.google.com/g/2005"

    const-string v7, "originalEvent"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 493
    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 494
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 496
    const-string v6, "id"

    invoke-interface {p1, v8, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    .end local v0           #id:Ljava/lang/String;
    :cond_2
    const-string v6, "href"

    invoke-interface {p1, v8, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const-string v6, "http://schemas.google.com/g/2005"

    const-string v7, "when"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const-string v6, "startTime"

    invoke-interface {p1, v8, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    const-string v6, "http://schemas.google.com/g/2005"

    const-string v7, "when"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const-string v6, "http://schemas.google.com/g/2005"

    const-string v7, "originalEvent"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->isQuickAdd()Z

    move-result v0

    .line 531
    .local v0, quickAdd:Z
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->isQuickAdd()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 532
    const-string v1, "gCal"

    const-string v2, "quickadd"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    const/4 v1, 0x0

    const-string v2, "value"

    const-string v3, "true"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    const-string v1, "gCal"

    const-string v2, "quickadd"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    :cond_0
    return-void
.end method

.method private serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, recurrence:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "recurrence"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "recurrence"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V
    .locals 6
    .parameter "serializer"
    .parameter "reminder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 453
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v4, "reminder"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMethod()B

    move-result v0

    .line 455
    .local v0, method:B
    const/4 v1, 0x0

    .line 456
    .local v1, methodStr:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 467
    :goto_0
    if-eqz v1, :cond_0

    .line 468
    const-string v3, "method"

    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMinutes()I

    move-result v2

    .line 472
    .local v2, minutes:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 473
    const-string v3, "minutes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    :cond_1
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v4, "reminder"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    return-void

    .line 458
    .end local v2           #minutes:I
    :pswitch_0
    const-string v1, "alert"

    .line 459
    goto :goto_0

    .line 461
    :pswitch_1
    const-string v1, "email"

    .line 462
    goto :goto_0

    .line 464
    :pswitch_2
    const-string v1, "sms"

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private serializeStatus(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getStatus()B

    move-result v0

    .line 203
    .local v0, status:B
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getStatus()B

    move-result v2

    if-ne v0, v2, :cond_0

    .line 226
    :goto_0
    return-void

    .line 207
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 220
    const-string v1, "http://schemas.google.com/g/2005#event.tentative"

    .line 223
    .local v1, statusString:Ljava/lang/String;
    :goto_1
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "eventStatus"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "eventStatus"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 209
    .end local v1           #statusString:Ljava/lang/String;
    :pswitch_0
    const-string v1, "http://schemas.google.com/g/2005#event.tentative"

    .line 210
    .restart local v1       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 212
    .end local v1           #statusString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "http://schemas.google.com/g/2005#event.canceled"

    .line 213
    .restart local v1       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 215
    .end local v1           #statusString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "http://schemas.google.com/g/2005#event.confirmed"

    .line 216
    .restart local v1       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result v0

    .line 230
    .local v0, transparency:B
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result v2

    if-ne v0, v2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 235
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 247
    const-string v1, "http://schemas.google.com/g/2005#event.transparent"

    .line 251
    .local v1, transparencyString:Ljava/lang/String;
    :goto_1
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "transparency"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "transparency"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 237
    .end local v1           #transparencyString:Ljava/lang/String;
    :pswitch_0
    const-string v1, "http://schemas.google.com/g/2005#event.opaque"

    .line 239
    .restart local v1       #transparencyString:Ljava/lang/String;
    goto :goto_1

    .line 241
    .end local v1           #transparencyString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "http://schemas.google.com/g/2005#event.transparent"

    .line 243
    .restart local v1       #transparencyString:Ljava/lang/String;
    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result v0

    .line 258
    .local v0, visibility:B
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result v2

    if-ne v0, v2, :cond_0

    .line 286
    :goto_0
    return-void

    .line 263
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 280
    const-string v1, "http://schemas.google.com/g/2005#event.default"

    .line 283
    .local v1, visibilityString:Ljava/lang/String;
    :goto_1
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "visibility"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "visibility"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 265
    .end local v1           #visibilityString:Ljava/lang/String;
    :pswitch_0
    const-string v1, "http://schemas.google.com/g/2005#event.default"

    .line 266
    .restart local v1       #visibilityString:Ljava/lang/String;
    goto :goto_1

    .line 268
    .end local v1           #visibilityString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "http://schemas.google.com/g/2005#event.confidential"

    .line 270
    .restart local v1       #visibilityString:Ljava/lang/String;
    goto :goto_1

    .line 272
    .end local v1           #visibilityString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "http://schemas.google.com/g/2005#event.private"

    .line 273
    .restart local v1       #visibilityString:Ljava/lang/String;
    goto :goto_1

    .line 275
    .end local v1           #visibilityString:Ljava/lang/String;
    :pswitch_3
    const-string v1, "http://schemas.google.com/g/2005#event.public"

    .line 276
    .restart local v1       #visibilityString:Ljava/lang/String;
    goto :goto_1

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/When;)V
    .locals 7
    .parameter "serializer"
    .parameter "when"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 432
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, startTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, endTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    :goto_0
    return-void

    .line 438
    :cond_0
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v5, "when"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string v4, "startTime"

    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    const-string v4, "endTime"

    invoke-interface {p1, v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    :cond_1
    iget-object v4, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v4, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 444
    .local v2, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-static {p1, v2}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_1

    .line 446
    .end local v2           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    :cond_2
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v5, "when"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private serializeWhere(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, where:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 509
    const-string v0, ""

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    sget-object v2, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "where"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    const/4 v1, 0x0

    const-string v2, "valueString"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "where"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Who;)V
    .locals 8
    .parameter "serializer"
    .parameter "who"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 300
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "who"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    const-string v5, "email"

    invoke-interface {p0, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 308
    const-string v5, "valueString"

    invoke-interface {p0, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    :cond_1
    const/4 v1, 0x0

    .line 312
    .local v1, rel:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 328
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected rel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    :pswitch_0
    const-string v1, "http://schemas.google.com/g/2005#event.attendee"

    .line 330
    :goto_0
    :pswitch_1
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 331
    const-string v5, "rel"

    invoke-interface {p0, v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    :cond_2
    const/4 v2, 0x0

    .line 335
    .local v2, status:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 351
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 319
    .end local v2           #status:Ljava/lang/String;
    :pswitch_2
    const-string v1, "http://schemas.google.com/g/2005#event.organizer"

    .line 320
    goto :goto_0

    .line 322
    :pswitch_3
    const-string v1, "http://schemas.google.com/g/2005#event.performer"

    .line 323
    goto :goto_0

    .line 325
    :pswitch_4
    const-string v1, "http://schemas.google.com/g/2005#event.speaker"

    .line 326
    goto :goto_0

    .line 339
    .restart local v2       #status:Ljava/lang/String;
    :pswitch_5
    const-string v2, "http://schemas.google.com/g/2005#event.accepted"

    .line 353
    :goto_1
    :pswitch_6
    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 354
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeStatus"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    const-string v5, "value"

    invoke-interface {p0, v7, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeStatus"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :cond_3
    const/4 v3, 0x0

    .line 362
    .local v3, type:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 372
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 342
    .end local v3           #type:Ljava/lang/String;
    :pswitch_7
    const-string v2, "http://schemas.google.com/g/2005#event.declined"

    .line 343
    goto :goto_1

    .line 345
    :pswitch_8
    const-string v2, "http://schemas.google.com/g/2005#event.invited"

    .line 346
    goto :goto_1

    .line 348
    :pswitch_9
    const-string v2, "http://schemas.google.com/g/2005#event.tentative"

    .line 349
    goto :goto_1

    .line 366
    .restart local v3       #type:Ljava/lang/String;
    :pswitch_a
    const-string v3, "http://schemas.google.com/g/2005#event.required"

    .line 374
    :goto_2
    :pswitch_b
    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 375
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeType"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    const-string v5, "value"

    invoke-interface {p0, v7, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "attendeeType"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    :cond_4
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v6, "who"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    return-void

    .line 369
    :pswitch_c
    const-string v3, "http://schemas.google.com/g/2005#event.optional"

    .line 370
    goto :goto_2

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 362
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch
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
    .line 140
    const-string v0, "gCal"

    const-string v1, "http://schemas.google.com/gCal/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public isPartial()Z
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->oldEntry:Lcom/google/wireless/gdata2/data/Entry;

    sget-object v1, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->EMPTY_EVENT_ENTRY:Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 11
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeStatus(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 155
    iget-object v8, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v8, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v8}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getSendEventNotifications()Z

    move-result v5

    .line 156
    .local v5, sendEventNotifications:Z
    if-eqz v5, :cond_0

    .line 157
    const-string v8, "http://schemas.google.com/gCal/2005"

    const-string v9, "sendEventNotifications"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const/4 v8, 0x0

    const-string v9, "value"

    const-string v10, "true"

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    const-string v8, "http://schemas.google.com/gCal/2005"

    const-string v9, "sendEventNotifications"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeAttendees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 174
    iget-boolean v8, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminders:Z

    if-eqz v8, :cond_1

    .line 175
    iget-object v8, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v8, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v8}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Set;

    move-result-object v4

    .line 176
    .local v4, reminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 177
    .local v3, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-static {p1, v3}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_0

    .line 180
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    .end local v4           #reminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    :cond_1
    iget-boolean v8, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhens:Z

    if-eqz v8, :cond_2

    .line 181
    iget-object v8, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v8, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v8}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhens()Ljava/util/List;

    move-result-object v7

    .line 182
    .local v7, whens:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/gdata2/calendar/data/When;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 183
    .local v6, when:Lcom/google/wireless/gdata2/calendar/data/When;
    invoke-direct {p0, p1, v6}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata2/calendar/data/When;)V

    goto :goto_1

    .line 187
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #when:Lcom/google/wireless/gdata2/calendar/data/When;
    .end local v7           #whens:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/gdata2/calendar/data/When;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhere(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 190
    iget-boolean v8, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperties:Z

    if-eqz v8, :cond_3

    .line 191
    iget-object v8, p0, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    check-cast v8, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-virtual {v8}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Map;

    move-result-object v0

    .line 193
    .local v0, extendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    .local v2, property:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 198
    .end local v0           #extendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #property:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeQuickAdd(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 199
    return-void
.end method
