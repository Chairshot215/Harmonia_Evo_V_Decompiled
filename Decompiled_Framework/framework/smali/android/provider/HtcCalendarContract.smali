.class public Landroid/provider/HtcCalendarContract;
.super Ljava/lang/Object;
.source "HtcCalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcCalendarContract$EventsRawTimes;,
        Landroid/provider/HtcCalendarContract$EventsRawTimesColumns;,
        Landroid/provider/HtcCalendarContract$SyncState;,
        Landroid/provider/HtcCalendarContract$ExtendedProperties;,
        Landroid/provider/HtcCalendarContract$ExtendedPropertiesColumns;,
        Landroid/provider/HtcCalendarContract$Colors;,
        Landroid/provider/HtcCalendarContract$ColorsColumns;,
        Landroid/provider/HtcCalendarContract$CalendarAlerts;,
        Landroid/provider/HtcCalendarContract$CalendarAlertsColumns;,
        Landroid/provider/HtcCalendarContract$Reminders;,
        Landroid/provider/HtcCalendarContract$RemindersColumns;,
        Landroid/provider/HtcCalendarContract$EventDays;,
        Landroid/provider/HtcCalendarContract$EventDaysColumns;,
        Landroid/provider/HtcCalendarContract$CalendarMetaData;,
        Landroid/provider/HtcCalendarContract$CalendarMetaDataColumns;,
        Landroid/provider/HtcCalendarContract$CalendarCache;,
        Landroid/provider/HtcCalendarContract$CalendarCacheColumns;,
        Landroid/provider/HtcCalendarContract$Instances;,
        Landroid/provider/HtcCalendarContract$Events;,
        Landroid/provider/HtcCalendarContract$EventsEntity;,
        Landroid/provider/HtcCalendarContract$EventsColumns;,
        Landroid/provider/HtcCalendarContract$Attendees;,
        Landroid/provider/HtcCalendarContract$AttendeesColumns;,
        Landroid/provider/HtcCalendarContract$Calendars;,
        Landroid/provider/HtcCalendarContract$CalendarEntity;,
        Landroid/provider/HtcCalendarContract$CalendarColumns;,
        Landroid/provider/HtcCalendarContract$SyncColumns;,
        Landroid/provider/HtcCalendarContract$CalendarSyncColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_LOCAL:Ljava/lang/String; = "LOCAL"

.field public static final ACTION_EVENT_REMINDER:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final EXTRA_EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EXTRA_EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field private static final TAG:Ljava/lang/String; = "HtcCalendar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcCalendarContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
