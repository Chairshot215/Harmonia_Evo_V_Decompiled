.class public Lcom/google/wireless/gdata2/calendar/data/EventEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "EventEntry.java"


# static fields
.field public static final STATUS_CANCELED:B = 0x2t

.field public static final STATUS_CONFIRMED:B = 0x1t

.field public static final STATUS_TENTATIVE:B = 0x0t

.field public static final TRANSPARENCY_OPAQUE:B = 0x0t

.field public static final TRANSPARENCY_TRANSPARENT:B = 0x1t

.field public static final VISIBILITY_CONFIDENTIAL:B = 0x1t

.field public static final VISIBILITY_DEFAULT:B = 0x0t

.field public static final VISIBILITY_PRIVATE:B = 0x2t

.field public static final VISIBILITY_PUBLIC:B = 0x3t


# instance fields
.field private attendees:Ljava/util/Vector;

.field private calendarUrl:Ljava/lang/String;

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

    .line 91
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 68
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 69
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 70
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 71
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    .line 73
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 74
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 75
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 76
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 77
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    .line 79
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 80
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 85
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 86
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 100
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 101
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 102
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 103
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 104
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 105
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 106
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 107
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 108
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 110
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 111
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 112
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 117
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 118
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public clearAttendees()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 219
    return-void
.end method

.method public clearExtendedProperties()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 318
    return-void
.end method

.method public clearReminders()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 261
    return-void
.end method

.method public clearWhens()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 231
    return-void
.end method

.method public getAttendees()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    return-object v0
.end method

.method public getCalendarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getExtendedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 305
    :goto_0
    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getFirstWhen()Lcom/google/wireless/gdata2/calendar/data/When;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/When;

    move-object v0, p0

    goto :goto_0
.end method

.method public getGuestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    return v0
.end method

.method public getGuestsCanModify()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    return v0
.end method

.method public getGuestsCanSeeGuests()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    return-object v0
.end method

.method public getSendEventNotifications()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 139
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    return v0
.end method

.method public getTransparency()B
    .locals 1

    .prologue
    .line 153
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    return v0
.end method

.method public getVisibility()B
    .locals 1

    .prologue
    .line 167
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    return v0
.end method

.method public getWhens()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    return-object v0
.end method

.method public isQuickAdd()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    return v0
.end method

.method public setCalendarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setCommentsUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setGuestsCanInviteOthers(Z)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 199
    return-void
.end method

.method public setGuestsCanModify(Z)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 191
    return-void
.end method

.method public setGuestsCanSeeGuests(Z)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 207
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setOriginalEventId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setOriginalEventStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setQuickAdd(Z)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 334
    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSendEventNotifications(Z)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 183
    return-void
.end method

.method public setStatus(B)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 147
    return-void
.end method

.method public setTransparency(B)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 161
    return-void
.end method

.method public setVisibility(B)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 175
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v0, "RECURRENCE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VISIBILITY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRANSPARENCY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v0, "ORIGINAL_EVENT_ID"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "ORIGINAL_START_TIME"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QUICK_ADD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND_EVENT_NOTIFICATIONS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GUESTS_CAN_MODIFY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    if-eqz v1, :cond_2

    const-string v1, "true"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GUESTS_CAN_INVITE_OTHERS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    if-eqz v1, :cond_3

    const-string v1, "true"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GUESTS_CAN_SEE_GUESTS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    if-eqz v1, :cond_4

    const-string v1, "true"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v0, "ORGANIZER"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 368
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 370
    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 359
    :cond_0
    const-string v1, "false"

    goto/16 :goto_0

    .line 360
    :cond_1
    const-string v1, "false"

    goto/16 :goto_1

    .line 362
    :cond_2
    const-string v1, "false"

    goto :goto_2

    .line 363
    :cond_3
    const-string v1, "false"

    goto :goto_3

    .line 364
    :cond_4
    const-string v1, "false"

    goto :goto_4

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 374
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 376
    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_6

    .line 378
    :cond_6
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-eqz v0, :cond_7

    .line 379
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 380
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 381
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 382
    invoke-virtual {v0, p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_7

    .line 385
    :cond_7
    const-string v0, "WHERE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "COMMENTS"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-eqz v0, :cond_8

    .line 388
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 389
    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 390
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 394
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 398
    :cond_8
    const-string v0, "CALENDAR_URL"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method
