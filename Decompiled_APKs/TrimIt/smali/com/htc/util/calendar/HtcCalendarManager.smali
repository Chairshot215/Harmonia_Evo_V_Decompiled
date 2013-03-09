.class public Lcom/htc/util/calendar/HtcCalendarManager;
.super Ljava/lang/Object;
.source "HtcCalendarManager.java"

# interfaces
.implements Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field public static final EXTRA_EVENT_URI:Ljava/lang/String; = "com.htc.calendar.event_uri"

.field private static final TAG:Ljava/lang/String; = "HtcCalendarManager"

.field private static me:Lcom/htc/util/calendar/HtcCalendarManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 296
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attendeeName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "attendeeEmail"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "attendeeRelationship"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcCalendarManager contruct by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 56
    :goto_0
    iput-object p1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 58
    return-void

    .line 54
    :cond_0
    const-string v0, "HtcCalendarManager contruct by null??"

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private Debug(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    const-string v0, "HtcCalendarManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    const-class v1, Lcom/htc/util/calendar/HtcCalendarManager;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 69
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 72
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 73
    if-eqz p0, :cond_3

    .line 74
    const-string v0, "HtcCalendarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationContext() should not be null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iput-object p0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 80
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 76
    :cond_3
    const-string v0, "HtcCalendarManager"

    const-string v1, "getApplicationContext() should not be null: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 12
    .parameter "cr"
    .parameter "calendar_id"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 241
    .local p4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p5, alarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 242
    .local v6, idx:I
    const/4 v9, 0x0

    .line 243
    .local v9, numberCal:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 247
    .local v3, cv:Landroid/content/ContentValues;
    move-object v1, v3

    .line 248
    .local v1, cacheContentValue:Landroid/content/ContentValues;
    const-string v10, "calendar_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 252
    .local v7, newEvent:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 253
    .local v8, newEventId:Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 255
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 256
    .local v2, cacheContentValue2:Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 257
    const-string v10, "hasAlarm"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 258
    .local v4, hasAlarm:Z
    :goto_1
    if-eqz v4, :cond_0

    .line 260
    const-string v10, "event_id"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v10, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 265
    .end local v4           #hasAlarm:Z
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 266
    goto :goto_0

    .line 257
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 268
    .end local v1           #cacheContentValue:Landroid/content/ContentValues;
    .end local v2           #cacheContentValue2:Landroid/content/ContentValues;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v7           #newEvent:Landroid/net/Uri;
    .end local v8           #newEventId:Ljava/lang/String;
    :cond_2
    return v9
.end method


# virtual methods
.method public buildEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "vCalString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 226
    .local v0, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    invoke-virtual {v0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v1

    .line 227
    .local v1, isPass:Z
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 228
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "eventId"

    .prologue
    .line 215
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 216
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v1

    return-object v1
.end method

.method public buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "uniEvent"

    .prologue
    .line 202
    new-instance v0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;-><init>()V

    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->buildVCalendar(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v0

    return-object v0
.end method

.method public checkIfAssociatedNotes(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "uniEventUri"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->checkIfAssociatedNotes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public generateEventUri(JJJ)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 159
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateEventUriString(JJJ)Ljava/lang/String;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 147
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUriString(J)Ljava/lang/String;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUriString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateUniEventUri(JJJ)Landroid/net/Uri;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateUniEventUriString(JJJ)Ljava/lang/String;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUriString(Landroid/content/Context;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedNotesId(Ljava/lang/String;)J
    .locals 2
    .parameter "uniEventUri"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->getAssociatedNotesId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttendees(Landroid/net/Uri;I)Ljava/util/ArrayList;
    .locals 16
    .parameter "uri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v11, 0x0

    .line 313
    .local v11, member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 314
    .local v1, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/util/calendar/tools/UriTools;->getEventId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v9

    .line 315
    .local v9, event_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 365
    :goto_0
    return-object v2

    .line 317
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "event_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 321
    .local v15, where:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 327
    :cond_1
    const-string v2, " and "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 333
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttendees: where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 336
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attendeeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 342
    .local v13, sort:Ljava/lang/StringBuffer;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 344
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 345
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .restart local v11       #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    :cond_4
    const-string v2, "attendeeStatus"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 349
    .local v14, status:I
    const-string v2, "attendeeName"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, name:Ljava/lang/String;
    const-string v2, "attendeeEmail"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, email:Ljava/lang/String;
    const-string v2, "default@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "exchange@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Outlook"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 359
    :cond_5
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 362
    .end local v8           #email:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #status:I
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_7
    const/4 v7, 0x0

    move-object v2, v11

    .line 365
    goto/16 :goto_0

    .line 357
    .restart local v8       #email:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v14       #status:I
    :cond_8
    new-instance v2, Lcom/htc/util/calendar/Attendee;

    invoke-direct {v2, v12, v8, v14}, Lcom/htc/util/calendar/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 1
    .parameter "eventUri"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    return-object v0
.end method

.method public importCalendar(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 17
    .parameter "cr"
    .parameter "calendar_id"
    .parameter "vCalString"

    .prologue
    .line 280
    new-instance v13, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 281
    .local v13, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v15

    .line 283
    .local v15, isPass:Z
    if-nez v15, :cond_0

    const/4 v1, 0x0

    .line 293
    :goto_0
    return v1

    .line 285
    :cond_0
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v5

    .line 286
    .local v5, multiEventsCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoCV()Ljava/util/ArrayList;

    move-result-object v11

    .line 287
    .local v11, multiToDoCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventAlarmsCV()Ljava/util/ArrayList;

    move-result-object v6

    .line 288
    .local v6, multiEventsAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoAlarmsCV()Ljava/util/ArrayList;

    move-result-object v12

    .local v12, multiToDoAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 290
    invoke-direct/range {v1 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v14

    .local v14, evCal:I
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    .line 291
    invoke-direct/range {v7 .. v12}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v16

    .line 293
    .local v16, todoCal:I
    add-int v1, v14, v16

    goto :goto_0
.end method

.method public isEventExist(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->isEventExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public setAssociation(JLjava/lang/String;Z)Landroid/net/Uri;
    .locals 1
    .parameter "noteId"
    .parameter "eventUri"
    .parameter "isSet"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/util/calendar/notes/NotesHelper;->setAssociation(Landroid/content/Context;JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public uniEventToEventUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uniEvent"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
