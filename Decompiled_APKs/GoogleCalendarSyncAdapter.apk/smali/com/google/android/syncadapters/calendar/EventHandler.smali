.class Lcom/google/android/syncadapters/calendar/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# static fields
.field private static final ENTRY_TYPE_TO_PROVIDER_ATTENDEE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1183
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sput-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->ENTRY_TYPE_TO_PROVIDER_ATTENDEE:Ljava/util/HashMap;

    .line 1189
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/google/android/syncadapters/calendar/EventHandler;->PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Ljava/util/HashMap;

    .line 1190
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private addAttendeesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 11
    .parameter "entity"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity$NamedContentValues;

    .line 409
    .local v1, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 410
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, v1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 411
    .local v6, values:Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 412
    new-instance v7, Lcom/google/wireless/gdata2/calendar/data/Who;

    invoke-direct {v7}, Lcom/google/wireless/gdata2/calendar/data/Who;-><init>()V

    .line 413
    .local v7, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    const-string v8, "attendeeName"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 414
    const-string v8, "attendeeEmail"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 415
    const-string v8, "attendeeStatus"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 416
    .local v3, status:I
    packed-switch v3, :pswitch_data_0

    .line 433
    const-string v8, "EventHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attendee status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    .line 437
    :goto_1
    const-string v8, "attendeeType"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 438
    .local v4, type:I
    packed-switch v4, :pswitch_data_1

    .line 449
    const-string v8, "EventHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attendee type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    .line 453
    :goto_2
    const-string v8, "attendeeRelationship"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 454
    .local v2, rel:I
    packed-switch v2, :pswitch_data_2

    .line 471
    const-string v8, "EventHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attendee relationship: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    .line 475
    :goto_3
    invoke-virtual {p2, v7}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V

    goto/16 :goto_0

    .line 418
    .end local v2           #rel:I
    .end local v4           #type:I
    :pswitch_0
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 421
    :pswitch_1
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 424
    :pswitch_2
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 427
    :pswitch_3
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 430
    :pswitch_4
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setStatus(B)V

    goto :goto_1

    .line 440
    .restart local v4       #type:I
    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto :goto_2

    .line 443
    :pswitch_6
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto :goto_2

    .line 446
    :pswitch_7
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setType(B)V

    goto :goto_2

    .line 456
    .restart local v2       #rel:I
    :pswitch_8
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 459
    :pswitch_9
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 462
    :pswitch_a
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 465
    :pswitch_b
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 468
    :pswitch_c
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/google/wireless/gdata2/calendar/data/Who;->setRelationship(B)V

    goto :goto_3

    .line 478
    .end local v1           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v2           #rel:I
    .end local v3           #status:I
    .end local v4           #type:I
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    :cond_1
    return-void

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 438
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 454
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private addExtendedPropertiesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 7
    .parameter "entity"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 515
    .local v2, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 516
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 517
    .local v5, values:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 518
    const-string v6, "name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, name:Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p2, v1, v4}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #value:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private addRecurrenceToEntry(Lcom/android/calendarcommon/ICalendar$Component;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 9
    .parameter "component"
    .parameter "event"

    .prologue
    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 534
    .local v2, first:Z
    invoke-virtual {p1}, Lcom/android/calendarcommon/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 536
    .local v6, propertyName:Ljava/lang/String;
    invoke-virtual {p1, v6}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    .line 537
    .local v5, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v2, :cond_1

    .line 538
    const/4 v2, 0x0

    .line 542
    :goto_1
    invoke-virtual {v5, v7}, Lcom/android/calendarcommon/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 540
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 547
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #property:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v6           #propertyName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 548
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Component;>;"
    if-eqz v1, :cond_4

    .line 549
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendarcommon/ICalendar$Component;

    .line 550
    .local v0, child:Lcom/android/calendarcommon/ICalendar$Component;
    if-eqz v2, :cond_3

    .line 551
    const/4 v2, 0x0

    .line 555
    :goto_3
    invoke-virtual {v0, v7}, Lcom/android/calendarcommon/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 553
    :cond_3
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 558
    .end local v0           #child:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method private addRemindersToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 9
    .parameter "entity"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 484
    .local v2, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 485
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 486
    .local v5, values:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 487
    new-instance v3, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    invoke-direct {v3}, Lcom/google/wireless/gdata2/calendar/data/Reminder;-><init>()V

    .line 488
    .local v3, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    const-string v6, "minutes"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMinutes(I)V

    .line 489
    const-string v6, "method"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 490
    .local v1, method:I
    packed-switch v1, :pswitch_data_0

    .line 504
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal method, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 492
    :pswitch_0
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    .line 506
    :goto_1
    invoke-virtual {p2, v3}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V

    goto :goto_0

    .line 495
    :pswitch_1
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_1

    .line 498
    :pswitch_2
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_1

    .line 501
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->setMethod(B)V

    goto :goto_1

    .line 509
    .end local v1           #method:I
    .end local v2           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v3           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private convertProjectionToSelfAttendance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 402
    const-string v0, "/private/full"

    const-string v1, "/private/full-selfattendance"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/ContentValues;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    new-instance v4, Landroid/text/format/Time;

    const-string v0, "UTC"

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 889
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    :goto_0
    const-string v1, "sync_data7"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v0, "sync_data4"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v0, "_sync_id"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v0, "sync_data1"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v3

    .line 907
    const/4 v0, 0x0

    .line 908
    invoke-static {v2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    const/4 v1, 0x1

    .line 910
    invoke-virtual {v4, v3}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 911
    const-string v0, "original_sync_id"

    const-string v3, "/private/full/"

    const-string v5, "/events/"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v0, "originalInstanceTime"

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    const-string v2, "originalAllDay"

    iget-boolean v0, v4, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v1

    .line 919
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getStatus()B

    move-result v1

    .line 920
    packed-switch v1, :pswitch_data_0

    .line 935
    const/4 v0, 0x2

    .line 1176
    :goto_2
    return v0

    .line 896
    :cond_1
    const-string v0, "readonly-version"

    goto :goto_0

    .line 915
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 922
    :pswitch_0
    if-nez v0, :cond_3

    .line 923
    const/4 v0, 0x1

    goto :goto_2

    .line 925
    :cond_3
    const-string v0, "eventStatus"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    :goto_3
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    .line 942
    const-string v1, "sync_data5"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v0, "dirty"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 965
    const-string v0, "EventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getVisibility()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v0, 0x2

    goto :goto_2

    .line 928
    :pswitch_1
    const-string v0, "eventStatus"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 931
    :pswitch_2
    const-string v0, "eventStatus"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 948
    :pswitch_3
    const-string v0, "accessLevel"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    :goto_4
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 981
    const-string v0, "EventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected transparency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTransparency()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 952
    :pswitch_4
    const-string v0, "accessLevel"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 956
    :pswitch_5
    const-string v0, "accessLevel"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 960
    :pswitch_6
    const-string v0, "accessLevel"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 972
    :pswitch_7
    const-string v0, "availability"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    :goto_5
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getHtmlUri()Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 990
    const-string v1, "sync_data3"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_4
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 997
    if-nez v0, :cond_21

    .line 998
    const-string v0, ""

    move-object v1, v0

    .line 1000
    :goto_6
    const-string v0, "title"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_5

    .line 1005
    const-string v0, ""

    .line 1007
    :cond_5
    const-string v2, "description"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v0

    .line 1011
    if-nez v0, :cond_6

    .line 1012
    const-string v0, ""

    .line 1014
    :cond_6
    const-string v2, "eventLocation"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    if-eqz p3, :cond_7

    .line 1019
    const-string v0, "calendar_id"

    iget-wide v2, p3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1023
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getCommentsUri()Ljava/lang/String;

    move-result-object v0

    .line 1024
    if-eqz v0, :cond_8

    .line 1025
    const-string v2, "sync_data6"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_8
    const/4 v3, 0x0

    .line 1031
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1034
    const-string v0, "hasAlarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    :cond_9
    const/4 v0, 0x1

    .line 1038
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Map;

    move-result-object v5

    .line 1040
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1042
    const-string v2, "com.android.providers.calendar.CalendarSyncAdapter#guests"

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "hidden"

    const-string v6, "com.android.providers.calendar.CalendarSyncAdapter#guests"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1044
    const-string v0, "com.android.providers.calendar.CalendarSyncAdapter#guests"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const/4 v0, 0x0

    .line 1049
    :cond_a
    const-string v6, "hasExtendedProperties"

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    :cond_b
    const-string v2, "hasAttendeeData"

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getFirstWhen()Lcom/google/wireless/gdata2/calendar/data/When;

    move-result-object v2

    .line 1056
    if-eqz v2, :cond_16

    .line 1057
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 1059
    invoke-virtual {v4, v0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 1069
    iget-boolean v0, v4, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_f

    .line 1070
    const-string v0, "allDay"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    const-string v0, "eventTimezone"

    const-string v1, "UTC"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_c
    :goto_9
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1096
    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-gez v3, :cond_13

    .line 1100
    const-string v0, "dtstart"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 976
    :pswitch_8
    const-string v0, "availability"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 1049
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 1052
    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    .line 1073
    :cond_f
    const-string v0, "allDay"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    if-eqz v5, :cond_11

    const-string v0, "CalendarSyncAdapter#originalTimezone"

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1075
    const-string v0, "CalendarSyncAdapter#originalTimezone"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1076
    const-string v3, "EventHandler"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1077
    const-string v3, "EventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using original timezone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_10
    const-string v1, "eventTimezone"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1082
    :cond_11
    if-eqz p3, :cond_12

    .line 1083
    const-string v0, "eventTimezone"

    iget-object v1, p3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1088
    :cond_12
    const-string v0, "EventHandler"

    const/4 v3, 0x5

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1089
    const-string v0, "EventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot define Timezone for Event: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1103
    :cond_13
    const-string v3, "dtstart"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1105
    const/4 v0, 0x1

    .line 1108
    :goto_a
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1110
    invoke-virtual {v4, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 1111
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 1112
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_14

    .line 1116
    const-string v0, "dtstart"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1117
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 1119
    :cond_14
    const-string v3, "dtend"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_15
    move v3, v0

    .line 1124
    :cond_16
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v0

    .line 1125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1126
    new-instance v1, Lcom/android/calendarcommon/ICalendar$Component;

    const-string v2, "DUMMY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/calendarcommon/ICalendar$Component;-><init>(Ljava/lang/String;Lcom/android/calendarcommon/ICalendar$Component;)V

    .line 1130
    :try_start_0
    invoke-static {v1, v0}, Lcom/android/calendarcommon/ICalendar;->parseComponent(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    invoke-static {v1, p2}, Lcom/android/calendarcommon/RecurrenceSet;->populateContentValues(Lcom/android/calendarcommon/ICalendar$Component;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1139
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 1131
    :catch_0
    move-exception v0

    .line 1135
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 1142
    :cond_17
    const/4 v3, 0x1

    .line 1153
    :goto_b
    if-nez v3, :cond_19

    .line 1154
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 1146
    :cond_18
    const-string v1, "rrule"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v1, "rdate"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v1, "exrule"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v1, "exdate"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v1, "duration"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1157
    :cond_19
    const-string v1, "guestsCanInviteOthers"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getGuestsCanInviteOthers()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1159
    const-string v1, "guestsCanModify"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getGuestsCanModify()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1160
    const-string v1, "guestsCanSeeGuests"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getGuestsCanSeeGuests()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const/4 v1, 0x0

    .line 1165
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Set;

    move-result-object v0

    .line 1166
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 1167
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    .line 1168
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1172
    :goto_f
    if-eqz v0, :cond_1b

    .line 1173
    const-string v1, "organizer"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1157
    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    .line 1159
    :cond_1d
    const/4 v0, 0x0

    goto :goto_d

    .line 1160
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e

    :cond_1f
    move-object v0, v1

    goto :goto_f

    :cond_20
    move v0, v3

    goto/16 :goto_a

    :cond_21
    move-object v1, v0

    goto/16 :goto_6

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 946
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 970
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private generateNewUidForEvent()Ljava/lang/String;
    .locals 7

    .prologue
    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 391
    .local v3, time:J
    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 393
    .local v0, random:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v5, "android@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 42
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "junk2"
    .parameter "junk3"
    .parameter "junk4"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 591
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, junk1:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "EventHandler"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    const-string v3, "EventHandler"

    const-string v4, "============= applyEntryToEntity ============="

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v3, "EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventEntry is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v3, "EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entity is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v24, p5

    .line 597
    check-cast v24, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    .local v24, eventEntry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    move-object/from16 v39, p12

    .line 598
    check-cast v39, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;

    .line 600
    .local v39, syncInfo:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const/16 v30, 0x1

    .line 601
    .local v30, isDelete:Z
    :goto_0
    if-nez v30, :cond_6

    if-nez p6, :cond_6

    const/16 v31, 0x1

    .line 603
    .local v31, isInsert:Z
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 614
    .local v5, eventValuesServer:Landroid/content/ContentValues;
    const/16 v23, 0x0

    .line 615
    .local v23, entryState:I
    if-nez v30, :cond_2

    .line 616
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-static {v0, v1, v5, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/ContentValues;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;)I

    move-result v23

    .line 617
    if-eqz p7, :cond_2

    .line 618
    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    :cond_2
    if-nez v30, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_7

    .line 622
    :cond_3
    if-eqz p6, :cond_4

    .line 623
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    .line 625
    .local v25, eventId:Ljava/lang/Long;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 631
    move-object/from16 v0, p8

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    iput-wide v7, v3, Landroid/content/SyncStats;->numDeletes:J

    .line 838
    .end local v25           #eventId:Ljava/lang/Long;
    :cond_4
    :goto_2
    return-void

    .line 600
    .end local v5           #eventValuesServer:Landroid/content/ContentValues;
    .end local v23           #entryState:I
    .end local v30           #isDelete:Z
    .end local v31           #isInsert:Z
    :cond_5
    const/16 v30, 0x0

    goto :goto_0

    .line 601
    .restart local v30       #isDelete:Z
    :cond_6
    const/16 v31, 0x0

    goto :goto_1

    .line 633
    .restart local v5       #eventValuesServer:Landroid/content/ContentValues;
    .restart local v23       #entryState:I
    .restart local v31       #isInsert:Z
    :cond_7
    if-nez v23, :cond_e

    .line 639
    if-eqz v31, :cond_8

    .line 640
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 641
    .local v11, eventBackRefIfInsert:Ljava/lang/Integer;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 644
    const/4 v6, 0x0

    .line 645
    .local v6, eventIdIfUpdate:Ljava/lang/Long;
    move-object/from16 v0, p8

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    iput-wide v7, v3, Landroid/content/SyncStats;->numInserts:J

    .line 670
    :goto_3
    const-string v3, "hasAlarm"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    .line 671
    .local v27, hasAlarm:Ljava/lang/Integer;
    if-eqz v27, :cond_b

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 673
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getReminders()Ljava/util/Set;

    move-result-object v37

    .line 674
    .local v37, reminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 675
    const-string v3, "EventHandler"

    const-string v4, "Have an alarm but do not have any reminders -- should not happen."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Have an alarm but do not have any reminders"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 647
    .end local v6           #eventIdIfUpdate:Ljava/lang/Long;
    .end local v11           #eventBackRefIfInsert:Ljava/lang/Integer;
    .end local v27           #hasAlarm:Ljava/lang/Integer;
    .end local v37           #reminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    :cond_8
    const/4 v11, 0x0

    .line 648
    .restart local v11       #eventBackRefIfInsert:Ljava/lang/Integer;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 649
    .restart local v6       #eventIdIfUpdate:Ljava/lang/Long;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 655
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 659
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 663
    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 666
    move-object/from16 v0, p8

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    iput-wide v7, v3, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_3

    .line 680
    .restart local v27       #hasAlarm:Ljava/lang/Integer;
    .restart local v37       #reminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    :cond_9
    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 681
    .local v36, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 683
    .local v9, reminderValues:Landroid/content/ContentValues;
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMethod()B

    move-result v32

    .line 684
    .local v32, method:B
    packed-switch v32, :pswitch_data_0

    .line 704
    const-string v3, "EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown reminder method: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " should not happen!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_5
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->getMinutes()I

    move-result v33

    .line 709
    .local v33, minutes:I
    const-string v3, "minutes"

    const/4 v4, -0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_a

    const/16 v33, -0x1

    .end local v33           #minutes:I
    :cond_a
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v8

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object v10, v6

    invoke-static/range {v7 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto :goto_4

    .line 686
    :pswitch_0
    const-string v3, "method"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 690
    :pswitch_1
    const-string v3, "method"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 694
    :pswitch_2
    const-string v3, "method"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 698
    :pswitch_3
    const-string v3, "method"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 724
    .end local v9           #reminderValues:Landroid/content/ContentValues;
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v32           #method:B
    .end local v36           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    .end local v37           #reminders:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Reminder;>;"
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getAttendees()Ljava/util/Set;

    move-result-object v21

    .line 725
    .local v21, attendees:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Who;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 726
    .local v41, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 727
    .local v14, attendeesValues:Landroid/content/ContentValues;
    const-string v3, "attendeeName"

    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v3, "attendeeEmail"

    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 748
    const-string v3, "EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown attendee status "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getStatus()B

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/16 v38, 0x0

    .line 751
    .local v38, status:B
    :goto_7
    const-string v3, "attendeeStatus"

    invoke-static/range {v38 .. v38}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 753
    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 770
    const-string v3, "EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown attendee relationship "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getRelationship()B

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/16 v35, 0x0

    .line 774
    .local v35, rel:B
    :goto_8
    const-string v3, "attendeeRelationship"

    invoke-static/range {v35 .. v35}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 777
    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v3

    packed-switch v3, :pswitch_data_3

    .line 788
    const-string v3, "EventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown attendee type "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Lcom/google/wireless/gdata2/calendar/data/Who;->getType()B

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v40, 0x0

    .line 791
    .local v40, type:B
    :goto_9
    const-string v3, "attendeeType"

    invoke-static/range {v40 .. v40}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 792
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v13

    const/16 v17, 0x0

    move-object/from16 v12, p1

    move-object v15, v6

    move-object/from16 v16, v11

    invoke-static/range {v12 .. v17}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_6

    .line 733
    .end local v35           #rel:B
    .end local v38           #status:B
    .end local v40           #type:B
    :pswitch_4
    const/16 v38, 0x0

    .line 734
    .restart local v38       #status:B
    goto :goto_7

    .line 736
    .end local v38           #status:B
    :pswitch_5
    const/16 v38, 0x3

    .line 737
    .restart local v38       #status:B
    goto :goto_7

    .line 739
    .end local v38           #status:B
    :pswitch_6
    const/16 v38, 0x1

    .line 740
    .restart local v38       #status:B
    goto/16 :goto_7

    .line 742
    .end local v38           #status:B
    :pswitch_7
    const/16 v38, 0x4

    .line 743
    .restart local v38       #status:B
    goto/16 :goto_7

    .line 745
    .end local v38           #status:B
    :pswitch_8
    const/16 v38, 0x2

    .line 746
    .restart local v38       #status:B
    goto/16 :goto_7

    .line 755
    :pswitch_9
    const/16 v35, 0x0

    .line 756
    .restart local v35       #rel:B
    goto :goto_8

    .line 758
    .end local v35           #rel:B
    :pswitch_a
    const/16 v35, 0x2

    .line 759
    .restart local v35       #rel:B
    goto :goto_8

    .line 761
    .end local v35           #rel:B
    :pswitch_b
    const/16 v35, 0x1

    .line 762
    .restart local v35       #rel:B
    goto :goto_8

    .line 764
    .end local v35           #rel:B
    :pswitch_c
    const/16 v35, 0x3

    .line 765
    .restart local v35       #rel:B
    goto :goto_8

    .line 767
    .end local v35           #rel:B
    :pswitch_d
    const/16 v35, 0x4

    .line 768
    .restart local v35       #rel:B
    goto :goto_8

    .line 779
    :pswitch_e
    const/16 v40, 0x0

    .line 780
    .restart local v40       #type:B
    goto :goto_9

    .line 782
    .end local v40           #type:B
    :pswitch_f
    const/16 v40, 0x1

    .line 783
    .restart local v40       #type:B
    goto :goto_9

    .line 785
    .end local v40           #type:B
    :pswitch_10
    const/16 v40, 0x2

    .line 786
    .restart local v40       #type:B
    goto :goto_9

    .line 798
    .end local v14           #attendeesValues:Landroid/content/ContentValues;
    .end local v35           #rel:B
    .end local v38           #status:B
    .end local v40           #type:B
    .end local v41           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    :cond_c
    const-string v3, "hasExtendedProperties"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 800
    .local v28, hasExtendedProperties:Ljava/lang/Integer;
    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    .line 803
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Map;

    move-result-object v26

    .line 804
    .local v26, extendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 805
    const-string v3, "EventHandler"

    const-string v4, "Have extendedProperties but do not have any properties-- should not happen."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Have extendedProperties but do not have any properties"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :cond_d
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/Map$Entry;

    .line 811
    .local v34, property:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .local v17, extendedPropertyValues:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v4, "value"

    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v16

    const/16 v20, 0x0

    move-object/from16 v15, p1

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    invoke-static/range {v15 .. v20}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto :goto_a

    .line 828
    .end local v6           #eventIdIfUpdate:Ljava/lang/Long;
    .end local v11           #eventBackRefIfInsert:Ljava/lang/Integer;
    .end local v17           #extendedPropertyValues:Landroid/content/ContentValues;
    .end local v21           #attendees:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/wireless/gdata2/calendar/data/Who;>;"
    .end local v26           #extendedProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #hasAlarm:Ljava/lang/Integer;
    .end local v28           #hasExtendedProperties:Ljava/lang/Integer;
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v34           #property:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    const-string v3, "dtstart"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    .line 829
    .local v22, dtstart:Ljava/lang/Long;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_4

    goto/16 :goto_2

    .line 684
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 731
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 753
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 777
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .locals 40
    .parameter "entity"
    .parameter "account"
    .parameter "client"
    .parameter "validate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v13, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    invoke-direct {v13}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;-><init>()V

    .line 144
    .local v13, entry:Lcom/google/wireless/gdata2/calendar/data/EventEntry;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v33

    .line 149
    .local v33, values:Landroid/content/ContentValues;
    const-string v36, "hasAttendeeData"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 150
    .local v15, hasAttendeesInt:Ljava/lang/Integer;
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_f

    const/4 v14, 0x1

    .line 153
    .local v14, hasAttendees:Z
    :goto_0
    const-string v36, "_sync_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 154
    .local v18, id:Ljava/lang/String;
    const-string v36, "sync_data7"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, editUri:Ljava/lang/String;
    const-string v36, "sync_data4"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, eTag:Ljava/lang/String;
    const-string v36, "local android etag magic value"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 160
    const/4 v11, 0x0

    .line 164
    :cond_0
    if-nez v14, :cond_2

    .line 165
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertProjectionToSelfAttendance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 166
    :cond_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertProjectionToSelfAttendance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setId(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v13, v11}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setEditUri(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v13, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setETag(Ljava/lang/String;)V

    .line 171
    const-string v36, "deleted"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_10

    const/16 v36, 0x1

    :goto_1
    move/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setDeleted(Z)V

    .line 175
    const-string v36, "eventStatus"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 176
    .local v19, localStatus:Ljava/lang/Integer;
    if-nez v19, :cond_3

    .line 177
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 179
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v36

    packed-switch v36, :pswitch_data_0

    .line 191
    const-string v36, "EventHandler"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unexpected value for status: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "; using tentative."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v29, 0x0

    .line 196
    .local v29, status:B
    :goto_2
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setStatus(B)V

    .line 200
    const-string v36, "accessLevel"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 201
    .local v21, localVisibility:Ljava/lang/Integer;
    if-nez v21, :cond_4

    .line 202
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 204
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v36

    packed-switch v36, :pswitch_data_1

    .line 219
    const-string v36, "EventHandler"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unexpected value for visibility: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "; using default visibility."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v34, 0x0

    .line 224
    .local v34, visibility:B
    :goto_3
    move/from16 v0, v34

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setVisibility(B)V

    .line 227
    const-string v36, "availability"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 228
    .local v20, localTransparency:Ljava/lang/Integer;
    if-nez v20, :cond_5

    .line 229
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 231
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v36

    packed-switch v36, :pswitch_data_2

    .line 240
    const-string v36, "EventHandler"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unexpected value for transparency: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "; using opaque transparency."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v31, 0x0

    .line 245
    .local v31, transparency:B
    :goto_4
    move/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTransparency(B)V

    .line 250
    const-string v36, "title"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setTitle(Ljava/lang/String;)V

    .line 253
    const-string v36, "description"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setContent(Ljava/lang/String;)V

    .line 256
    const-string v36, "eventLocation"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/google/android/syncadapters/calendar/EventHandler;->addAttendeesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 262
    const-string v36, "sync_data6"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    .line 265
    const-string v36, "cal_sync1"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setCalendarUrl(Ljava/lang/String;)V

    .line 268
    const-string v36, "sync_data1"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setUid(Ljava/lang/String;)V

    .line 270
    new-instance v32, Landroid/text/format/Time;

    const-string v36, "UTC"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 272
    .local v32, utc:Landroid/text/format/Time;
    const-string v36, "allDay"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_11

    const/4 v4, 0x1

    .line 274
    .local v4, allDay:Z
    :goto_5
    const/16 v28, 0x0

    .line 275
    .local v28, startTime:Ljava/lang/String;
    const/4 v12, 0x0

    .line 277
    .local v12, endTime:Ljava/lang/String;
    const-string v36, "dtstart"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 278
    const-string v36, "dtstart"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 279
    .local v8, dtstart:J
    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 280
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v28

    .line 284
    .end local v8           #dtstart:J
    :cond_6
    const-string v36, "dtend"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 285
    const-string v36, "dtend"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 286
    .local v6, dtend:J
    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 287
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v12

    .line 290
    .end local v6           #dtend:J
    :cond_7
    new-instance v35, Lcom/google/wireless/gdata2/calendar/data/When;

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Lcom/google/wireless/gdata2/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v35, when:Lcom/google/wireless/gdata2/calendar/data/When;
    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V

    .line 294
    const-string v36, "hasAlarm"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 295
    .local v17, hasReminder:Ljava/lang/Integer;
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_8

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRemindersToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 300
    :cond_8
    const-string v36, "hasExtendedProperties"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 302
    .local v16, hasExtendedProperties:Ljava/lang/Integer;
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_9

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesToEntry(Landroid/content/Entity;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 306
    :cond_9
    const-wide/16 v25, -0x1

    .line 307
    .local v25, originalStartTime:J
    const-string v36, "original_sync_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 308
    .local v24, originalId:Ljava/lang/String;
    const-string v36, "originalInstanceTime"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 309
    const-string v36, "originalInstanceTime"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 311
    :cond_a
    const-wide/16 v36, -0x1

    cmp-long v36, v25, v36

    if-eqz v36, :cond_c

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_c

    .line 314
    const-string v36, "originalAllDay"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 316
    .local v23, originalAllDayValue:Ljava/lang/Integer;
    if-eqz v23, :cond_12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_12

    const/16 v22, 0x1

    .line 318
    .local v22, originalAllDay:Z
    :goto_6
    const-string v36, "eventTimezone"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 319
    .local v30, timezone:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 320
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v30

    .line 322
    :cond_b
    new-instance v27, Landroid/text/format/Time;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 323
    .local v27, originalTime:Landroid/text/format/Time;
    move-object/from16 v0, v27

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 325
    move-object/from16 v0, v32

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 326
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    .line 327
    const-string v36, "/events/"

    const-string v37, "/private/full/"

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 331
    .end local v22           #originalAllDay:Z
    .end local v23           #originalAllDayValue:Ljava/lang/Integer;
    .end local v27           #originalTime:Landroid/text/format/Time;
    .end local v30           #timezone:Ljava/lang/String;
    :cond_c
    new-instance v5, Lcom/android/calendarcommon/ICalendar$Component;

    const-string v36, "DUMMY"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v5, v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;-><init>(Ljava/lang/String;Lcom/android/calendarcommon/ICalendar$Component;)V

    .line 333
    .local v5, component:Lcom/android/calendarcommon/ICalendar$Component;
    move-object/from16 v0, v33

    invoke-static {v0, v5}, Lcom/android/calendarcommon/RecurrenceSet;->populateComponent(Landroid/content/ContentValues;Lcom/android/calendarcommon/ICalendar$Component;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 334
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRecurrenceToEntry(Lcom/android/calendarcommon/ICalendar$Component;Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V

    .line 338
    :cond_d
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    .line 340
    const-string v36, "guestsCanInviteOthers"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_13

    const/16 v36, 0x1

    :goto_7
    move/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanInviteOthers(Z)V

    .line 342
    const-string v36, "guestsCanModify"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_14

    const/16 v36, 0x1

    :goto_8
    move/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanModify(Z)V

    .line 344
    const-string v36, "guestsCanSeeGuests"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_15

    const/16 v36, 0x1

    :goto_9
    move/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setGuestsCanSeeGuests(Z)V

    .line 346
    const-string v36, "organizer"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setOrganizer(Ljava/lang/String;)V

    .line 347
    const-string v36, "deleted"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_16

    const/16 v36, 0x1

    :goto_a
    move/from16 v0, v36

    invoke-virtual {v13, v0}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setDeleted(Z)V

    .line 349
    invoke-virtual {v13}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->getUid()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->setEntryUid(Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/Entity;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 353
    :cond_e
    return-object v13

    .line 150
    .end local v4           #allDay:Z
    .end local v5           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v10           #eTag:Ljava/lang/String;
    .end local v11           #editUri:Ljava/lang/String;
    .end local v12           #endTime:Ljava/lang/String;
    .end local v14           #hasAttendees:Z
    .end local v16           #hasExtendedProperties:Ljava/lang/Integer;
    .end local v17           #hasReminder:Ljava/lang/Integer;
    .end local v18           #id:Ljava/lang/String;
    .end local v19           #localStatus:Ljava/lang/Integer;
    .end local v20           #localTransparency:Ljava/lang/Integer;
    .end local v21           #localVisibility:Ljava/lang/Integer;
    .end local v24           #originalId:Ljava/lang/String;
    .end local v25           #originalStartTime:J
    .end local v28           #startTime:Ljava/lang/String;
    .end local v29           #status:B
    .end local v31           #transparency:B
    .end local v32           #utc:Landroid/text/format/Time;
    .end local v34           #visibility:B
    .end local v35           #when:Lcom/google/wireless/gdata2/calendar/data/When;
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 171
    .restart local v10       #eTag:Ljava/lang/String;
    .restart local v11       #editUri:Ljava/lang/String;
    .restart local v14       #hasAttendees:Z
    .restart local v18       #id:Ljava/lang/String;
    :cond_10
    const/16 v36, 0x0

    goto/16 :goto_1

    .line 181
    .restart local v19       #localStatus:Ljava/lang/Integer;
    :pswitch_0
    const/16 v29, 0x2

    .line 182
    .restart local v29       #status:B
    goto/16 :goto_2

    .line 184
    .end local v29           #status:B
    :pswitch_1
    const/16 v29, 0x1

    .line 185
    .restart local v29       #status:B
    goto/16 :goto_2

    .line 187
    .end local v29           #status:B
    :pswitch_2
    const/16 v29, 0x0

    .line 188
    .restart local v29       #status:B
    goto/16 :goto_2

    .line 206
    .restart local v21       #localVisibility:Ljava/lang/Integer;
    :pswitch_3
    const/16 v34, 0x0

    .line 207
    .restart local v34       #visibility:B
    goto/16 :goto_3

    .line 209
    .end local v34           #visibility:B
    :pswitch_4
    const/16 v34, 0x1

    .line 210
    .restart local v34       #visibility:B
    goto/16 :goto_3

    .line 212
    .end local v34           #visibility:B
    :pswitch_5
    const/16 v34, 0x2

    .line 213
    .restart local v34       #visibility:B
    goto/16 :goto_3

    .line 215
    .end local v34           #visibility:B
    :pswitch_6
    const/16 v34, 0x3

    .line 216
    .restart local v34       #visibility:B
    goto/16 :goto_3

    .line 233
    .restart local v20       #localTransparency:Ljava/lang/Integer;
    :pswitch_7
    const/16 v31, 0x0

    .line 234
    .restart local v31       #transparency:B
    goto/16 :goto_4

    .line 236
    .end local v31           #transparency:B
    :pswitch_8
    const/16 v31, 0x1

    .line 237
    .restart local v31       #transparency:B
    goto/16 :goto_4

    .line 272
    .restart local v32       #utc:Landroid/text/format/Time;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 316
    .restart local v4       #allDay:Z
    .restart local v12       #endTime:Ljava/lang/String;
    .restart local v16       #hasExtendedProperties:Ljava/lang/Integer;
    .restart local v17       #hasReminder:Ljava/lang/Integer;
    .restart local v23       #originalAllDayValue:Ljava/lang/Integer;
    .restart local v24       #originalId:Ljava/lang/String;
    .restart local v25       #originalStartTime:J
    .restart local v28       #startTime:Ljava/lang/String;
    .restart local v35       #when:Lcom/google/wireless/gdata2/calendar/data/When;
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 340
    .end local v23           #originalAllDayValue:Ljava/lang/Integer;
    .restart local v5       #component:Lcom/android/calendarcommon/ICalendar$Component;
    :cond_13
    const/16 v36, 0x0

    goto/16 :goto_7

    .line 342
    :cond_14
    const/16 v36, 0x0

    goto/16 :goto_8

    .line 344
    :cond_15
    const/16 v36, 0x0

    goto/16 :goto_9

    .line 347
    :cond_16
    const/16 v36, 0x0

    goto :goto_a

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 231
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const-string v0, "deleted"

    return-object v0
.end method

.method public getEntitySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    const-string v0, "_sync_id IS NULL OR (_sync_id IS NOT NULL AND sync_data7 != \'readonly-version\' AND (dirty != 0 OR deleted != 0))"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 130
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    const-string v0, "sync_data4"

    return-object v0
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    const-string v0, "_sync_id"

    return-object v0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "id"

    .prologue
    .line 117
    return-object p1
.end method

.method public newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .locals 6
    .parameter "provider"
    .parameter "account"
    .parameter "id"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    sget-object v0, Landroid/provider/CalendarContract$EventsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method

.method public setEntryUid(Lcom/google/wireless/gdata2/calendar/data/EventEntry;Landroid/content/Entity;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 10
    .parameter "entry"
    .parameter "entity"
    .parameter "client"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 361
    .local v2, eventId:J
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/EventHandler;->generateNewUidForEvent()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, newUid:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "sync_data1"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :try_start_0
    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, p4}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addCallerIsSyncAdapterParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    .line 369
    .local v4, eventUri:Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p3, v4, v6, v7, v8}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 373
    .local v0, count:I
    if-lez v0, :cond_0

    .line 375
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->setUid(Ljava/lang/String;)V

    .line 387
    return-void

    .line 377
    :cond_0
    new-instance v7, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update Event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with Uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0           #count:I
    .end local v4           #eventUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 382
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "EventHandler"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 383
    const-string v7, "EventHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update Event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with Uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    throw v1
.end method
