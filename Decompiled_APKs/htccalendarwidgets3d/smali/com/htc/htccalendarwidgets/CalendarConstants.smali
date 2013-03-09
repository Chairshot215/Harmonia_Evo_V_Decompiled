.class public Lcom/htc/htccalendarwidgets/CalendarConstants;
.super Ljava/lang/Object;
.source "CalendarConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_HTC_EAS:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static final ACTION_CALENDARS_PICKER_CHANGED:Ljava/lang/String; = "action.calendars.picker.changed"

.field public static final ACTION_CUSOMIZATION:Ljava/lang/String; = "com.htc.calendar.ACTION_CUSTOMIZATION"

.field public static final AGENDA_SORT_ORDER:Ljava/lang/String; = "startDay ASC, begin ASC, title ASC"

.field public static final ALL_CALENDAR_SELECTED:I = 0x0

.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final COLOR_OFFSET_REST:I = 0x20

.field public static DEFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String; = null

.field public static final DayEventListURI:Ljava/lang/String; = "content://com.android.calendar/day-events-list/"

.field public static final DetailEventURI:Ljava/lang/String; = "content://com.android.calendar/events/"

.field public static final EditEvent:Ljava/lang/String; = "vnd.android.cursor.item/event"

.field public static final EventTimeURI:Ljava/lang/String; = "EventTime"

.field private static final HIGH_ALPHA:I = -0x1000000

.field public static final HVGA:I = 0x2

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_END_MINUTE:I = 0xd

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_FACEBOOK_AVATAR_LARGE:I = 0x10

.field public static final INDEX_FACEBOOK_AVATAR_SMALL:I = 0x11

.field public static final INDEX_FACEBOOK_SOURCE_ID:I = 0xe

.field public static final INDEX_FACEBOOK_TYPE:I = 0xf

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_START_MINUTE:I = 0xc

.field public static final INDEX_TITLE:I = 0x1

.field public static final INSTANCES_PROJ:[Ljava/lang/String; = null

.field static final KEY_HIDE_DECLINED:Ljava/lang/String; = "preferences_hide_declined"

.field public static final KEY_SELECTED_ID:Ljava/lang/String; = "selected_id"

.field private static final LOG_TAG:Ljava/lang/String; = "HTCWidget_CalendarWidgets_CalendarConstants"

.field private static final LOW_ALPHA:I = -0x57000000

.field private static final MED_ALPHA:I = -0x4c000000

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field public static final PACKAGE_NAME_EXCHANGE:Ljava/lang/String; = "com.htc.android.mail"

.field public static final PACKAGE_NAME_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final PACKAGE_NAME_GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field public static final PACKAGE_NAME_PCSC:Ljava/lang/String; = "com.htc.android.psclient"

.field public static final QHD:I = 0x5

.field public static final QVGA:I = 0x0

.field public static final SEPARATE_SYMBOL:Ljava/lang/String; = "#"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.htc.htccalendarwidgets.calendar_preferences"

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_DAY:I = 0x0

.field public static final TYPE_LAST:I = 0x2

.field public static final TYPE_MEETING:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final WQVGA:I = 0x1

.field public static final WSVGA:I = 0x4

.field public static final WVGA:I = 0x3

.field public static exchange_acnt_name:Ljava/lang/String;

.field private static mTodayJulianDay:I

.field public static final sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

.field public static final sDefaultAvatar:Landroid/graphics/Bitmap;

.field public static system_date_format:Ljava/lang/String;

.field public static system_date_format_short:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 40
    const-string v0, "HtcCalendarWidgets_CalendarConstants"

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->TAG:Ljava/lang/String;

    .line 75
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_avatar_large"

    aput-object v2, v0, v1

    const-string v1, "facebook_avatar_small"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->INSTANCES_PROJ:[Ljava/lang/String;

    .line 131
    const-string v0, "EE, MMM d"

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String;

    .line 132
    const-string v0, "EE, MMM d, yyyy"

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->DEFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 133
    const-string v0, ""

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->exchange_acnt_name:Ljava/lang/String;

    .line 138
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20800c2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->sDefaultAvatar:Landroid/graphics/Bitmap;

    .line 140
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 142
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v1, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->sDefaultAvatar:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iput v2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 144
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    sget-object v1, Lcom/htc/htccalendarwidgets/CalendarConstants;->sDefaultAvatar:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 145
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput v3, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 146
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20802f4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustStartTime(J)J
    .locals 7
    .parameter "startTime"

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x0

    .line 499
    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 501
    .local v1, newStart:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 504
    iput v5, v1, Landroid/text/format/Time;->second:I

    .line 505
    iget v0, v1, Landroid/text/format/Time;->minute:I

    .line 506
    .local v0, minute:I
    if-lez v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 507
    iput v6, v1, Landroid/text/format/Time;->minute:I

    .line 512
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2

    .line 509
    :cond_0
    iput v5, v1, Landroid/text/format/Time;->minute:I

    .line 510
    iget v2, v1, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public static correctNewEventStartTime(ZJ)J
    .locals 17
    .parameter "correctDate"
    .parameter "needFixTime"

    .prologue
    .line 471
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 472
    .local v2, alreadyFixTime:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 474
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 475
    .local v16, now:Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 478
    move-object/from16 v0, v16

    iget v5, v0, Landroid/text/format/Time;->hour:I

    .line 479
    .local v5, hour:I
    move-object/from16 v0, v16

    iget v4, v0, Landroid/text/format/Time;->minute:I

    .line 480
    .local v4, minute:I
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->second:I

    .line 483
    .local v3, second:I
    move-object/from16 v0, v16

    iget v8, v0, Landroid/text/format/Time;->year:I

    .line 484
    .local v8, year:I
    move-object/from16 v0, v16

    iget v7, v0, Landroid/text/format/Time;->month:I

    .line 485
    .local v7, month:I
    move-object/from16 v0, v16

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    .line 487
    .local v6, day:I
    if-eqz p0, :cond_0

    .line 488
    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 494
    :goto_0
    sget-object v9, Lcom/htc/htccalendarwidgets/CalendarConstants;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "correctNewEventStartTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/htc/htccalendarwidgets/CalendarConstants;->adjustStartTime(J)J

    move-result-wide v9

    return-wide v9

    .line 490
    :cond_0
    iget v13, v2, Landroid/text/format/Time;->monthDay:I

    iget v14, v2, Landroid/text/format/Time;->month:I

    iget v15, v2, Landroid/text/format/Time;->year:I

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0
.end method

.method public static fetchSystemDateFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format:Ljava/lang/String;

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format_short:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 300
    if-nez p0, :cond_0

    .line 301
    const-string v2, ""

    .line 314
    :goto_0
    return-object v2

    .line 304
    :cond_0
    const-string v2, ""

    .line 307
    .local v2, strReturn:Ljava/lang/String;
    cmp-long v3, p1, p3

    if-nez v3, :cond_1

    .line 308
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, strBegin:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, strEnd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 320
    invoke-static/range {p0 .. p5}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange_HTC(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDateRange_HTC(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 324
    if-nez p0, :cond_0

    .line 325
    const-string v6, ""

    .line 353
    :goto_0
    return-object v6

    .line 327
    :cond_0
    const/4 v0, 0x1

    .line 328
    .local v0, FORMAT_SHOW_TIME:I
    const/4 v1, 0x2

    .line 329
    .local v1, FORMAT_SHOW_WEEKDAY:I
    and-int/lit8 v7, p5, 0x1

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .line 330
    .local v2, showTime:Z
    :goto_1
    and-int/lit8 v7, p5, 0x2

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    .line 331
    .local v3, showWeekDay:Z
    :goto_2
    const-string v6, ""

    .line 333
    .local v6, strReturn:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 335
    cmp-long v7, p1, p3

    if-nez v7, :cond_3

    .line 336
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 329
    .end local v2           #showTime:Z
    .end local v3           #showWeekDay:Z
    .end local v6           #strReturn:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 330
    .restart local v2       #showTime:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 338
    .restart local v3       #showWeekDay:Z
    .restart local v6       #strReturn:Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, strBegin:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, strEnd:Ljava/lang/String;
    sub-long v7, p3, p1

    const-wide/32 v9, 0x5265c00

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-static {p1, p2, v8}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getDateString(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-static {p3, p4, v8}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getDateString(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 346
    goto/16 :goto_0

    .line 347
    .end local v4           #strBegin:Ljava/lang/String;
    .end local v5           #strEnd:Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    .line 348
    invoke-static/range {p0 .. p5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 351
    :cond_6
    const/4 v7, 0x1

    invoke-static {p1, p2, v7}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getDateString(JZ)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static getAppNameByAccountType(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "activity"
    .parameter "type"

    .prologue
    .line 425
    const-string v0, ""

    .line 426
    .local v0, appName:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_0
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_1
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_2
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    :cond_3
    return-object v0
.end method

.method public static getColorChip(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "color"

    .prologue
    .line 163
    const v5, 0xffffff

    and-int/2addr p0, v5

    .line 164
    add-int/lit8 p0, p0, 0x20

    .line 165
    const/high16 v5, -0x100

    or-int v4, p0, v5

    .line 166
    .local v4, startColor:I
    const/high16 v5, -0x4c00

    or-int v3, p0, v5

    .line 167
    .local v3, middleColor:I
    const/high16 v5, -0x5700

    or-int v2, p0, v5

    .line 172
    .local v2, endColor:I
    const/4 v5, 0x2

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    aput v2, v0, v5

    .line 173
    .local v0, colors:[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 175
    .local v1, d:Landroid/graphics/drawable/GradientDrawable;
    return-object v1
.end method

.method public static getColorChipBitmap(III)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 179
    add-int/lit8 p2, p2, 0x20

    .line 181
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 183
    return-object v0
.end method

.method private static getDateString(JZ)Ljava/lang/String;
    .locals 3
    .parameter "begin"
    .parameter "fully_date_format"

    .prologue
    .line 358
    const-string v0, ""

    .line 359
    .local v0, date_format:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 360
    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->DEFAULT_DATE_FORMAT:Ljava/lang/String;

    sput-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format:Ljava/lang/String;

    .line 363
    :cond_0
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format:Ljava/lang/String;

    .line 371
    :goto_0
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 373
    .local v1, resultDateFormat:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 365
    .end local v1           #resultDateFormat:Ljava/lang/CharSequence;
    :cond_1
    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format_short:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String;

    sput-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format_short:Ljava/lang/String;

    .line 368
    :cond_2
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants;->system_date_format_short:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDateString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 19
    .parameter "context"
    .parameter "jDay"

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 272
    .local v14, now:J
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 273
    .local v18, time:Landroid/text/format/Time;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 274
    move-object/from16 v0, v18

    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v14, v15, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sput v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->mTodayJulianDay:I

    .line 277
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v3

    .line 279
    .local v3, millis:J
    const/16 v13, 0x14

    .line 280
    .local v13, rightFlags:I
    const/4 v7, 0x2

    .line 282
    .local v7, leftFlag:I
    const-string v16, ""

    .line 283
    .local v16, strLeft:Ljava/lang/String;
    const-string v17, ""

    .line 285
    .local v17, strRight:Ljava/lang/String;
    sget v2, Lcom/htc/htccalendarwidgets/CalendarConstants;->mTodayJulianDay:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v2, p0

    move-wide v5, v3

    invoke-static/range {v2 .. v7}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, p0

    move-wide v9, v3

    move-wide v11, v3

    .line 289
    invoke-static/range {v8 .. v13}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v2, p0

    move-wide v5, v3

    .line 292
    invoke-static/range {v2 .. v7}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, p0

    move-wide v9, v3

    move-wide v11, v3

    .line 294
    invoke-static/range {v8 .. v13}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getResolution(II)I
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0x190

    const/4 v0, 0x5

    const/16 v3, 0x1e0

    const/16 v2, 0x140

    const/16 v1, 0xf0

    .line 195
    if-ne p0, v1, :cond_0

    if-eq p1, v2, :cond_1

    :cond_0
    if-ne p0, v2, :cond_3

    if-ne p1, v1, :cond_3

    .line 197
    :cond_1
    const/4 v0, 0x0

    .line 214
    :cond_2
    :goto_0
    return v0

    .line 198
    :cond_3
    if-ne p0, v1, :cond_4

    if-eq p1, v4, :cond_5

    :cond_4
    if-ne p0, v4, :cond_6

    if-ne p1, v1, :cond_6

    .line 200
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_6
    if-ne p0, v2, :cond_7

    if-eq p1, v3, :cond_8

    :cond_7
    if-ne p0, v3, :cond_9

    if-ne p1, v2, :cond_9

    .line 203
    :cond_8
    const/4 v0, 0x2

    goto :goto_0

    .line 204
    :cond_9
    if-ne p0, v3, :cond_a

    const/16 v1, 0x320

    if-eq p1, v1, :cond_b

    :cond_a
    const/16 v1, 0x320

    if-ne p0, v1, :cond_c

    if-ne p1, v3, :cond_c

    .line 206
    :cond_b
    const/4 v0, 0x3

    goto :goto_0

    .line 207
    :cond_c
    const/16 v1, 0x258

    if-ne p0, v1, :cond_d

    const/16 v1, 0x400

    if-eq p1, v1, :cond_e

    :cond_d
    const/16 v1, 0x400

    if-ne p0, v1, :cond_f

    const/16 v1, 0x258

    if-ne p1, v1, :cond_f

    .line 209
    :cond_e
    const/4 v0, 0x4

    goto :goto_0

    .line 210
    :cond_f
    const/16 v1, 0x21c

    if-ne p0, v1, :cond_10

    const/16 v1, 0x3c0

    if-eq p1, v1, :cond_2

    :cond_10
    const/16 v1, 0x3c0

    if-ne p0, v1, :cond_2

    const/16 v1, 0x21c

    if-ne p1, v1, :cond_2

    goto :goto_0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 408
    invoke-static {p0}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 421
    const-string v0, "com.htc.htccalendarwidgets.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSpecifiedContactInfo(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "contactid"

    .prologue
    .line 241
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    .local v1, peopleUri:Landroid/net/Uri;
    const-wide/16 v8, -0x1

    .line 244
    .local v8, photo_id:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 252
    :cond_0
    if-eqz v6, :cond_1

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-wide v8

    .line 256
    :catch_0
    move-exception v7

    .line 258
    .local v7, e:Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method public static isEnableSkin()Z
    .locals 1

    .prologue
    .line 230
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 236
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 233
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static isEnableTheme()Z
    .locals 1

    .prologue
    .line 218
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 225
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 222
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 383
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 384
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 386
    if-eqz p4, :cond_0

    .line 387
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 392
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 394
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-ltz v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gtz v4, :cond_1

    .line 395
    const/4 v4, 0x1

    .line 398
    :goto_1
    return v4

    .line 389
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 398
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 459
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 466
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 464
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 459
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static launchEditEventIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 516
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/htc/htccalendarwidgets/CalendarConstants;->correctNewEventStartTime(ZJ)J

    move-result-wide v3

    .line 517
    .local v3, startMillis:J
    const-wide/32 v5, 0x36ee80

    add-long v0, v3, v5

    .line 518
    .local v0, endMillis:J
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.item/event"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v5, "beginTime"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 521
    const-string v5, "endTime"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 522
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    return-object v2
.end method

.method public static parseUri(Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;JJJ)Landroid/net/Uri;
    .locals 4
    .parameter "type"
    .parameter "event_id"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;->DAY_EVENT_LIST:Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;

    if-ne p0, v2, :cond_1

    .line 444
    const-string v0, "content://com.android.calendar/day-events-list/"

    .line 445
    .local v0, local_uri:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 455
    .end local v0           #local_uri:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 447
    :cond_1
    sget-object v2, Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;->DETAIL_EVENT:Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;

    if-ne p0, v2, :cond_0

    .line 448
    const-string v0, "content://com.android.calendar/events/"

    .line 449
    .restart local v0       #local_uri:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EventTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 413
    invoke-static {p0}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 414
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method

.method public static stringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "list"

    .prologue
    .line 402
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
