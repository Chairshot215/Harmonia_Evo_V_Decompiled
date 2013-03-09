.class public Lcom/htc/android/mail/meeting/MeetingInvitation;
.super Ljava/lang/Object;
.source "MeetingInvitation.java"


# static fields
.field public static final CMD_ACCEPT:I = 0x1

.field public static final CMD_DECLINE:I = 0x3

.field public static final CMD_FORWARD_MEETING:I = 0x4

.field public static final CMD_INVITATION:I = 0x6

.field public static final CMD_PROPOSE_NEW_TIME:I = 0x5

.field public static final CMD_TENTATICE:I = 0x2

.field public static final CMD_UNKNOWN:I = 0x0

.field private static DEBUG:Z = false

.field public static RETRY_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MeetingInvitation"


# instance fields
.field private iCalendar:Ljava/lang/String;

.field private mCommand:I

.field private mContext:Landroid/content/Context;

.field private mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    .line 52
    sget v0, Lcom/htc/android/mail/ComposeActivity;->RETRY_COUNT:I

    sput v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->RETRY_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    .line 65
    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->iCalendar:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    .line 67
    return-void
.end method


# virtual methods
.method public create_CalendarEvent(Lcom/htc/android/mail/Account;)J
    .locals 57
    .parameter "account"

    .prologue
    .line 322
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MeetingInvitation"

    const-string v3, "> create_CalendarEvent"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    if-nez v2, :cond_2

    .line 324
    const-string v2, "MeetingInvitation"

    const-string v3, "create_CalendarEvent error: parameter is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-wide/16 v44, 0x0

    .line 663
    :cond_1
    :goto_0
    return-wide v44

    .line 328
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/meeting/MeetingUtil;->needToAddCalendarEvent(JLcom/htc/android/mail/meeting/MeetingRequest;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 329
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "MeetingInvitation"

    const-string v3, "create_CalendarEvent: do not need to add event"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_3
    const-wide/16 v44, 0x0

    goto :goto_0

    .line 333
    :cond_4
    const-wide/16 v44, 0x0

    .line 334
    .local v44, meetingId:J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v53

    .line 335
    .local v53, tz:Ljava/util/TimeZone;
    new-instance v56, Landroid/content/ContentValues;

    invoke-direct/range {v56 .. v56}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v56, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    .line 337
    .local v48, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/android/mail/meeting/MeetingUtil;->fetchMeetingRule(Lcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v47

    .line 339
    .local v47, recurrence:Ljava/lang/String;
    const-wide/16 v32, 0x0

    .line 340
    .local v32, dirtyOffset:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-boolean v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    if-eqz v2, :cond_5

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v53

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v32, v0

    .line 344
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    invoke-virtual {v2}, Lcom/htc/android/mail/meeting/MeetingRequest;->getStartTime()Landroid/text/format/Time;

    move-result-object v51

    .line 345
    .local v51, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    invoke-virtual {v2}, Lcom/htc/android/mail/meeting/MeetingRequest;->getEndTime()Landroid/text/format/Time;

    move-result-object v38

    .line 346
    .local v38, endTime:Landroid/text/format/Time;
    const/4 v2, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    add-long v49, v2, v32

    .line 347
    .local v49, startMillis:J
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    add-long v36, v2, v32

    .line 349
    .local v36, endMillis:J
    const-string v43, ""

    .line 350
    .local v43, mailBody:Ljava/lang/String;
    const-string v17, ""

    .line 351
    .local v17, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v0, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 356
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 357
    const/16 v39, 0x2

    .line 364
    .local v39, eventStatus:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getCalenderIdByAccountId(Landroid/content/Context;J)J

    move-result-wide v20

    .line 365
    .local v20, calendarId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-gez v2, :cond_a

    .line 366
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "MeetingInvitation"

    const-string v3, "create_CalendarEvent error: cannot find calendar id"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_7
    const-wide/16 v44, 0x0

    goto/16 :goto_0

    .line 358
    .end local v20           #calendarId:J
    .end local v39           #eventStatus:I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 359
    const/16 v39, 0x0

    .restart local v39       #eventStatus:I
    goto :goto_1

    .line 361
    .end local v39           #eventStatus:I
    :cond_9
    const/16 v39, 0x1

    .restart local v39       #eventStatus:I
    goto :goto_1

    .line 369
    .restart local v20       #calendarId:J
    :cond_a
    const-string v2, "calendar_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    const-string v2, "iCalGUID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v3, "eventTimezone"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-boolean v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    if-eqz v2, :cond_14

    const-string v2, "UTC"

    :goto_2
    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->subject:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v3, "allDay"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-boolean v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    const/4 v6, 0x1

    if-ne v2, v6, :cond_15

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v2, "dtstart"

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    const-string v2, "dtend"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v2, "description"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "eventLocation"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "eventStatus"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v3, "hasAlarm"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->reminder:I

    if-lez v2, :cond_16

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    const-string v2, "organizer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "MeetingStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    if-eqz v47, :cond_b

    .line 401
    const-string v2, "rrule"

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_b
    const/16 v25, 0x0

    .line 405
    .local v25, cur:Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 407
    .local v27, curException:Landroid/database/Cursor;
    const/16 v41, 0x0

    .line 408
    .local v41, id:Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 409
    .local v4, proj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iCalGUID=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 411
    if-eqz v25, :cond_1c

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 413
    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_17

    .line 414
    const-string v2, "selfAttendeeStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    :cond_c
    :goto_5
    const-string v2, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 423
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v44, v0

    .line 425
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 426
    .local v18, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 427
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v18           #builder:Landroid/net/Uri$Builder;
    :cond_d
    :goto_6
    if-eqz v25, :cond_e

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_e
    if-eqz v27, :cond_f

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_f

    .line 483
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    :goto_7
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_f
    const/16 v28, 0x0

    .line 492
    .local v28, curOrganizer:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {v56 .. v56}, Landroid/content/ContentValues;->clear()V

    .line 493
    const-string v2, "event_id"

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 495
    const-string v2, "attendeeName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 500
    const-string v2, "attendeeEmail"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_10
    const-string v2, "attendeeStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    const-string v2, "attendeeType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v2, "attendeeRelationship"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 507
    .restart local v4       #proj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v44

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND attendeeEmail=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND attendeeRelationship="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 508
    .restart local v5       #where:Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, v48

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 509
    if-eqz v28, :cond_27

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 510
    const-string v2, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 511
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 512
    .restart local v18       #builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 513
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 520
    .end local v18           #builder:Landroid/net/Uri$Builder;
    :goto_9
    if-eqz v28, :cond_11

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    .line 521
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 522
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    :goto_a
    const/16 v28, 0x0

    .line 529
    :cond_11
    const/16 v26, 0x0

    .line 530
    .local v26, curAttendee:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v0, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 532
    .local v16, attendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/meeting/MeetingRequest$Person;>;"
    :try_start_2
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v42, insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v54, updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v40, 0x0

    .local v40, i:I
    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v40

    if-ge v0, v2, :cond_35

    .line 535
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v29, cv:Landroid/content/ContentValues;
    const-string v2, "event_id"

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 538
    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 539
    const-string v3, "attendeeName"

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_c
    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 545
    const-string v3, "attendeeEmail"

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_12
    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p1, :cond_33

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 551
    packed-switch v39, :pswitch_data_0

    .line 565
    :goto_d
    const-string v2, "attendeeType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v2, "attendeeRelationship"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    .line 569
    .local v8, projAttendee:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v44

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND attendeeEmail=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND attendeeRelationship="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 570
    .local v9, whereAttendee:Ljava/lang/String;
    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v48

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 571
    if-eqz v26, :cond_34

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 572
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 573
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 574
    .restart local v18       #builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 576
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 577
    .local v23, cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 578
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    .line 580
    .local v24, cpOperation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v54

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v18           #builder:Landroid/net/Uri$Builder;
    .end local v23           #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v24           #cpOperation:Landroid/content/ContentProviderOperation;
    :goto_e
    if-eqz v26, :cond_13

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_13

    .line 586
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 534
    :cond_13
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_b

    .line 373
    .end local v8           #projAttendee:[Ljava/lang/String;
    .end local v9           #whereAttendee:Ljava/lang/String;
    .end local v16           #attendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/meeting/MeetingRequest$Person;>;"
    .end local v25           #cur:Landroid/database/Cursor;
    .end local v26           #curAttendee:Landroid/database/Cursor;
    .end local v27           #curException:Landroid/database/Cursor;
    .end local v28           #curOrganizer:Landroid/database/Cursor;
    .end local v29           #cv:Landroid/content/ContentValues;
    .end local v40           #i:I
    .end local v41           #id:Ljava/lang/String;
    .end local v42           #insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v54           #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_14
    invoke-virtual/range {v53 .. v53}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 375
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 381
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 415
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v25       #cur:Landroid/database/Cursor;
    .restart local v27       #curException:Landroid/database/Cursor;
    .restart local v41       #id:Ljava/lang/String;
    :cond_17
    if-nez v39, :cond_19

    .line 416
    :try_start_3
    const-string v2, "selfAttendeeStatus"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    .line 476
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 477
    .local v35, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    if-eqz v25, :cond_18

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_18

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_18
    if-eqz v27, :cond_f

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_7

    .line 417
    .end local v35           #e:Ljava/lang/Exception;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    :cond_19
    const/4 v2, 0x2

    move/from16 v0, v39

    if-ne v0, v2, :cond_c

    .line 418
    :try_start_5
    const-string v2, "selfAttendeeStatus"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    .line 479
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v25, :cond_1a

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_1a
    if-eqz v27, :cond_1b

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 483
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_1b
    throw v2

    .line 428
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    :cond_1c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->instanceType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    .line 429
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_1d

    const-string v2, "MeetingInvitation"

    const-string v3, "create_CalendarEvent: exception to a recurring appointment"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingUtil;->getParentGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 431
    .local v46, parentGUID:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string v2, "MeetingInvitation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentGUID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_1e
    if-eqz v46, :cond_d

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iCalGUID=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, v48

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 435
    if-eqz v27, :cond_20

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 436
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_1f

    const-string v2, "MeetingInvitation"

    const-string v3, "create_CalendarEvent: update exception"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_1f
    const-string v2, "_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 438
    const-string v2, "parentID"

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_20
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v55

    .line 442
    .local v55, uriMeeting:Landroid/net/Uri;
    if-eqz v55, :cond_d

    .line 443
    invoke-static/range {v55 .. v55}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 446
    invoke-static/range {v39 .. v39}, Lcom/htc/android/mail/meeting/MeetingUtil;->check_SelfAttendeeStatus(I)Landroid/content/ContentValues;

    move-result-object v29

    .line 447
    .restart local v29       #cv:Landroid/content/ContentValues;
    if-eqz v29, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v2, v44, v2

    if-lez v2, :cond_d

    .line 448
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 449
    .restart local v18       #builder:Landroid/net/Uri$Builder;
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 450
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 455
    .end local v18           #builder:Landroid/net/Uri$Builder;
    .end local v29           #cv:Landroid/content/ContentValues;
    .end local v46           #parentGUID:Ljava/lang/String;
    .end local v55           #uriMeeting:Landroid/net/Uri;
    :cond_21
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_22

    const-string v2, "MeetingInvitation"

    const-string v3, "create_CalendarEvent: can\'t query, using insert"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 457
    :cond_22
    :try_start_7
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v55

    .line 458
    .restart local v55       #uriMeeting:Landroid/net/Uri;
    if-eqz v55, :cond_24

    .line 459
    invoke-static/range {v55 .. v55}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 462
    invoke-static/range {v39 .. v39}, Lcom/htc/android/mail/meeting/MeetingUtil;->check_SelfAttendeeStatus(I)Landroid/content/ContentValues;

    move-result-object v29

    .line 463
    .restart local v29       #cv:Landroid/content/ContentValues;
    if-eqz v29, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v2, v44, v2

    if-lez v2, :cond_d

    .line 464
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 465
    .restart local v18       #builder:Landroid/net/Uri$Builder;
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 466
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6

    .line 471
    .end local v18           #builder:Landroid/net/Uri$Builder;
    .end local v29           #cv:Landroid/content/ContentValues;
    .end local v55           #uriMeeting:Landroid/net/Uri;
    :catch_1
    move-exception v35

    .line 472
    .restart local v35       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 473
    const-wide/16 v44, 0x0

    .line 479
    .end local v44           #meetingId:J
    if-eqz v25, :cond_23

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_23

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_23
    if-eqz v27, :cond_1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 483
    .end local v35           #e:Ljava/lang/Exception;
    :goto_f
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 469
    .restart local v44       #meetingId:J
    .restart local v55       #uriMeeting:Landroid/net/Uri;
    :cond_24
    const-wide/16 v44, 0x0

    .line 479
    .end local v44           #meetingId:J
    if-eqz v25, :cond_25

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_25

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_25
    if-eqz v27, :cond_1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_f

    .line 497
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v55           #uriMeeting:Landroid/net/Uri;
    .restart local v28       #curOrganizer:Landroid/database/Cursor;
    .restart local v44       #meetingId:J
    :cond_26
    :try_start_9
    const-string v2, "attendeeName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_8

    .line 517
    :catch_2
    move-exception v35

    .line 518
    .restart local v35       #e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 520
    if-eqz v28, :cond_11

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    .line 521
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 515
    .end local v35           #e:Ljava/lang/Exception;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    :cond_27
    :try_start_b
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_9

    .line 520
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v28, :cond_28

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_28

    .line 521
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 522
    const/16 v28, 0x0

    .line 520
    :cond_28
    throw v2

    .line 541
    .restart local v16       #attendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/meeting/MeetingRequest$Person;>;"
    .restart local v26       #curAttendee:Landroid/database/Cursor;
    .restart local v29       #cv:Landroid/content/ContentValues;
    .restart local v40       #i:I
    .restart local v42       #insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v54       #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_29
    :try_start_c
    const-string v3, "attendeeName"

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    iget-object v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_c

    .line 601
    .end local v29           #cv:Landroid/content/ContentValues;
    .end local v40           #i:I
    .end local v42           #insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v54           #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_3
    move-exception v35

    .line 602
    .restart local v35       #e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 604
    if-eqz v26, :cond_2a

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 605
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 606
    .end local v35           #e:Ljava/lang/Exception;
    :goto_10
    const/16 v26, 0x0

    .line 613
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_31

    .line 618
    :cond_2b
    const/16 v19, 0x0

    .line 620
    .local v19, c:Landroid/database/Cursor;
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 622
    .local v13, queryString:Ljava/lang/String;
    sget-object v11, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v48

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 623
    if-eqz v19, :cond_30

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 624
    const-string v2, "reminder_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 625
    .local v52, type:I
    const-string v2, "reminder_duration"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 627
    .local v34, duration:I
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_2c

    const-string v2, "MeetingInvitation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default AlertType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_2c
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_2d

    const-string v2, "MeetingInvitation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default Duration = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2e

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->reminder:I

    if-lez v2, :cond_38

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget v2, v2, Lcom/htc/android/mail/meeting/MeetingRequest;->reminder:I

    div-int/lit8 v34, v2, 0x3c

    .line 640
    :cond_2e
    :goto_11
    if-eqz v34, :cond_30

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v44

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 642
    .local v31, delWhere:Ljava/lang/String;
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 643
    .local v22, count:I
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_2f

    const-string v2, "MeetingInvitation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete reminder count: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_2f
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 646
    .restart local v29       #cv:Landroid/content/ContentValues;
    const-string v2, "event_id"

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 647
    const-string v2, "method"

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v2, "minutes"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 655
    .end local v22           #count:I
    .end local v29           #cv:Landroid/content/ContentValues;
    .end local v31           #delWhere:Ljava/lang/String;
    .end local v34           #duration:I
    .end local v52           #type:I
    :cond_30
    if-eqz v19, :cond_31

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_31

    .line 656
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 657
    .end local v13           #queryString:Ljava/lang/String;
    :goto_12
    const/16 v19, 0x0

    .line 662
    .end local v19           #c:Landroid/database/Cursor;
    :cond_31
    sget-boolean v2, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MeetingInvitation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "< create_CalendarEvent: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v44

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    .restart local v29       #cv:Landroid/content/ContentValues;
    .restart local v40       #i:I
    .restart local v42       #insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v54       #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :pswitch_0
    :try_start_f
    const-string v2, "attendeeStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_d

    .line 604
    .end local v29           #cv:Landroid/content/ContentValues;
    .end local v40           #i:I
    .end local v42           #insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v54           #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_2
    move-exception v2

    if-eqz v26, :cond_32

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_32

    .line 605
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 606
    const/16 v26, 0x0

    .line 604
    :cond_32
    throw v2

    .line 556
    .restart local v29       #cv:Landroid/content/ContentValues;
    .restart local v40       #i:I
    .restart local v42       #insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v54       #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :pswitch_1
    :try_start_10
    const-string v2, "attendeeStatus"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 559
    :pswitch_2
    const-string v2, "attendeeStatus"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 563
    :cond_33
    const-string v2, "attendeeStatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 582
    .restart local v8       #projAttendee:[Ljava/lang/String;
    .restart local v9       #whereAttendee:Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 590
    .end local v8           #projAttendee:[Ljava/lang/String;
    .end local v9           #whereAttendee:Ljava/lang/String;
    .end local v29           #cv:Landroid/content/ContentValues;
    :cond_35
    if-eqz v42, :cond_36

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 591
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/content/ContentValues;

    .line 592
    .local v30, cvs:[Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v48

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    if-nez v2, :cond_36

    .line 593
    const/4 v2, 0x0

    const-string v3, "create_CalendarEvent error: Error when adding Event Attendees"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .end local v30           #cvs:[Landroid/content/ContentValues;
    :cond_36
    if-eqz v54, :cond_37

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 599
    const-string v2, "com.android.calendar"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 604
    :cond_37
    if-eqz v26, :cond_2a

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 605
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10

    .line 636
    .end local v40           #i:I
    .end local v42           #insertAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v54           #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #queryString:Ljava/lang/String;
    .restart local v19       #c:Landroid/database/Cursor;
    .restart local v34       #duration:I
    .restart local v52       #type:I
    :cond_38
    const/16 v34, 0x0

    goto/16 :goto_11

    .line 652
    .end local v13           #queryString:Ljava/lang/String;
    .end local v34           #duration:I
    .end local v52           #type:I
    :catch_4
    move-exception v35

    .line 653
    .restart local v35       #e:Ljava/lang/Exception;
    :try_start_11
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 655
    if-eqz v19, :cond_31

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_31

    .line 656
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12

    .line 655
    .end local v35           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    if-eqz v19, :cond_39

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_39

    .line 656
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 657
    const/16 v19, 0x0

    .line 655
    :cond_39
    throw v2

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public create_iCalendar()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    sget-boolean v1, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MeetingInvitation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- create_iCalendar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    if-nez v1, :cond_3

    .line 117
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MeetingInvitation"

    const-string v2, "composeVCalendar error: parameter is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_2
    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    .line 121
    :cond_3
    iget v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_1
    new-instance v0, Lcom/htc/android/mail/meeting/iCalendarCreator;

    iget v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    iget-object v2, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/meeting/iCalendarCreator;-><init>(ILcom/htc/android/mail/meeting/MeetingRequest;)V

    .line 134
    .local v0, calendarCreator:Lcom/htc/android/mail/meeting/iCalendarCreator;
    invoke-virtual {v0}, Lcom/htc/android/mail/meeting/iCalendarCreator;->create_iCalendar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->iCalendar:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->iCalendar:Ljava/lang/String;

    goto :goto_0

    .line 128
    .end local v0           #calendarCreator:Lcom/htc/android/mail/meeting/iCalendarCreator;
    :pswitch_0
    iget v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    iget-object v2, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/meeting/MeetingUtil;->buildMeetingInfo(ILcom/htc/android/mail/meeting/MeetingRequest;Landroid/content/Context;)Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->meetingInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/meeting/MeetingRequest;->description:Ljava/lang/String;

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public create_meetingRespInTracking(Lcom/htc/android/mail/Account;J)J
    .locals 10
    .parameter "account"
    .parameter "eventId"

    .prologue
    const-wide/16 v3, 0x0

    .line 290
    sget-boolean v7, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MeetingInvitation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "> create_MeetingRespInTracking: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v7, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    if-eqz v7, :cond_1

    if-nez p1, :cond_3

    .line 292
    :cond_1
    sget-boolean v7, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "MeetingInvitation"

    const-string v8, "createMeetingRespInTracking error #1: parameter is null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_2
    :goto_0
    return-wide v3

    .line 294
    :cond_3
    iget-object v7, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v7, v7, Lcom/htc/android/mail/meeting/MeetingRequest;->uid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 295
    const-string v7, "MeetingInvitation"

    const-string v8, "createMeetingRespInTracking error #2: parameter is null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_4
    iget v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    .line 300
    .local v1, command:I
    const/4 v7, 0x5

    if-ne v1, v7, :cond_5

    .line 301
    const/4 v1, 0x2

    .line 304
    :cond_5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v2, cv:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 306
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v7, v7, Lcom/htc/android/mail/meeting/MeetingRequest;->uid:Ljava/lang/String;

    invoke-static {p1, v7, v5}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdByMailSvrId(Lcom/htc/android/mail/Account;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, collId:Ljava/lang/String;
    const-string v7, "_message"

    const-string v8, "0"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v7, "_collectionId"

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v7, "_uid"

    iget-object v8, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v8, v8, Lcom/htc/android/mail/meeting/MeetingRequest;->uid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v7, "_calendarEventId"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v7, "_meetingResp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v7, "_accountId"

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sEASTracking:Landroid/net/Uri;

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 314
    .local v6, uriId:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 316
    .local v3, id:J
    sget-boolean v7, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "MeetingInvitation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "< create_MeetingRespInTracking: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    return v0
.end method

.method public getMeetingRequest()Lcom/htc/android/mail/meeting/MeetingRequest;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    return-object v0
.end method

.method public get_iCalendar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->iCalendar:Ljava/lang/String;

    return-object v0
.end method

.method public notSendMeetingResponse(IJLcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;)V
    .locals 10
    .parameter "cmd"
    .parameter "messageId"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const-wide/16 v4, 0x0

    .line 188
    sget-boolean v1, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MeetingInvitation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> notSendMeetingResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    cmp-long v1, p2, v4

    if-lez v1, :cond_1

    if-nez p4, :cond_3

    .line 190
    :cond_1
    const-string v1, "MeetingInvitation"

    const-string v2, "notSendMeetingResponse error: parameter is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-static {p1, p4, p2, p3, v1}, Lcom/htc/android/mail/meeting/MeetingUtil;->getMeetingData(ILcom/htc/android/mail/Account;JLandroid/content/Context;)Lcom/htc/android/mail/meeting/MeetingRequest;

    move-result-object v7

    .line 195
    .local v7, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    if-nez v7, :cond_4

    .line 196
    const-string v1, "MeetingInvitation"

    const-string v2, "notSendMeetingResponse error: request is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/meeting/MeetingInvitation;->setCommand(I)V

    .line 201
    invoke-virtual {p0, v7}, Lcom/htc/android/mail/meeting/MeetingInvitation;->setRequest(Lcom/htc/android/mail/meeting/MeetingRequest;)V

    .line 204
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 206
    :cond_5
    invoke-virtual {p0, p4}, Lcom/htc/android/mail/meeting/MeetingInvitation;->update_CalendarEvent(Lcom/htc/android/mail/Account;)J

    .line 208
    :cond_6
    invoke-virtual {p0, p4, v4, v5}, Lcom/htc/android/mail/meeting/MeetingInvitation;->create_meetingRespInTracking(Lcom/htc/android/mail/Account;J)J

    move-result-wide v8

    .line 209
    .local v8, trackingId:J
    new-instance v0, Lcom/htc/android/mail/server/ExchangeServer;

    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/server/ExchangeServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 211
    .local v0, server:Lcom/htc/android/mail/server/ExchangeServer;
    :try_start_0
    invoke-virtual {p4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iget-object v3, p5, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    iget-object v4, v7, Lcom/htc/android/mail/meeting/MeetingRequest;->uid:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/server/ExchangeServer;->meetingResp(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_1
    sget-boolean v1, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MeetingInvitation"

    const-string v2, "< notSendMeetingResponse"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v6

    .line 213
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public saveReplyMeetingMail(JLcom/htc/android/mail/Account;Lcom/htc/android/mail/meeting/MeetingRequest;)J
    .locals 19
    .parameter "messageId"
    .parameter "account"
    .parameter "request"

    .prologue
    .line 221
    sget-boolean v16, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v16, :cond_0

    const-string v16, "MeetingInvitation"

    const-string v17, "> saveMeetingMail"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v16, p1, v16

    if-lez v16, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_3

    .line 223
    :cond_1
    const-string v16, "MeetingInvitation"

    const-string v17, "saveMeetingMail error: parameter is null"

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-wide/16 v8, 0x0

    .line 285
    :cond_2
    :goto_0
    return-wide v8

    .line 227
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 230
    .local v11, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v3, cv:Landroid/content/ContentValues;
    const-string v16, "_smartCommand"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/meeting/MeetingUtil;->meetingCmd2SmartCommand(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v16, "_from"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v16, "_fromEmail"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v16, "_subject"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->subject:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v16, "_account"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v16, "_read"

    const-string v17, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v16, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    const-string v16, "_internaldate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const-string v16, "_mailboxId"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    const-string v16, "_notaddTrack"

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v16, "_messageClass"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->messageClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v16, "_allDayEvent"

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->allDayEvent:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 243
    const-string v16, "_responseRequested"

    const-string v17, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v16, "_sensitivity"

    const-string v17, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v16, "_synckey"

    const-string v17, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v16, "_location"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->location:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v16, "_globalObjId"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v16, "_refMsgId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    const-string v16, "_done"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->createString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, attendee:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->createString(Lcom/htc/android/mail/meeting/MeetingRequest$Person;)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, organizer:Ljava/lang/String;
    const-string v16, "_to"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v16, "_organizer"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneStartTime()Landroid/text/format/Time;

    move-result-object v12

    .line 257
    .local v12, startTime:Landroid/text/format/Time;
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/meeting/MeetingRequest;->getCloneEndTime()Landroid/text/format/Time;

    move-result-object v6

    .line 258
    .local v6, endTime:Landroid/text/format/Time;
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/meeting/MeetingRequest;->getDTStampTime()Landroid/text/format/Time;

    move-result-object v5

    .line 259
    .local v5, dtstamp:Landroid/text/format/Time;
    invoke-static {v12}, Lcom/htc/android/mail/meeting/MeetingUtil;->TimeToStringRFC3339(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v15

    .line 260
    .local v15, strStart:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/meeting/MeetingUtil;->TimeToStringRFC3339(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v14

    .line 261
    .local v14, strEnd:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/meeting/MeetingUtil;->TimeToStringRFC3339(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v13

    .line 262
    .local v13, strDTStamp:Ljava/lang/String;
    const-string v16, "_startTime"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v16, "_endTime"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v16, "_dtstamp"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v16, "_retryCount"

    sget v17, Lcom/htc/android/mail/meeting/MeetingInvitation;->RETRY_COUNT:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    sget-object v16, Lcom/htc/android/mail/MailProvider;->sEASMessagesURI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 272
    .local v7, id:Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 275
    .local v8, nId:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v4, cvParts:Landroid/content/ContentValues;
    const-string v16, "_mimetype"

    const-string v17, "VCALENDAR"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v16, "_text"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->iCalendar:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v16, "_uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v16, "_contenttype"

    sget v17, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v16, "_message"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v16, "_account"

    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v16, Lcom/htc/android/mail/MailProvider;->sEASPartsURI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 284
    sget-boolean v16, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v16, :cond_2

    const-string v16, "MeetingInvitation"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "< saveMeetingMail: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendNoCommentMeetingResp(IJLcom/htc/android/mail/Account;)J
    .locals 11
    .parameter "cmd"
    .parameter "messageId"
    .parameter "account"

    .prologue
    const-wide/16 v6, 0x0

    .line 147
    sget-boolean v8, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MeetingInvitation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "> sendNoCommentMeetingResp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    cmp-long v8, p2, v6

    if-lez v8, :cond_1

    if-nez p4, :cond_3

    .line 149
    :cond_1
    const-string v8, "MeetingInvitation"

    const-string v9, "sendNoCommentMeetingResp error: parameter is null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v6

    .line 177
    :cond_2
    :goto_0
    return-wide v2

    .line 153
    :cond_3
    iget-object v8, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-static {p1, p4, p2, p3, v8}, Lcom/htc/android/mail/meeting/MeetingUtil;->getMeetingData(ILcom/htc/android/mail/Account;JLandroid/content/Context;)Lcom/htc/android/mail/meeting/MeetingRequest;

    move-result-object v1

    .line 154
    .local v1, request:Lcom/htc/android/mail/meeting/MeetingRequest;
    if-nez v1, :cond_4

    .line 155
    const-string v8, "MeetingInvitation"

    const-string v9, "sendNoCommentMeetingResp error: request is null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v6

    .line 156
    goto :goto_0

    .line 159
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/meeting/MeetingInvitation;->setCommand(I)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/meeting/MeetingInvitation;->setRequest(Lcom/htc/android/mail/meeting/MeetingRequest;)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/android/mail/meeting/MeetingInvitation;->create_iCalendar()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, iCalendar:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 164
    const-string v8, "MeetingInvitation"

    const-string v9, "sendNoCommentMeetingResp error: iCalendar is null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v6

    .line 165
    goto :goto_0

    .line 169
    :cond_5
    const/4 v8, 0x1

    if-eq p1, v8, :cond_6

    const/4 v8, 0x2

    if-ne p1, v8, :cond_7

    .line 171
    :cond_6
    invoke-virtual {p0, p4}, Lcom/htc/android/mail/meeting/MeetingInvitation;->update_CalendarEvent(Lcom/htc/android/mail/Account;)J

    .line 173
    :cond_7
    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/htc/android/mail/meeting/MeetingInvitation;->saveReplyMeetingMail(JLcom/htc/android/mail/Account;Lcom/htc/android/mail/meeting/MeetingRequest;)J

    move-result-wide v2

    .line 174
    .local v2, sendMegId:J
    invoke-virtual {p0, p4, v6, v7}, Lcom/htc/android/mail/meeting/MeetingInvitation;->create_meetingRespInTracking(Lcom/htc/android/mail/Account;J)J

    move-result-wide v4

    .line 176
    .local v4, trackingId:J
    sget-boolean v6, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MeetingInvitation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "< sendNoCommentMeetingResp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCommand(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 73
    sget-boolean v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MeetingInvitation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    .line 75
    return-void
.end method

.method public setRequest(Lcom/htc/android/mail/meeting/MeetingRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 88
    if-nez p1, :cond_1

    .line 89
    sget-boolean v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MeetingInvitation"

    const-string v1, "setMeetingRequest error"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    goto :goto_0
.end method

.method public update_CalendarEvent(Lcom/htc/android/mail/Account;)J
    .locals 30
    .parameter "account"

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    if-nez v3, :cond_1

    .line 671
    const-string v3, "MeetingInvitation"

    const-string v6, "update_CalendarEvent error #1"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-wide/16 v22, -0x1

    .line 769
    :cond_0
    :goto_0
    return-wide v22

    .line 673
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v3, v3, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 674
    const-string v3, "MeetingInvitation"

    const-string v6, "update_CalendarEvent error #2"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-wide/16 v22, -0x1

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 677
    const-string v3, "MeetingInvitation"

    const-string v6, "update_CalendarEvent error #3"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-wide/16 v22, -0x1

    goto :goto_0

    .line 681
    :cond_3
    sget-boolean v3, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MeetingInvitation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "> update_CalendarEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v7, v7, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_4
    const-wide/16 v22, -0x1

    .line 684
    .local v22, eventId:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mCommand:I

    invoke-static {v3}, Lcom/htc/android/mail/meeting/iCalendarBase;->getCalendarAttendeeStatus(I)I

    move-result v26

    .line 685
    .local v26, resp:I
    const/16 v17, 0x0

    .line 686
    .local v17, curEvent:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 687
    .local v16, curAttendee:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 689
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "calendar_id=\'%s\' AND iCalGUID=\'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-static {v10, v0, v1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getCalenderIdByAccountId(Landroid/content/Context;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v10, v10, Lcom/htc/android/mail/meeting/MeetingRequest;->globalObjId:Ljava/lang/String;

    aput-object v10, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, whereEvent:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    .line 694
    .local v4, proEvent:[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 695
    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 696
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 697
    sget-boolean v3, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MeetingInvitation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update_CalendarEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v3, v22, v6

    if-gtz v3, :cond_7

    .line 700
    const-wide/16 v22, -0x1

    .line 760
    .end local v22           #eventId:J
    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 761
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_6
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 706
    .restart local v22       #eventId:J
    :cond_7
    :try_start_1
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 707
    .local v19, cvEvent:Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/meeting/MeetingInvitation;->mRequest:Lcom/htc/android/mail/meeting/MeetingRequest;

    iget-object v6, v6, Lcom/htc/android/mail/meeting/MeetingRequest;->subject:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v3, "selfAttendeeStatus"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 711
    .local v14, builder:Landroid/net/Uri$Builder;
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 712
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 723
    const/4 v13, 0x0

    .line 724
    .local v13, attendeeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v27, updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "event_id=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "attendeeEmail=\'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 727
    .local v9, whereAttendee:Ljava/lang/String;
    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v8, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 728
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 729
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #attendeeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .restart local v13       #attendeeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 734
    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_c

    .line 735
    :cond_a
    const-wide/16 v22, -0x1

    .line 760
    .end local v22           #eventId:J
    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 761
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_b
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 738
    .restart local v22       #eventId:J
    :cond_c
    :try_start_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 739
    .local v25, idItem:Ljava/lang/Long;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 740
    .local v18, cvAttendee:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 741
    const-string v3, "attendeeStatus"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 744
    .local v12, attendeeBuilder:Landroid/net/Uri$Builder;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 745
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 746
    .local v15, cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 747
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 760
    .end local v4           #proEvent:[Ljava/lang/String;
    .end local v5           #whereEvent:Ljava/lang/String;
    .end local v9           #whereAttendee:Ljava/lang/String;
    .end local v12           #attendeeBuilder:Landroid/net/Uri$Builder;
    .end local v13           #attendeeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v14           #builder:Landroid/net/Uri$Builder;
    .end local v15           #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v18           #cvAttendee:Landroid/content/ContentValues;
    .end local v19           #cvEvent:Landroid/content/ContentValues;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v25           #idItem:Ljava/lang/Long;
    .end local v27           #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_d

    .line 761
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_d
    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_e

    .line 764
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 760
    :cond_e
    throw v3

    .line 750
    .restart local v4       #proEvent:[Ljava/lang/String;
    .restart local v5       #whereEvent:Ljava/lang/String;
    .restart local v9       #whereAttendee:Ljava/lang/String;
    .restart local v13       #attendeeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v14       #builder:Landroid/net/Uri$Builder;
    .restart local v19       #cvEvent:Landroid/content/ContentValues;
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v27       #updateAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f
    if-eqz v27, :cond_10

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_10

    .line 752
    :try_start_4
    const-string v3, "com.android.calendar"

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 760
    :cond_10
    :goto_3
    if-eqz v17, :cond_11

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_11

    .line 761
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_11
    if-eqz v16, :cond_12

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_12

    .line 764
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_12
    sget-boolean v3, Lcom/htc/android/mail/meeting/MeetingInvitation;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MeetingInvitation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "< update_CalendarEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    :catch_0
    move-exception v20

    .line 754
    .local v20, e1:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 755
    .end local v20           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v21

    .line 756
    .local v21, e2:Landroid/content/OperationApplicationException;
    invoke-virtual/range {v21 .. v21}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
