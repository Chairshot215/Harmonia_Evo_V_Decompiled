.class public Lcom/google/wireless/gdata2/calendar/data/EventEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "EventEntry.java"


# instance fields
.field private final attendees:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/wireless/gdata2/calendar/data/Who;",
            ">;"
        }
    .end annotation
.end field

.field private calendarUrl:Ljava/lang/String;

.field private commentsUri:Ljava/lang/String;

.field private final extendedProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private guestsCanInviteOthers:Z

.field private guestsCanModify:Z

.field private guestsCanSeeGuests:Z

.field private organizer:Ljava/lang/String;

.field private originalEventId:Ljava/lang/String;

.field private originalEventStartTime:Ljava/lang/String;

.field private quickAdd:Z

.field private recurrence:Ljava/lang/String;

.field private final reminders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/wireless/gdata2/calendar/data/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private sendEventNotifications:Z

.field private status:B

.field private transparency:B

.field private uid:Ljava/lang/String;

.field private visibility:B

.field private final whens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/gdata2/calendar/data/When;",
            ">;"
        }
    .end annotation
.end field

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 86
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 87
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 88
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 89
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    .line 91
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 92
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 93
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 94
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 95
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    .line 98
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    .line 103
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 104
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata2/calendar/data/EventEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;-><init>(Lcom/google/wireless/gdata2/data/Entry;)V

    .line 86
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 87
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 88
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 89
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    .line 91
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 92
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 93
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 94
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 95
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    .line 98
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    .line 103
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 104
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 116
    iget-byte v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 117
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 118
    iget-byte v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 119
    iget-byte v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 120
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-boolean v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 122
    iget-boolean v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 123
    iget-boolean v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 124
    iget-boolean v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 125
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    iget-object v1, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 133
    iget-boolean v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 134
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V
    .locals 1
    .parameter "attendee"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method

.method public addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V
    .locals 1
    .parameter "reminder"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method public addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V
    .locals 1
    .parameter "when"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 144
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 145
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 146
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 147
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 148
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 149
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 150
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 151
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 152
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 154
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 160
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public clearReminders()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 301
    return-void
.end method

.method public getAttendees()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/wireless/gdata2/calendar/data/Who;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    return-object v0
.end method

.method public getCalendarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getFirstWhen()Lcom/google/wireless/gdata2/calendar/data/When;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/When;

    goto :goto_0
.end method

.method public getGuestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    return v0
.end method

.method public getGuestsCanModify()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    return v0
.end method

.method public getGuestsCanSeeGuests()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/wireless/gdata2/calendar/data/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    return-object v0
.end method

.method public getSendEventNotifications()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 182
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    return v0
.end method

.method public getTransparency()B
    .locals 1

    .prologue
    .line 196
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()B
    .locals 1

    .prologue
    .line 210
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    return v0
.end method

.method public getWhens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/gdata2/calendar/data/When;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    return-object v0
.end method

.method public isQuickAdd()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    return v0
.end method

.method public setCalendarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "calendarUrl"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setCommentsUri(Ljava/lang/String;)V
    .locals 0
    .parameter "commentsUri"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setGuestsCanInviteOthers(Z)V
    .locals 0
    .parameter "guestsCanInviteOthers"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 242
    return-void
.end method

.method public setGuestsCanModify(Z)V
    .locals 0
    .parameter "guestsCanModify"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 234
    return-void
.end method

.method public setGuestsCanSeeGuests(Z)V
    .locals 0
    .parameter "guestsCanSeeGuests"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 250
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .locals 0
    .parameter "organizer"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setOriginalEventId(Ljava/lang/String;)V
    .locals 0
    .parameter "originalEventId"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setOriginalEventStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter "originalEventStartTime"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0
    .parameter "recurrence"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSendEventNotifications(Z)V
    .locals 0
    .parameter "sendEventNotifications"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 226
    return-void
.end method

.method public setStatus(B)V
    .locals 0
    .parameter "status"

    .prologue
    .line 189
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 190
    return-void
.end method

.method public setTransparency(B)V
    .locals 0
    .parameter "transparency"

    .prologue
    .line 203
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 204
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setVisibility(B)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 217
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 218
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .parameter "where"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 7
    .parameter "sb"

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 403
    const-string v5, "STATUS: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-byte v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v5, "RECURRENCE"

    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v5, "VISIBILITY: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-byte v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const-string v5, "TRANSPARENCY: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-byte v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const-string v5, "ORIGINAL_EVENT_ID"

    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v5, "ORIGINAL_START_TIME"

    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v5, "QUICK_ADD: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    if-eqz v5, :cond_0

    const-string v5, "true"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const-string v5, "SEND_EVENT_NOTIFICATIONS: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    if-eqz v5, :cond_1

    const-string v5, "true"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    const-string v5, "GUESTS_CAN_MODIFY: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    if-eqz v5, :cond_2

    const-string v5, "true"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    const-string v5, "GUESTS_CAN_INVITE_OTHERS: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    if-eqz v5, :cond_3

    const-string v5, "true"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v5, "GUESTS_CAN_SEE_GUESTS: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    if-eqz v5, :cond_4

    const-string v5, "true"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const-string v5, "ORGANIZER"

    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 421
    .local v4, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    invoke-virtual {v4, p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 410
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    :cond_0
    const-string v5, "false"

    goto :goto_0

    .line 411
    :cond_1
    const-string v5, "false"

    goto :goto_1

    .line 413
    :cond_2
    const-string v5, "false"

    goto :goto_2

    .line 414
    :cond_3
    const-string v5, "false"

    goto :goto_3

    .line 416
    :cond_4
    const-string v5, "false"

    goto :goto_4

    .line 424
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 425
    .local v3, when:Lcom/google/wireless/gdata2/calendar/data/When;
    invoke-virtual {v3, p1}, Lcom/google/wireless/gdata2/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_6

    .line 427
    .end local v3           #when:Lcom/google/wireless/gdata2/calendar/data/When;
    :cond_6
    iget-object v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    if-eqz v5, :cond_7

    .line 428
    iget-object v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 429
    .local v2, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-virtual {v2, p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_7

    .line 432
    .end local v2           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    :cond_7
    const-string v5, "WHERE"

    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v5, "COMMENTS"

    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 435
    iget-object v5, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 436
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 442
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v5, "CALENDAR_URL"

    iget-object v6, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method
