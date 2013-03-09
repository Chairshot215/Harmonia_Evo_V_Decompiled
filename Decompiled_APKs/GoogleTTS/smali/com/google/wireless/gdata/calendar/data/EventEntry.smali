.class public Lcom/google/wireless/gdata/calendar/data/EventEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "EventEntry.java"


# instance fields
.field private attendees:Ljava/util/Vector;

.field private commentsUri:Ljava/lang/String;

.field private extendedProperties:Ljava/util/Hashtable;

.field private guestsCanInviteOthers:Z

.field private guestsCanModify:Z

.field private guestsCanSeeGuests:Z

.field private organizer:Ljava/lang/String;

.field private originalEventId:Ljava/lang/String;

.field private originalEventStartTime:Ljava/lang/String;

.field private quickAdd:Z

.field private recurrence:Ljava/lang/String;

.field private reminders:Ljava/util/Vector;

.field private sendEventNotifications:Z

.field private status:B

.field private transparency:B

.field private visibility:B

.field private whens:Ljava/util/Vector;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 68
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    .line 69
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 70
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    .line 71
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    .line 73
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 74
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanModify:Z

    .line 75
    iput-boolean v3, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 76
    iput-boolean v3, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 77
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    .line 79
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 80
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 85
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->quickAdd:Z

    .line 91
    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 11
    .parameter "sb"

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STATUS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v9, "RECURRENCE"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VISIBILITY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSPARENCY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const-string v9, "ORIGINAL_EVENT_ID"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v9, "ORIGINAL_START_TIME"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QUICK_ADD: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->quickAdd:Z

    if-eqz v9, :cond_0

    const-string v9, "true"

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEND_EVENT_NOTIFICATIONS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->sendEventNotifications:Z

    if-eqz v9, :cond_1

    const-string v9, "true"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_MODIFY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanModify:Z

    if-eqz v9, :cond_2

    const-string v9, "true"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_INVITE_OTHERS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    if-eqz v9, :cond_3

    const-string v9, "true"

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_SEE_GUESTS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    if-eqz v9, :cond_4

    const-string v9, "true"

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v9, "ORGANIZER"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 350
    .local v8, whos:Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 351
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata/calendar/data/Who;

    .line 352
    .local v7, who:Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-virtual {v7, p1}, Lcom/google/wireless/gdata/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 342
    .end local v7           #who:Lcom/google/wireless/gdata/calendar/data/Who;
    .end local v8           #whos:Ljava/util/Enumeration;
    :cond_0
    const-string v9, "false"

    goto/16 :goto_0

    .line 343
    :cond_1
    const-string v9, "false"

    goto/16 :goto_1

    .line 344
    :cond_2
    const-string v9, "false"

    goto :goto_2

    .line 345
    :cond_3
    const-string v9, "false"

    goto :goto_3

    .line 346
    :cond_4
    const-string v9, "false"

    goto :goto_4

    .line 355
    .restart local v8       #whos:Ljava/util/Enumeration;
    :cond_5
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 356
    .local v4, times:Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 357
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/gdata/calendar/data/When;

    .line 358
    .local v6, when:Lcom/google/wireless/gdata/calendar/data/When;
    invoke-virtual {v6, p1}, Lcom/google/wireless/gdata/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_6

    .line 360
    .end local v6           #when:Lcom/google/wireless/gdata/calendar/data/When;
    :cond_6
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-eqz v9, :cond_7

    .line 361
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 362
    .local v0, alarms:Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 363
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 364
    .local v3, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-virtual {v3, p1}, Lcom/google/wireless/gdata/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_7

    .line 367
    .end local v0           #alarms:Ljava/util/Enumeration;
    .end local v3           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    :cond_7
    const-string v9, "WHERE"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v9, "COMMENTS"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-eqz v9, :cond_8

    .line 370
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 371
    .local v1, entryNames:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 372
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    .local v2, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 374
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 380
    .end local v1           #entryNames:Ljava/util/Enumeration;
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_8
    return-void
.end method
