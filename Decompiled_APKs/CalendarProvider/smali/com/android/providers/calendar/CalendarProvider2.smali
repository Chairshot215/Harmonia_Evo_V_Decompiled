.class public Lcom/android/providers/calendar/CalendarProvider2;
.super Lcom/android/providers/calendar/SQLiteContentProvider;
.source "CalendarProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;,
        Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;,
        Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;,
        Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_INDEX:I = 0x0

.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final ACCOUNT_SELECTION_PREFIX:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final ACCOUNT_TYPE_INDEX:I = 0x1

.field private static final ALLDAY_DTEND_INDEX:I = 0x2

.field private static final ALLDAY_DTSTART_INDEX:I = 0x1

.field private static final ALLDAY_DURATION_INDEX:I = 0x3

.field private static final ALLDAY_ID_INDEX:I = 0x0

.field private static final ALLDAY_TIME_PROJECTION:[Ljava/lang/String; = null

.field private static final ALLOWED_IN_EXCEPTION:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTENDEES:I = 0x6

.field private static final ATTENDEES_EMAIL_CONCAT:Ljava/lang/String; = "group_concat(attendeeEmail)"

.field private static final ATTENDEES_ID:I = 0x7

.field private static final ATTENDEES_NAME_CONCAT:Ljava/lang/String; = "group_concat(attendeeName)"

.field private static final CALENDARS:I = 0x4

.field private static final CALENDARS_ID:I = 0x5

.field private static final CALENDARS_INDEX_ID:I = 0x0

.field private static final CALENDAR_ALERTS:I = 0xc

.field private static final CALENDAR_ALERTS_BY_INSTANCE:I = 0xe

.field private static final CALENDAR_ALERTS_ID:I = 0xd

.field private static final CALENDAR_ENTITIES:I = 0x18

.field private static final CALENDAR_ENTITIES_ID:I = 0x19

.field private static final CALENDAR_SMS_ALERTS:I = 0x22

.field private static final CALENDAR_SMS_ALERTS_BY_INSTANCE:I = 0x24

.field private static final CALENDAR_SMS_ALERTS_ID:I = 0x23

.field private static final COLORS:I = 0x21

.field private static final COLORS_ACCOUNT_NAME_INDEX:I = 0x0

.field private static final COLORS_ACCOUNT_TYPE_INDEX:I = 0x1

.field private static final COLORS_COLOR_INDEX:I = 0x4

.field private static final COLORS_COLOR_INDEX_INDEX:I = 0x3

.field private static final COLORS_COLOR_TYPE_INDEX:I = 0x2

.field private static final COLORS_PROJECTION:[Ljava/lang/String; = null

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEBUG:Z = false

.field private static final DEBUG_EXCEPTION:Z = false

.field static final DEBUG_INSTANCES:Z = false

.field private static final DELETED_EVENTS:I = 0x20

.field private static final DONT_CLONE_INTO_EXCEPTION:[Ljava/lang/String; = null

.field private static final EMMA:I = 0x1f

.field private static final EVENTS:I = 0x1

.field private static final EVENTS_ID:I = 0x2

.field private static final EVENTS_ORIGINAL_ID_INDEX:I = 0x3

.field private static final EVENTS_ORIGINAL_SYNC_ID_INDEX:I = 0x4

.field private static final EVENTS_PROJECTION:[Ljava/lang/String; = null

.field private static final EVENTS_RDATE_INDEX:I = 0x2

.field private static final EVENTS_RRULE_INDEX:I = 0x1

.field private static final EVENTS_SYNC_ID_INDEX:I = 0x0

.field private static final EVENT_CALENDAR_ID:I = 0x5

.field private static final EVENT_DAYS:I = 0x14

.field private static final EVENT_ENTITIES:I = 0x12

.field private static final EVENT_ENTITIES_ID:I = 0x13

.field private static final EVENT_ID_INDEX:I = 0x1

.field private static final EXCEPTION_ID:I = 0x1d

.field private static final EXCEPTION_ID2:I = 0x1e

.field private static final EXTENDED_PROPERTIES:I = 0xa

.field private static final EXTENDED_PROPERTIES_ID:I = 0xb

.field protected static final EXT_PROP_ORIGINAL_TIMEZONE:Ljava/lang/String; = "CalendarSyncAdapter#originalTimezone"

.field private static final GENERIC_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final GENERIC_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final GENERIC_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final GENERIC_ID:Ljava/lang/String; = "_id"

.field protected static final HOOK_CALENDARS_ID:I = 0x5

.field protected static final HOOK_CALENDAR_ALERTS:I = 0xc

.field protected static final HOOK_CALENDAR_ALERTS_BY_INSTANCE:I = 0xe

.field protected static final HOOK_INSTANCES:I = 0x3

.field protected static final HOOK_INSTANCES_BY_DAY:I = 0xf

.field protected static final HOOK_REMINDERS:I = 0x8

.field private static final ID_INDEX:I = 0x0

.field private static final ID_ONLY_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final INSTANCES:I = 0x3

.field private static final INSTANCES_BY_DAY:I = 0xf

.field private static final INSTANCES_INDEX_ALL_DAY:I = 0x4

.field private static final INSTANCES_INDEX_END_DAY:I = 0x1

.field private static final INSTANCES_INDEX_END_MINUTE:I = 0x3

.field private static final INSTANCES_INDEX_START_DAY:I = 0x0

.field private static final INSTANCES_INDEX_START_MINUTE:I = 0x2

.field private static final INSTANCES_SEARCH:I = 0x1a

.field private static final INSTANCES_SEARCH_BY_DAY:I = 0x1b

.field private static final INSTANCE_QUERY_TABLES:Ljava/lang/String; = "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

.field private static final INSTANCE_SEARCH_QUERY_TABLES:Ljava/lang/String; = "(Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)) LEFT OUTER JOIN Attendees ON (Attendees.event_id=Events._id)"

.field protected static final MINIMUM_EXPANSION_SPAN:J = 0x13f4a4800L

.field private static final MULTIPLE_ATTENDEES_PER_EVENT:Z = true

.field protected static final PROFILE:Z = false

.field private static final PROVIDER_PROPERTIES:I = 0x1c

.field private static final PROVIDER_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String; = null

.field private static final REMINDERS:I = 0x8

.field private static final REMINDERS_ID:I = 0x9

.field private static final SCHEDULE_ALARM:I = 0x15

.field private static final SCHEDULE_ALARM_REMOVE:I = 0x16

.field private static final SEARCH_COLUMNS:[Ljava/lang/String; = null

.field private static final SEARCH_ESCAPE_CHAR:Ljava/lang/String; = "#"

.field private static final SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final SORT_CALENDAR_VIEW:Ljava/lang/String; = "begin ASC, end DESC, title ASC"

.field private static final SQL_DELETE_FROM_CALENDARS:Ljava/lang/String; = "DELETE FROM Calendars WHERE account_name=? AND account_type=?"

.field private static final SQL_DELETE_FROM_COLORS:Ljava/lang/String; = "DELETE FROM Colors WHERE account_name=? AND account_type=?"

.field private static final SQL_SELECT_COUNT_FOR_SYNC_ID:Ljava/lang/String; = "SELECT COUNT(*) FROM Events WHERE _sync_id=?"

.field private static final SQL_SELECT_EVENTSRAWTIMES:Ljava/lang/String; = "SELECT event_id, dtstart2445, dtend2445, eventTimezone FROM EventsRawTimes, Events WHERE event_id = Events._id"

.field private static final SQL_UPDATE_EVENT_SET_DIRTY:Ljava/lang/String; = "UPDATE Events SET dirty=1 WHERE _id=?"

.field private static final SQL_WHERE_ATTENDEES_ID:Ljava/lang/String; = "Attendees._id=? AND Events._id=Attendees.event_id AND Events.calendar_id=Calendars._id"

.field private static final SQL_WHERE_ATTENDEE_BASE:Ljava/lang/String; = "Events._id=Attendees.event_id AND Events.calendar_id=Calendars._id"

.field protected static final SQL_WHERE_CALENDAR_ALERT:Ljava/lang/String; = "view_events._id=CalendarAlerts.event_id"

.field protected static final SQL_WHERE_CALENDAR_ALERT_ID:Ljava/lang/String; = "view_events._id=CalendarAlerts.event_id AND CalendarAlerts._id=?"

.field private static final SQL_WHERE_CALENDAR_COLOR:Ljava/lang/String; = "account_name=? AND account_type=? AND calendar_color_index=?"

.field protected static final SQL_WHERE_CALENDAR_SMS_ALERT:Ljava/lang/String; = "view_events._id=CalendarSmsAlerts.event_id"

.field protected static final SQL_WHERE_CALENDAR_SMS_ALERT_ID:Ljava/lang/String; = "view_events._id=CalendarSmsAlerts.event_id AND CalendarSmsAlerts._id=?"

.field private static final SQL_WHERE_EVENT_COLOR:Ljava/lang/String; = "account_name=? AND account_type=? AND eventColor_index=?"

.field private static final SQL_WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"

.field private static final SQL_WHERE_EXTENDED_PROPERTIES_ID:Ljava/lang/String; = "ExtendedProperties._id=?"

.field protected static final SQL_WHERE_ID:Ljava/lang/String; = "_id=?"

.field private static final SQL_WHERE_INSTANCES_BETWEEN:Ljava/lang/String; = "begin<=? AND end>=?"

.field private static final SQL_WHERE_INSTANCES_BETWEEN_DAY:Ljava/lang/String; = "startDay<=? AND endDay>=?"

.field private static final SQL_WHERE_ORIGINAL_ID:Ljava/lang/String; = "original_id=?"

.field private static final SQL_WHERE_ORIGINAL_ID_NO_SYNC_ID:Ljava/lang/String; = "original_id=? AND _sync_id IS NULL"

.field private static final SQL_WHERE_REMINDERS_ID:Ljava/lang/String; = "Reminders._id=? AND Events._id=Reminders.event_id AND Events.calendar_id=Calendars._id"

.field private static final SYNCSTATE:I = 0x10

.field private static final SYNCSTATE_ID:I = 0x11

.field private static final SYNC_UPDATE_BROADCAST_TIMEOUT_MILLIS:J = 0x7530L

.field private static final SYNC_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "CalendarProvider2"

.field private static final TIME:I = 0x17

.field private static final TIMEZONE_GMT:Ljava/lang/String; = "GMT"

.field private static final TRANSACTION_DELETE:I = 0x3

.field private static final TRANSACTION_INSERT:I = 0x1

.field private static final TRANSACTION_QUERY:I = 0x0

.field private static final TRANSACTION_UPDATE:I = 0x2

.field private static final UPDATE_BROADCAST_MSG:I = 0x1

.field private static final UPDATE_BROADCAST_TIMEOUT_MILLIS:J = 0x3e8L

.field private static final exlusive_accounts:[Ljava/lang/String;

.field private static mInstance:Lcom/android/providers/calendar/CalendarProvider2;

.field private static final sAttendeesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sCalendarAlertsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarCacheProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarsIdProjection:[Ljava/lang/String;

.field private static final sColorsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCountProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEventEntitiesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sEventsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sInstancesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sInstancesSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;

.field private static final sRemindersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mBroadcastHandler:Landroid/os/Handler;

.field protected mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

.field protected mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMetaData:Lcom/android/providers/calendar/MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "rdate"

    aput-object v1, v0, v6

    const-string v1, "original_id"

    aput-object v1, v0, v7

    const-string v1, "original_sync_id"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "color_type"

    aput-object v1, v0, v6

    const-string v1, "color_index"

    aput-object v1, v0, v7

    const-string v1, "color"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    .line 147
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 158
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "event_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    .line 168
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "dtstart"

    aput-object v1, v0, v5

    const-string v1, "dtend"

    aput-object v1, v0, v6

    const-string v1, "duration"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    .line 295
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    .line 349
    const-string v0, "[^\\s\"\'.?!,]+|\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

    .line 366
    const-string v0, "([%_#])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    .line 383
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v6

    const-string v1, "group_concat(attendeeEmail)"

    aput-object v1, v0, v7

    const-string v1, "group_concat(attendeeName)"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    .line 413
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "_sync_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data7"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventLocation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventColor_index"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "selfAttendeeStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "sync_data6"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "dtstart"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventTimezone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "eventEndTimezone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "allDay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "accessLevel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "availability"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "hasAlarm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "hasExtendedProperties"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "rdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "exrule"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "exdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "original_sync_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "originalInstanceTime"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "hasAttendeeData"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "guestsCanModify"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "guestsCanInviteOthers"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "guestsCanSeeGuests"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    const-string v1, "organizer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    const-string v1, "sync_data1"

    aput-object v1, v0, v5

    const-string v1, "sync_data2"

    aput-object v1, v0, v6

    const-string v1, "sync_data3"

    aput-object v1, v0, v7

    const-string v1, "sync_data4"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "sync_data5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_data6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sync_data7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sync_data8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sync_data9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sync_data10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->DONT_CLONE_INTO_EXCEPTION:[Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sLooper:Landroid/os/Looper;

    .line 4878
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "dirty"

    aput-object v1, v0, v4

    const-string v1, "_sync_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SYNC_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4882
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->PROVIDER_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4926
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4943
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/when/*/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4944
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/whenbyday/*/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4945
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/search/*/*/*"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4946
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/searchbyday/*/*/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4948
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/groupbyday/*/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4949
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4950
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4951
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "event_entities"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4952
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "event_entities/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4953
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendars"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4954
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendars/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4955
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_entities"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4956
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_entities/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4957
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "deleted_events"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4958
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "attendees"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4959
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "attendees/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4960
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "reminders"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4961
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "reminders/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4962
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "extendedproperties"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4963
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "extendedproperties/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4964
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4965
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4966
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts/by_instance"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4968
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "syncstate"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4969
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "syncstate/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4970
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "schedule_alarms"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4972
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "schedule_alarms_remove"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4974
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "time/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4975
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "time"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4976
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "properties"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4977
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "exception/#"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4978
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "exception/#/#"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4979
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "emma"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4980
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "colors"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4982
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_sms_alerts"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4983
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_sms_alerts/#"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4984
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_sms_alerts/by_instance"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    .line 4989
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4991
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    .line 4992
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4993
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4994
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4995
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4996
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color_index"

    const-string v2, "color_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4997
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color_type"

    const-string v2, "color_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4998
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    .line 5003
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5004
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5005
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5006
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5007
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5008
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5009
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventColor"

    const-string v2, "eventColor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5010
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventColor_index"

    const-string v2, "eventColor_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5011
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5012
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5013
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5014
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5015
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventEndTimezone"

    const-string v2, "eventEndTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5016
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5017
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5018
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "accessLevel"

    const-string v2, "accessLevel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5019
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "availability"

    const-string v2, "availability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5020
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5021
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5022
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5023
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5024
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5025
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5026
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_sync_id"

    const-string v2, "original_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5027
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_id"

    const-string v2, "original_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5028
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5029
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5030
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5031
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5032
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5033
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5034
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5036
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5037
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5038
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5040
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title_1"

    const-string v2, "title AS suggest_text_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5041
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description_1"

    const-string v2, "description AS suggest_text_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5042
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "importance"

    const-string v2, "importance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5043
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "iCalGUID"

    const-string v2, "iCalGUID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5044
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_update_time"

    const-string v2, "last_update_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5045
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "MeetingStatus"

    const-string v2, "MeetingStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5046
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "desc_mime_type"

    const-string v2, "desc_mime_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5050
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    .line 5051
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    .line 5054
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_color"

    const-string v2, "calendar_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5055
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_color_index"

    const-string v2, "calendar_color_index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5056
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_access_level"

    const-string v2, "calendar_access_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5057
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "visible"

    const-string v2, "visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5058
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_timezone"

    const-string v2, "calendar_timezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5059
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ownerAccount"

    const-string v2, "ownerAccount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5060
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_displayName"

    const-string v2, "calendar_displayName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5061
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedReminders"

    const-string v2, "allowedReminders"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5063
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedAttendeeTypes"

    const-string v2, "allowedAttendeeTypes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5064
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allowedAvailability"

    const-string v2, "allowedAvailability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5066
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "maxReminders"

    const-string v2, "maxReminders"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5067
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "canOrganizerRespond"

    const-string v2, "canOrganizerRespond"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5068
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "canModifyTimeZone"

    const-string v2, "canModifyTimeZone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5071
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "parentID"

    const-string v2, "parentID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5072
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hide_declined"

    const-string v2, "hide_declined"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5073
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "reminder_type"

    const-string v2, "reminder_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5074
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "reminder_duration"

    const-string v2, "reminder_duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5075
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alerts_vibrate"

    const-string v2, "alerts_vibrate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5076
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alerts_ringtone"

    const-string v2, "alerts_ringtone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5078
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "facebook_source_id"

    const-string v2, "facebook_source_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5079
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "facebook_type"

    const-string v2, "facebook_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5080
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "facebook_avatar_small"

    const-string v2, "facebook_avatar_small"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5081
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "facebook_avatar_large"

    const-string v2, "facebook_avatar_large"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5082
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "facebook_avatar_local"

    const-string v2, "facebook_avatar_local"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5088
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    .line 5089
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    .line 5092
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5093
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data1"

    const-string v2, "sync_data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5094
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data2"

    const-string v2, "sync_data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5095
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data3"

    const-string v2, "sync_data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5096
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data4"

    const-string v2, "sync_data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5097
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data5"

    const-string v2, "sync_data5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5098
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data6"

    const-string v2, "sync_data6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5099
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data7"

    const-string v2, "sync_data7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5100
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data8"

    const-string v2, "sync_data8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5101
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data9"

    const-string v2, "sync_data9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5102
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data10"

    const-string v2, "sync_data10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5103
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync1"

    const-string v2, "cal_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5104
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync2"

    const-string v2, "cal_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5105
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync3"

    const-string v2, "cal_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5106
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync4"

    const-string v2, "cal_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5107
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync5"

    const-string v2, "cal_sync5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5108
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync6"

    const-string v2, "cal_sync6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5109
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync7"

    const-string v2, "cal_sync7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5110
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync8"

    const-string v2, "cal_sync8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5111
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync9"

    const-string v2, "cal_sync9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5112
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync10"

    const-string v2, "cal_sync10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5113
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5114
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastSynced"

    const-string v2, "lastSynced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    .line 5117
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5118
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5119
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5120
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5121
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventColor"

    const-string v2, "eventColor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5122
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5123
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5124
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5125
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5126
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventEndTimezone"

    const-string v2, "eventEndTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5127
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5128
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5129
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "accessLevel"

    const-string v2, "accessLevel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5130
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "availability"

    const-string v2, "availability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5131
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5132
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5134
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5135
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5136
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5137
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5138
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_sync_id"

    const-string v2, "original_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5139
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_id"

    const-string v2, "original_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5140
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5142
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5143
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5144
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5145
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5146
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5148
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5149
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5150
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5151
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5152
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5153
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5154
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data1"

    const-string v2, "sync_data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5155
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data2"

    const-string v2, "sync_data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5156
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data3"

    const-string v2, "sync_data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5157
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data4"

    const-string v2, "sync_data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5158
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data5"

    const-string v2, "sync_data5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5159
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data6"

    const-string v2, "sync_data6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5160
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data7"

    const-string v2, "sync_data7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5161
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data8"

    const-string v2, "sync_data8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5162
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data9"

    const-string v2, "sync_data9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5163
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_data10"

    const-string v2, "sync_data10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5164
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5165
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastSynced"

    const-string v2, "lastSynced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5166
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync1"

    const-string v2, "cal_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5167
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync2"

    const-string v2, "cal_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5168
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync3"

    const-string v2, "cal_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5169
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync4"

    const-string v2, "cal_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5170
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync5"

    const-string v2, "cal_sync5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5171
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync6"

    const-string v2, "cal_sync6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5172
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync7"

    const-string v2, "cal_sync7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5173
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync8"

    const-string v2, "cal_sync8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5174
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync9"

    const-string v2, "cal_sync9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5175
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "cal_sync10"

    const-string v2, "cal_sync10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5178
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "Events.deleted as deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5179
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5180
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5181
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "Instances.event_id AS event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5182
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Instances._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5183
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startDay"

    const-string v2, "startDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5184
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endDay"

    const-string v2, "endDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5185
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startMinute"

    const-string v2, "startMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5186
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endMinute"

    const-string v2, "endMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5187
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    .line 5189
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id_1"

    const-string v2, "Instances._id AS suggest_intent_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5190
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5191
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    const-string v2, "attendeeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5192
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeEmail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5193
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName_1"

    const-string v2, "attendeeName AS suggest_text_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5194
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail_1"

    const-string v2, "attendeeEmail AS suggest_text_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5196
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5200
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5201
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Attendees._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5202
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    const-string v2, "attendeeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5203
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeEmail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5204
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeStatus"

    const-string v2, "attendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5205
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeRelationship"

    const-string v2, "attendeeRelationship"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5206
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeType"

    const-string v2, "attendeeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5207
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "Events.deleted AS deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5208
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "Events._sync_id AS _sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5212
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5213
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Reminders._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5214
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5215
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "method"

    const-string v2, "method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5216
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "Events.deleted AS deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5217
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "Events._sync_id AS _sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5221
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5222
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "CalendarAlerts._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5223
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5224
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5225
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alarmTime"

    const-string v2, "alarmTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5226
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5227
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    .line 5231
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5232
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5270
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcGreetingAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcWindowsLiveAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcTaskAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcLocalTaskAccountType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->exlusive_accounts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;-><init>()V

    .line 478
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    .line 556
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider2$1;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5248
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->doSendUpdateNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->removeStaleAccounts([Landroid/accounts/Account;)V

    return-void
.end method

.method private appendAccountFromParameterToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "selection"
    .parameter "uri"

    .prologue
    .line 4480
    const-string v3, "account_name"

    invoke-static {p2, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4482
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-static {p2, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4484
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4486
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4492
    invoke-direct {p0, v2, p1}, Lcom/android/providers/calendar/CalendarProvider2;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4494
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local p1
    :cond_0
    return-object p1
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 4508
    const-string v3, "account_name"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4510
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4512
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4513
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4517
    .local v2, selectionSb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4519
    .end local v2           #selectionSb:Ljava/lang/StringBuilder;
    .end local p2
    :cond_0
    return-object p2
.end method

.method private appendLastSyncedColumnToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "selection"
    .parameter "uri"

    .prologue
    .line 4499
    invoke-virtual {p0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4504
    .end local p1
    :goto_0
    return-object p1

    .line 4502
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4503
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "lastSynced"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    invoke-direct {p0, v0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sb"
    .parameter "selection"

    .prologue
    .line 4540
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4541
    const-string v0, " AND ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4542
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4543
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4545
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendSyncAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 4524
    const-string v3, "account_name"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4526
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4528
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4529
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4533
    .local v2, selectionSb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4535
    .end local v2           #selectionSb:Ljava/lang/StringBuilder;
    .end local p2
    :cond_0
    return-object p2
.end method

.method private backfillExceptionOriginalIds(JLandroid/content/ContentValues;)V
    .locals 10
    .parameter "id"
    .parameter "values"

    .prologue
    .line 2218
    const-string v5, "_sync_id"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2219
    .local v4, syncId:Ljava/lang/String;
    const-string v5, "rrule"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2220
    .local v3, rrule:Ljava/lang/String;
    const-string v5, "rdate"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2221
    .local v2, rdate:Ljava/lang/String;
    const-string v5, "calendar_id"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2223
    .local v0, calendarId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2229
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2230
    .local v1, originalValues:Landroid/content/ContentValues;
    const-string v5, "original_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2231
    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "Events"

    const-string v7, "original_sync_id=? AND calendar_id=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAllowedInException(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1746
    .local p1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1747
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ALLOWED_IN_EXCEPTION:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1748
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceptions can\'t overwrite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1751
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkUntilYear(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "rrule"

    .prologue
    const/16 v2, 0x7f4

    .line 5524
    const/16 v7, 0x7f4

    .line 5526
    .local v7, MAX_SAFE_EXPAND_YEAR:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5551
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 5529
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 5530
    .local v10, tmpRrule:Ljava/lang/String;
    const-string v1, "until"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5531
    new-instance v9, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v9}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 5532
    .local v9, er:Lcom/android/calendarcommon/EventRecurrence;
    invoke-virtual {v9, p1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 5533
    iget-object v11, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 5535
    .local v11, until:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 5536
    .local v0, untilTime:Landroid/text/format/Time;
    invoke-virtual {v0, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 5538
    iget v1, v0, Landroid/text/format/Time;->year:I

    if-le v1, v2, :cond_0

    .line 5539
    iget v1, v0, Landroid/text/format/Time;->second:I

    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->month:I

    const/16 v6, 0x7f4

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 5541
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 5542
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 5543
    invoke-virtual {v9}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 5547
    .end local v0           #untilTime:Landroid/text/format/Time;
    :catch_0
    move-exception v8

    .line 5548
    .local v8, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private checkValidCalendars(J)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5471
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account_name"

    aput-object v0, v2, v10

    const-string v0, "account_type"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5477
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 5479
    .local v6, account:Landroid/accounts/Account;
    if-eqz v9, :cond_2

    .line 5481
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5482
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5483
    .local v7, accountName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5485
    .local v8, accountType:Ljava/lang/String;
    new-instance v6, Landroid/accounts/Account;

    .end local v6           #account:Landroid/accounts/Account;
    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5488
    .end local v7           #accountName:Ljava/lang/String;
    .end local v8           #accountType:Ljava/lang/String;
    .restart local v6       #account:Landroid/accounts/Account;
    :cond_0
    if-eqz v9, :cond_2

    .line 5490
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5491
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5493
    :cond_1
    const/4 v9, 0x0

    .line 5499
    :cond_2
    if-nez v6, :cond_5

    .line 5501
    const-string v0, "CalendarProvider2"

    const-string v1, "Cannot update subscription because account is empty -- should not happen."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 5514
    :goto_0
    return v0

    .line 5488
    .end local v6           #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 5490
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5491
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5493
    :cond_3
    const/4 v9, 0x0

    :cond_4
    throw v0

    .line 5506
    .restart local v6       #account:Landroid/accounts/Account;
    :cond_5
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/calendar/HtcProviderUtils;->isHtcBirthdayEvents(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5507
    const-string v0, "CalendarProvider2"

    const-string v1, "Skip modifyCalendarSubscription in Birthday  Sync Calendars"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 5508
    goto :goto_0

    .line 5510
    :cond_6
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5511
    const-string v0, "CalendarProvider2"

    const-string v1, "Skip modifyCalendarSubscription in PC Sync Calendars"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 5512
    goto :goto_0

    :cond_7
    move v0, v11

    .line 5514
    goto :goto_0
.end method

.method private static varargs combine([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, arrays:[[Ljava/lang/Object;,"[[TT;"
    const/4 v9, 0x0

    .line 1244
    array-length v8, p0

    if-nez v8, :cond_0

    .line 1245
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Must supply at least 1 array to combine"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1248
    :cond_0
    const/4 v7, 0x0

    .line 1249
    .local v7, totalSize:I
    move-object v0, p0

    .local v0, arr$:[[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 1250
    .local v1, array:[Ljava/lang/Object;,"[TT;"
    array-length v8, v1

    add-int/2addr v7, v8

    .line 1249
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1253
    .end local v1           #array:[Ljava/lang/Object;,"[TT;"
    :cond_1
    aget-object v8, p0, v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 1256
    .local v3, finalArray:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 1257
    .local v2, currentPos:I
    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 1258
    .restart local v1       #array:[Ljava/lang/Object;,"[TT;"
    array-length v6, v1

    .line 1259
    .local v6, length:I
    invoke-static {v1, v9, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1260
    array-length v8, v1

    add-int/2addr v2, v8

    .line 1257
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1262
    .end local v1           #array:[Ljava/lang/Object;,"[TT;"
    .end local v6           #length:I
    :cond_2
    return-object v3
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 5396
    return-void
.end method

.method private deleteEventInternal(JZZ)I
    .locals 21
    .parameter "id"
    .parameter "callerIsSyncAdapter"
    .parameter "isBatch"

    .prologue
    .line 3387
    const/16 v17, 0x0

    .line 3388
    .local v17, result:I
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 3391
    .local v6, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3396
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3397
    const/16 v17, 0x1

    .line 3398
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3399
    .local v19, syncId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 3404
    .local v12, emptySyncId:Z
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3405
    .local v18, rrule:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3406
    .local v16, rdate:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3407
    .local v14, origId:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3408
    .local v15, origSyncId:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1, v14, v15}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V

    .line 3411
    :cond_0
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    const/4 v13, 0x1

    .line 3418
    .local v13, isRecurrence:Z
    :goto_0
    if-nez p3, :cond_2

    if-eqz v12, :cond_6

    .line 3419
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3425
    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    .line 3426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "original_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3480
    .end local v12           #emptySyncId:Z
    .end local v13           #isRecurrence:Z
    .end local v14           #origId:Ljava/lang/String;
    .end local v15           #origSyncId:Ljava/lang/String;
    .end local v16           #rdate:Ljava/lang/String;
    .end local v18           #rrule:Ljava/lang/String;
    .end local v19           #syncId:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 3484
    :goto_2
    if-nez p4, :cond_4

    .line 3485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 3486
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    .line 3488
    :cond_4
    return v17

    .line 3411
    .restart local v12       #emptySyncId:Z
    .restart local v14       #origId:Ljava/lang/String;
    .restart local v15       #origSyncId:Ljava/lang/String;
    .restart local v16       #rdate:Ljava/lang/String;
    .restart local v18       #rrule:Ljava/lang/String;
    .restart local v19       #syncId:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    .line 3433
    .restart local v13       #isRecurrence:Z
    :cond_6
    :try_start_1
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 3434
    .local v20, values:Landroid/content/ContentValues;
    const-string v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3435
    const-string v2, "dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "original_id=? AND _sync_id IS NULL"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Instances"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "EventsRawTimes"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarAlerts"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ExtendedProperties"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarSmsAlerts"

    const-string v4, "event_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3469
    .end local v12           #emptySyncId:Z
    .end local v13           #isRecurrence:Z
    .end local v14           #origId:Ljava/lang/String;
    .end local v15           #origSyncId:Ljava/lang/String;
    .end local v16           #rdate:Ljava/lang/String;
    .end local v18           #rrule:Ljava/lang/String;
    .end local v19           #syncId:Ljava/lang/String;
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 3470
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CalendarProvider2"

    const-string v3, "error"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3480
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_2

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v2
.end method

.method private deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "table"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3502
    const-string v1, "Events"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3503
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Don\'t delete Events with this method (use deleteEventInternal)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3507
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3508
    .local v9, dirtyValues:Landroid/content/ContentValues;
    const-string v1, "dirty"

    const-string v2, "1"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "event_id"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3518
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 3520
    .local v8, count:I
    const-wide/16 v15, -0x1

    .line 3521
    .local v15, prevEventId:J
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3522
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3523
    .local v13, id:J
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v11

    .line 3528
    .local v11, eventId:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CalendarSmsAlerts"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3537
    :goto_1
    cmp-long v1, v11, v15

    if-eqz v1, :cond_1

    .line 3538
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v11, v12}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 3539
    move-wide v15, v11

    .line 3541
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3542
    cmp-long v1, v11, v15

    if-eqz v1, :cond_2

    .line 3543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Events"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3546
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 3547
    goto :goto_0

    .line 3529
    :catch_0
    move-exception v10

    .line 3530
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "CalendarProvider2"

    const-string v2, "deleteFromTable table:CalendarSmsAlerts fail"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3550
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #eventId:J
    .end local v13           #id:J
    :catch_1
    move-exception v10

    .line 3551
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "CalendarProvider2"

    const-string v2, "error"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3559
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 3562
    .end local v10           #e:Ljava/lang/Exception;
    :goto_2
    return v8

    .line 3559
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method

.method private deleteMatchingCalendars(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 3844
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Calendars"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3849
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v12

    .line 3871
    :goto_0
    return v0

    .line 3853
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3854
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3855
    .local v10, id:J
    const/4 v0, 0x0

    invoke-direct {p0, v10, v11, v0}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3859
    .end local v10           #id:J
    :catch_0
    move-exception v9

    .line 3860
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarProvider2"

    const-string v1, "error"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3868
    invoke-virtual {p0, v8}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 3871
    .end local v9           #e:Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Calendars"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3868
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v8}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private deleteMatchingColors(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Colors"

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3796
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 3797
    const/4 v2, 0x0

    .line 3837
    :goto_0
    return v2

    .line 3800
    :cond_0
    const/4 v13, 0x0

    .line 3801
    .local v13, c2:Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3802
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3803
    .local v14, index:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3804
    .local v10, accountName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3805
    .local v11, accountType:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    const/4 v15, 0x1

    .line 3807
    .local v15, isCalendarColor:Z
    :goto_2
    if-eqz v15, :cond_5

    .line 3808
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Calendars"

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_name=? AND account_type=? AND calendar_color_index=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    const/4 v7, 0x2

    aput-object v14, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3812
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 3813
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Referenced by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calendars."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3827
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_2

    .line 3828
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3833
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountType:Ljava/lang/String;
    .end local v14           #index:Ljava/lang/String;
    .end local v15           #isCalendarColor:Z
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_3

    .line 3834
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 3805
    .restart local v10       #accountName:Ljava/lang/String;
    .restart local v11       #accountType:Ljava/lang/String;
    .restart local v14       #index:Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 3818
    .restart local v15       #isCalendarColor:Z
    :cond_5
    :try_start_3
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_name=? AND account_type=? AND eventColor_index=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v6, v2

    const/4 v2, 0x1

    aput-object v11, v6, v2

    const/4 v2, 0x2

    aput-object v14, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3820
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 3821
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Referenced by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3827
    :cond_6
    if-eqz v13, :cond_1

    .line 3828
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 3833
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountType:Ljava/lang/String;
    .end local v14           #index:Ljava/lang/String;
    .end local v15           #isCalendarColor:Z
    :cond_7
    if-eqz v12, :cond_8

    .line 3834
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3837
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Colors"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method private deleteReminders(Landroid/net/Uri;ZLjava/lang/String;[Ljava/lang/String;Z)I
    .locals 22
    .parameter "uri"
    .parameter "byId"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 3578
    const-wide/16 v20, -0x1

    .line 3579
    .local v20, rowId:J
    if-eqz p2, :cond_1

    .line 3580
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3581
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3583
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 3584
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-gez v2, :cond_1

    .line 3585
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID expected but not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3598
    :cond_1
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 3599
    .local v15, eventIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "event_id"

    aput-object v3, v4, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3601
    .local v10, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3602
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3605
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3612
    if-nez p5, :cond_3

    .line 3613
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3614
    .local v12, dirtyValues:Landroid/content/ContentValues;
    const-string v2, "dirty"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3617
    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3618
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 3619
    .local v13, eventId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2, v13, v14}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 3620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 3629
    .end local v12           #dirtyValues:Landroid/content/ContentValues;
    .end local v13           #eventId:J
    .end local v16           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    if-eqz p2, :cond_4

    .line 3630
    const-string p3, "_id=?"

    .line 3631
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 p4, v0

    .end local p4
    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v2

    .line 3633
    .restart local p4
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 3641
    .local v11, delCount:I
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 3642
    .local v17, noAlarmValues:Landroid/content/ContentValues;
    const-string v2, "hasAlarm"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3643
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3644
    .restart local v16       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3645
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 3648
    .restart local v13       #eventId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 3651
    .local v19, reminders:Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 3652
    .local v18, reminderCount:I
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 3654
    if-nez v18, :cond_5

    .line 3655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 3660
    .end local v13           #eventId:J
    .end local v18           #reminderCount:I
    .end local v19           #reminders:Landroid/database/Cursor;
    :cond_6
    return v11
.end method

.method private doSendUpdateNotification()V
    .locals 4

    .prologue
    .line 4864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4866
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4867
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending notification intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4870
    return-void
.end method

.method private doesEventExistForSyncId(Ljava/lang/String;)Z
    .locals 7
    .parameter "syncId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3877
    if-nez p1, :cond_1

    .line 3878
    const-string v2, "CalendarProvider2"

    const/4 v4, 0x5

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3879
    const-string v2, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncID cannot be null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    :cond_0
    :goto_0
    return v3

    .line 3883
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT COUNT(*) FROM Events WHERE _sync_id=?"

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 3885
    .local v0, count:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private doesStatusCancelUpdateMeanUpdate(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "values"
    .parameter "modValues"

    .prologue
    const/4 v2, 0x1

    .line 3900
    const-string v3, "eventStatus"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "eventStatus"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v2

    .line 3902
    .local v0, isStatusCanceled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3903
    const-string v3, "original_sync_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3905
    .local v1, originalSyncId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3907
    invoke-direct {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->doesEventExistForSyncId(Ljava/lang/String;)Z

    move-result v2

    .line 3911
    .end local v1           #originalSyncId:Ljava/lang/String;
    :cond_0
    return v2

    .line 3900
    .end local v0           #isStatusCanceled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureTimeNotOverflow(J)J
    .locals 13
    .parameter "millis"

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 5557
    const/16 v11, 0x7f6

    .line 5558
    .local v11, MAX_SAFE_YEAR:I
    const/4 v7, 0x1

    .line 5564
    .local v7, MAX_SAFE_MONTH:I
    const/16 v8, 0x11

    .line 5566
    .local v8, MAX_SAFE_MONTH_DAY:I
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 5567
    .local v0, time:Landroid/text/format/Time;
    const/16 v4, 0x11

    const/16 v6, 0x7f6

    move v2, v1

    move v3, v1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 5568
    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 5570
    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 5572
    .local v9, MAX_SAFE_TIME_LONG_MILLIS:J
    cmp-long v1, p1, v9

    if-lez v1, :cond_0

    .line 5575
    .end local v9           #MAX_SAFE_TIME_LONG_MILLIS:J
    :goto_0
    return-wide v9

    .restart local v9       #MAX_SAFE_TIME_LONG_MILLIS:J
    :cond_0
    move-wide v9, p1

    goto :goto_0
.end method

.method private forbidUpdate_SELF_ATTENDEE_STATUS(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 5518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->inExclusiveAccountTypes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5519
    const/4 v0, 0x0

    .line 5521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "timezone"
    .parameter "dt2445"

    .prologue
    const-wide/16 v2, 0x0

    .line 800
    if-nez p2, :cond_1

    .line 801
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 802
    const-string v4, "CalendarProvider2"

    const-string v5, "Cannot parse null RFC2445 date"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    :goto_0
    return-wide v2

    .line 806
    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 808
    .local v1, time:Landroid/text/format/Time;
    :goto_1
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    goto :goto_0

    .line 806
    .end local v1           #time:Landroid/text/format/Time;
    :cond_2
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    goto :goto_1

    .line 809
    .restart local v1       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse RFC2445 date "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAccount(J)Landroid/accounts/Account;
    .locals 9
    .parameter "calId"

    .prologue
    const/4 v8, 0x0

    .line 2827
    const/4 v6, 0x0

    .line 2828
    .local v6, account:Landroid/accounts/Account;
    const/4 v7, 0x0

    .line 2830
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2833
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2834
    :cond_0
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2835
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2842
    :cond_1
    if-eqz v7, :cond_2

    .line 2843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 2846
    :goto_0
    return-object v0

    .line 2839
    :cond_3
    :try_start_1
    new-instance v6, Landroid/accounts/Account;

    .end local v6           #account:Landroid/accounts/Account;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2842
    .restart local v6       #account:Landroid/accounts/Account;
    if-eqz v7, :cond_4

    .line 2843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 2846
    goto :goto_0

    .line 2842
    .end local v6           #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getCalendarAccountType(I)Ljava/lang/String;
    .locals 12
    .parameter "calendarId"

    .prologue
    .line 5580
    const-string v8, "_id=?"

    .line 5581
    .local v8, CALENDARS_WHERE:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5582
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, ""

    .line 5583
    .local v9, accountType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 5586
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "Calendars"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5590
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5591
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get calendar account_type for calendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5598
    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 5601
    :goto_1
    return-object v9

    .line 5593
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_0

    .line 5595
    :catch_0
    move-exception v11

    .line 5596
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCalendarAccountType exception, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5598
    invoke-virtual {p0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getColorByIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "accountName"
    .parameter "accountType"
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 2778
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Colors"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=? AND color_index=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const/4 v6, 0x2

    aput-object p3, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 483
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 484
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CalendarProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 486
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sLooper:Landroid/os/Looper;

    .line 489
    .end local v0           #ht:Landroid/os/HandlerThread;
    :cond_0
    new-instance v1, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Landroid/os/Looper;)V

    return-object v1
.end method

.method protected static getInstance()Lcom/android/providers/calendar/CalendarProvider2;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstance:Lcom/android/providers/calendar/CalendarProvider2;

    return-object v0
.end method

.method private getNotesAssociateSelection(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/EventInstance;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5436
    .local p1, eventInstances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/EventInstance;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " AND INSTANCES._ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " NOT IN ( SELECT _ID FROM INSTANCES WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 5439
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/calendar/EventInstance;

    .line 5440
    .local v0, ei:Lcom/htc/util/calendar/EventInstance;
    const-string v3, "(event_id=? and begin=? and end=?) OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5442
    .end local v0           #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_0
    const-string v3, "_id=-1 )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5443
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNotesAssociateSelection2(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5399
    .local p1, eventIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " AND INSTANCES._ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " NOT IN ( SELECT _ID FROM INSTANCES WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 5402
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5403
    .local v0, event_Ids:Ljava/lang/Long;
    const-string v3, "(event_id=?) OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5405
    .end local v0           #event_Ids:Ljava/lang/Long;
    :cond_0
    const-string v3, "_id=-1 )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5407
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNotesAssociateSelectionArgs(Ljava/util/ArrayList;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/EventInstance;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5448
    .local p1, eventInstances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/EventInstance;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5450
    .local v3, aryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v8, v2, v5

    .line 5451
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5450
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5454
    .end local v8           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/EventInstance;

    .line 5455
    .local v4, ei:Lcom/htc/util/calendar/EventInstance;
    invoke-virtual {v4}, Lcom/htc/util/calendar/EventInstance;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5459
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .line 5460
    .local v1, args:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, postion:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 5461
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v1, v7

    .line 5460
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5464
    :cond_2
    move-object v2, v1

    array-length v6, v2

    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v0, v2, v5

    .line 5465
    .local v0, arg:Ljava/lang/String;
    const-string v9, "CalendarProvider2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check Notes with instances in new selectionArgs --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5464
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5467
    .end local v0           #arg:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private getNotesAssociateSelectionArgs2(Ljava/util/ArrayList;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5412
    .local p1, eventIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5414
    .local v3, aryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v8, v2, v5

    .line 5415
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5414
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5418
    .end local v8           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 5419
    .local v4, ei:Ljava/lang/Long;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5423
    .end local v4           #ei:Ljava/lang/Long;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .line 5424
    .local v1, args:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, postion:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 5425
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v1, v7

    .line 5424
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5428
    :cond_2
    move-object v2, v1

    array-length v6, v2

    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v0, v2, v5

    .line 5429
    .local v0, arg:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check Notes with instances in new selectionArgs --> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/providers/calendar/CalendarProvider2;->debug(Ljava/lang/String;)V

    .line 5428
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5431
    .end local v0           #arg:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private getOriginalId(Ljava/lang/String;)J
    .locals 9
    .parameter "originalSyncId"

    .prologue
    .line 2736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2737
    const-wide/16 v7, -0x1

    .line 2753
    :cond_0
    :goto_0
    return-wide v7

    .line 2740
    :cond_1
    const-wide/16 v7, -0x1

    .line 2741
    .local v7, originalId:J
    const/4 v6, 0x0

    .line 2743
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_sync_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2745
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2746
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 2749
    :cond_2
    if-eqz v6, :cond_0

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2749
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getOriginalSyncId(J)Ljava/lang/String;
    .locals 8
    .parameter "originalId"

    .prologue
    const/4 v7, 0x0

    .line 2757
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2774
    :cond_0
    :goto_0
    return-object v7

    .line 2761
    :cond_1
    const/4 v7, 0x0

    .line 2762
    .local v7, originalSyncId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2764
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_sync_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2766
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2767
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2770
    :cond_2
    if-eqz v6, :cond_0

    .line 2771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2770
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static handleEmmaRequest(Landroid/content/ContentValues;)V
    .locals 10
    .parameter "values"

    .prologue
    .line 2545
    const-string v6, "cmd"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2546
    .local v0, cmd:Ljava/lang/String;
    const-string v6, "start"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2549
    const-string v6, "CalendarProvider2"

    const-string v7, "Emma coverage testing started"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2550
    :cond_1
    const-string v6, "stop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2553
    const-string v6, "outputFileName"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2555
    .local v5, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v1, coverageFile:Ljava/io/File;
    :try_start_0
    const-string v6, "com.vladium.emma.rt.RT"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2558
    .local v4, emmaRTClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "dumpCoverageData"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2561
    .local v2, dumpCoverageMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2563
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Emma coverage data written to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2564
    .end local v2           #dumpCoverageMethod:Ljava/lang/reflect/Method;
    .end local v4           #emmaRTClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 2565
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Emma coverage dump failed"

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 15
    .parameter "qb"
    .parameter "begin"
    .parameter "end"
    .parameter "projection"
    .parameter "selection"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1444
    const-string v1, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1445
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1448
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p6

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v14, time:Landroid/text/format/Time;
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v2

    .line 1452
    .local v2, beginMs:J
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v14, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v4

    .line 1454
    .local v4, endMs:J
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1456
    const-string v1, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1457
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v1

    .line 1459
    .local v10, selectionArgs:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "startDay"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private handleInsertException(JLandroid/content/ContentValues;Z)J
    .locals 44
    .parameter "originalEventId"
    .parameter "modValues"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1871
    const-string v4, "originalInstanceTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v38

    .line 1872
    .local v38, originalInstanceTime:Ljava/lang/Long;
    if-nez v38, :cond_0

    .line 1873
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exceptions must specify originalInstanceTime"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1878
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/calendar/CalendarProvider2;->checkAllowedInException(Ljava/util/Set;)V

    .line 1881
    if-nez p4, :cond_1

    .line 1882
    const-string v4, "dirty"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1886
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1887
    const/16 v31, 0x0

    .line 1893
    .local v31, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Events"

    const/4 v6, 0x0

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 1896
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3

    .line 1897
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Original event ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lookup failed (count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1899
    const-wide/16 v6, -0x1

    .line 2194
    if-eqz v31, :cond_2

    .line 2195
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return-wide v6

    .line 1904
    :cond_3
    :try_start_1
    const-string v4, "eventColor_index"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1905
    .local v27, color_index:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1906
    const-string v4, "calendar_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1907
    .local v23, calIdCol:I
    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1908
    .local v22, calId:Ljava/lang/Long;
    const/16 v17, 0x0

    .line 1909
    .local v17, accountName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1910
    .local v18, accountType:Ljava/lang/String;
    if-eqz v22, :cond_4

    .line 1911
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/providers/calendar/CalendarProvider2;->getAccount(J)Landroid/accounts/Account;

    move-result-object v16

    .line 1912
    .local v16, account:Landroid/accounts/Account;
    if-eqz v16, :cond_4

    .line 1913
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1914
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1917
    .end local v16           #account:Landroid/accounts/Account;
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1925
    .end local v17           #accountName:Ljava/lang/String;
    .end local v18           #accountType:Ljava/lang/String;
    .end local v22           #calId:Ljava/lang/Long;
    .end local v23           #calIdCol:I
    :cond_5
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1926
    const-string v4, "rrule"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 1927
    .local v39, rruleCol:I
    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1928
    const-string v4, "CalendarProvider2"

    const-string v8, "Original event has no rrule"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1929
    const-wide/16 v6, -0x1

    .line 2194
    if-eqz v31, :cond_6

    .line 2195
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1936
    :cond_7
    :try_start_2
    const-string v4, "original_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 1937
    .local v37, originalIdCol:I
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1938
    const-string v4, "CalendarProvider2"

    const-string v8, "Original event is an exception"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1939
    const-wide/16 v6, -0x1

    .line 2194
    if-eqz v31, :cond_8

    .line 2195
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1942
    :cond_9
    :try_start_3
    const-string v4, "rrule"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    .line 1950
    .local v30, createSingleException:Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1951
    .local v5, values:Landroid/content/ContentValues;
    move-object/from16 v0, v31

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1952
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 1953
    const/16 v31, 0x0

    .line 1959
    const/16 v29, 0x1

    .line 1960
    .local v29, createNewEvent:Z
    if-eqz v30, :cond_10

    .line 1964
    const-string v4, "_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1965
    .local v14, _id:Ljava/lang/String;
    const-string v4, "_sync_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1966
    .local v15, _sync_id:Ljava/lang/String;
    const-string v4, "allDay"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 1971
    .local v19, allDay:Z
    sget-object v20, Lcom/android/providers/calendar/CalendarProvider2;->DONT_CLONE_INTO_EXCEPTION:[Ljava/lang/String;

    .local v20, arr$:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v36, v0

    .local v36, len$:I
    const/16 v35, 0x0

    .local v35, i$:I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_a

    aget-object v43, v20, v35

    .line 1972
    .local v43, str:Ljava/lang/String;
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1971
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 1979
    .end local v43           #str:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1995
    const-string v4, "original_id"

    invoke-virtual {v5, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v4, "original_sync_id"

    invoke-virtual {v5, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string v4, "originalAllDay"

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2001
    const-string v4, "eventStatus"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2002
    const-string v4, "eventStatus"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2007
    :cond_b
    const-string v4, "rrule"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2009
    new-instance v32, Lcom/android/providers/calendar/Duration;

    invoke-direct/range {v32 .. v32}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 2010
    .local v32, duration:Lcom/android/providers/calendar/Duration;
    const-string v4, "duration"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v33

    .line 2012
    .local v33, durationStr:Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {v32 .. v33}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2027
    :try_start_5
    const-string v4, "dtstart"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2028
    const-string v4, "dtstart"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 2033
    .local v41, start:J
    :goto_2
    const-string v4, "dtend"

    invoke-virtual/range {v32 .. v32}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v8

    add-long v8, v8, v41

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2039
    const-string v4, "duration"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2106
    .end local v14           #_id:Ljava/lang/String;
    .end local v15           #_sync_id:Ljava/lang/String;
    .end local v19           #allDay:Z
    .end local v20           #arr$:[Ljava/lang/String;
    .end local v32           #duration:Lcom/android/providers/calendar/Duration;
    .end local v33           #durationStr:Ljava/lang/String;
    .end local v35           #i$:I
    .end local v36           #len$:I
    .end local v41           #start:J
    :goto_3
    if-eqz v29, :cond_17

    .line 2107
    const-string v4, "_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2108
    if-eqz p4, :cond_15

    .line 2109
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/calendar/CalendarProvider2;->scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 2114
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Events"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2115
    .local v6, newEventId:J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_16

    .line 2116
    const-string v4, "CalendarProvider2"

    const-string v8, "Unable to add exception to recurring event"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Values: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2118
    const-wide/16 v6, -0x1

    .line 2194
    .end local v6           #newEventId:J
    if-eqz v31, :cond_c

    .line 2195
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 2013
    .restart local v14       #_id:Ljava/lang/String;
    .restart local v15       #_sync_id:Ljava/lang/String;
    .restart local v19       #allDay:Z
    .restart local v20       #arr$:[Ljava/lang/String;
    .restart local v32       #duration:Lcom/android/providers/calendar/Duration;
    .restart local v33       #durationStr:Ljava/lang/String;
    .restart local v35       #i$:I
    .restart local v36       #len$:I
    :catch_0
    move-exception v34

    .line 2016
    .local v34, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad duration in recurring event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2017
    const-wide/16 v6, -0x1

    .line 2194
    if-eqz v31, :cond_d

    .line 2195
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 2030
    .end local v34           #ex:Ljava/lang/Exception;
    :cond_e
    :try_start_7
    const-string v4, "originalInstanceTime"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 2031
    .restart local v41       #start:J
    const-string v4, "dtstart"

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 2194
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v14           #_id:Ljava/lang/String;
    .end local v15           #_sync_id:Ljava/lang/String;
    .end local v19           #allDay:Z
    .end local v20           #arr$:[Ljava/lang/String;
    .end local v27           #color_index:Ljava/lang/String;
    .end local v29           #createNewEvent:Z
    .end local v30           #createSingleException:Z
    .end local v32           #duration:Lcom/android/providers/calendar/Duration;
    .end local v33           #durationStr:Ljava/lang/String;
    .end local v35           #i$:I
    .end local v36           #len$:I
    .end local v37           #originalIdCol:I
    .end local v39           #rruleCol:I
    .end local v41           #start:J
    :catchall_0
    move-exception v4

    if-eqz v31, :cond_f

    .line 2195
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 2051
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v27       #color_index:Ljava/lang/String;
    .restart local v29       #createNewEvent:Z
    .restart local v30       #createSingleException:Z
    .restart local v37       #originalIdCol:I
    .restart local v39       #rruleCol:I
    :cond_10
    :try_start_8
    const-string v4, "eventStatus"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_12

    const/16 v26, 0x1

    .line 2053
    .local v26, canceling:Z
    :goto_5
    const-string v4, "dtstart"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2059
    if-eqz v26, :cond_11

    .line 2061
    const-string v4, "CalendarProvider2"

    const-string v8, "Note: canceling entire event via exception call"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->validateRecurrenceRule(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2067
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid recurrence rule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "rrule"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2051
    .end local v26           #canceling:Z
    :cond_12
    const/16 v26, 0x0

    goto :goto_5

    .line 2070
    .restart local v26       #canceling:Z
    :cond_13
    const-string v4, "originalInstanceTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Events"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p3

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2073
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 2087
    :cond_14
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/providers/calendar/CalendarProvider2;->setRecurrenceEnd(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object v40

    .line 2088
    .local v40, splitValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Events"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, v40

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2100
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2101
    const-string v4, "originalInstanceTime"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2111
    .end local v26           #canceling:Z
    .end local v40           #splitValues:Landroid/content/ContentValues;
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 2130
    .restart local v6       #newEventId:J
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, p1

    invoke-static {v4, v6, v7, v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->copyEventRelatedTables(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 2144
    const-string v4, "selfAttendeeStatus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2150
    const-string v4, "calendar_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 2151
    .local v24, calendarId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v17

    .line 2152
    .restart local v17       #accountName:Ljava/lang/String;
    if-eqz v17, :cond_18

    .line 2153
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2154
    .local v21, attValues:Landroid/content/ContentValues;
    const-string v4, "attendeeStatus"

    const-string v8, "selfAttendeeStatus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Attendees"

    const-string v9, "event_id=? AND attendeeEmail=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v17, v10, v11

    move-object/from16 v0, v21

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 2165
    .local v28, count:I
    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_18

    const/4 v4, 0x2

    move/from16 v0, v28

    if-eq v0, v4, :cond_18

    .line 2168
    const-string v4, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attendee status update on event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " touched "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rows. Expected one or two rows."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "Status update WTF"

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2187
    .end local v6           #newEventId:J
    .end local v17           #accountName:Ljava/lang/String;
    .end local v21           #attValues:Landroid/content/ContentValues;
    .end local v24           #calendarId:J
    .end local v28           #count:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v5

    move-wide/from16 v10, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2188
    move-wide/from16 v6, p1

    .line 2191
    .restart local v6       #newEventId:J
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2194
    if-eqz v31, :cond_19

    .line 2195
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2197
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method private handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 16
    .parameter "qb"
    .parameter "rangeBegin"
    .parameter "rangeEnd"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "searchByDay"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1271
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private handleInstanceSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 21
    .parameter "qb"
    .parameter "rangeBegin"
    .parameter "rangeEnd"
    .parameter "query"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "searchByDay"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1388
    const-string v2, "(Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)) LEFT OUTER JOIN Attendees ON (Attendees.event_id=Events._id)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1389
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesSearchProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1391
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->tokenizeSearchQuery(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, tokens:[Ljava/lang/String;
    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 1392
    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->constructSearchArgs([Ljava/lang/String;JJ)[Ljava/lang/String;

    move-result-object v18

    .line 1393
    .local v18, newSelectionArgs:[Ljava/lang/String;
    if-nez p9, :cond_0

    .line 1394
    move-object/from16 p9, v18

    .line 1403
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->constructSearchWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1405
    .local v19, searchWhere:Ljava/lang/String;
    if-eqz p11, :cond_1

    .line 1408
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v20, time:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    long-to-int v2, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 1412
    .local v5, beginMs:J
    move-wide/from16 v0, p4

    long-to-int v2, v0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v7

    .line 1416
    .local v7, endMs:J
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v11, p12

    move/from16 v12, p13

    invoke-virtual/range {v4 .. v12}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1422
    const-string v2, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1436
    .end local v5           #beginMs:J
    .end local v7           #endMs:J
    .end local v20           #time:Landroid/text/format/Time;
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "Events._id"

    move-object/from16 v9, p1

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v15, v19

    move-object/from16 v16, p10

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1398
    .end local v19           #searchWhere:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v18, v2, v4

    const/4 v4, 0x1

    aput-object p9, v2, v4

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->combine([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p9

    .end local p9
    check-cast p9, [Ljava/lang/String;

    .restart local p9
    goto :goto_0

    .line 1427
    .restart local v19       #searchWhere:Ljava/lang/String;
    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object/from16 v16, p12

    move/from16 v17, p13

    invoke-virtual/range {v9 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1433
    const-string v2, "begin<=? AND end>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleUpdateColors(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3915
    const/4 v12, 0x0

    .line 3916
    .local v12, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Colors"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 3917
    .local v16, result:I
    const-string v3, "color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3919
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Colors"

    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->COLORS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3921
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3922
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v13, 0x1

    .line 3924
    .local v13, calendarColor:Z
    :goto_1
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 3925
    .local v14, color:I
    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 3930
    .local v11, args:[Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3931
    .local v15, colorValue:Landroid/content/ContentValues;
    if-eqz v13, :cond_2

    .line 3932
    const-string v3, "calendar_color"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Calendars"

    const-string v5, "account_name=? AND account_type=? AND calendar_color_index=?"

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3940
    .end local v11           #args:[Ljava/lang/String;
    .end local v13           #calendarColor:Z
    .end local v14           #color:I
    .end local v15           #colorValue:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_0

    .line 3941
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 3922
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 3935
    .restart local v11       #args:[Ljava/lang/String;
    .restart local v13       #calendarColor:Z
    .restart local v14       #color:I
    .restart local v15       #colorValue:Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    const-string v3, "eventColor"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v5, "account_name=? AND account_type=? AND eventColor_index=?"

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3940
    .end local v11           #args:[Ljava/lang/String;
    .end local v13           #calendarColor:Z
    .end local v14           #color:I
    .end local v15           #colorValue:Landroid/content/ContentValues;
    :cond_3
    if-eqz v12, :cond_4

    .line 3941
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3945
    :cond_4
    return v16
.end method

.method private handleUpdateEvents(Landroid/database/Cursor;Landroid/content/ContentValues;Z)I
    .locals 28
    .parameter "cursor"
    .parameter "updateValues"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 3968
    const-string v3, "hasAlarm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3981
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 3982
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3983
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing update on "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " events"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3988
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3991
    .local v20, modValues:Landroid/content/ContentValues;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 3992
    .local v27, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3993
    const/16 v17, 0x0

    .line 3994
    .local v17, doValidate:Z
    if-nez p3, :cond_1

    .line 3999
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4000
    const/16 v17, 0x1

    .line 4009
    :cond_1
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 4012
    const-string v3, "eventColor_index"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4013
    .local v15, color_id:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4014
    const/4 v11, 0x0

    .line 4015
    .local v11, accountName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 4016
    .local v12, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Calendars"

    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "calendar_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4019
    .local v14, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4020
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4021
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 4024
    :cond_2
    if-eqz v14, :cond_3

    .line 4025
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4028
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v15, v3}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4032
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    :cond_4
    if-eqz p3, :cond_5

    .line 4033
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 4035
    :cond_5
    if-eqz v17, :cond_6

    .line 4036
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    .line 4041
    :cond_6
    const-string v3, "dtstart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "dtend"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "duration"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "eventTimezone"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "rrule"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "rdate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "exrule"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "exdate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4051
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->calculateLastDate(Landroid/content/ContentValues;)J
    :try_end_2
    .catch Lcom/android/calendarcommon/DateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v21

    .line 4055
    .local v21, newLastDate:J
    const-string v3, "lastDate"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    .line 4056
    .local v25, oldLastDateObj:Ljava/lang/Long;
    if-nez v25, :cond_b

    const-wide/16 v23, -0x1

    .line 4057
    .local v23, oldLastDate:J
    :goto_2
    cmp-long v3, v23, v21

    if-eqz v3, :cond_8

    .line 4077
    .end local v21           #newLastDate:J
    .end local v23           #oldLastDate:J
    .end local v25           #oldLastDateObj:Ljava/lang/Long;
    :cond_8
    if-nez p3, :cond_9

    .line 4078
    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4086
    :cond_9
    const-string v3, "calendar_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getCalendarAccountType(I)Ljava/lang/String;

    move-result-object v12

    .line 4087
    .restart local v12       #accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->forbidUpdate_SELF_ATTENDEE_STATUS(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4088
    const-string v3, "selfAttendeeStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4089
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Updating selfAttendeeStatus in Events table is not allowed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4001
    .end local v12           #accountType:Ljava/lang/String;
    .end local v15           #color_id:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 4002
    .local v18, iae:Ljava/lang/IllegalArgumentException;
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " malformed, not validating update ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4024
    .end local v18           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v11       #accountName:Ljava/lang/String;
    .restart local v12       #accountType:Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #color_id:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_a

    .line 4025
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 4052
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v16

    .line 4053
    .local v16, de:Lcom/android/calendarcommon/DateException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute LAST_DATE"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4056
    .end local v16           #de:Lcom/android/calendarcommon/DateException;
    .restart local v21       #newLastDate:J
    .restart local v25       #oldLastDateObj:Ljava/lang/Long;
    :cond_b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    goto/16 :goto_2

    .line 4096
    .end local v21           #newLastDate:J
    .end local v25           #oldLastDateObj:Ljava/lang/Long;
    .restart local v12       #accountType:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4097
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4098
    const-string v3, "CalendarProvider2"

    const-string v4, "handleUpdateEvents: allDay is true but sec, min, hour were not 0."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->doesStatusCancelUpdateMeanUpdate(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v19

    .line 4107
    .local v19, isUpdate:Z
    const-string v3, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 4109
    .local v5, id:J
    if-eqz v19, :cond_14

    .line 4113
    if-nez p3, :cond_13

    .line 4114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 4122
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 4124
    .local v26, result:I
    if-lez v26, :cond_0

    .line 4125
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 4126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v4, v20

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 4131
    const-string v3, "dtstart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4135
    :cond_f
    const-string v3, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 4137
    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v3

    .line 4138
    .local v13, args:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Instances"

    const-string v7, "event_id=?"

    invoke-virtual {v3, v4, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4143
    .end local v13           #args:[Ljava/lang/String;
    :cond_10
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4144
    const-string v3, "CalendarProvider2"

    const-string v4, "updateInternal() changing event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4149
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    goto/16 :goto_0

    .line 4116
    .end local v26           #result:I
    :cond_13
    const-string v3, "dirty"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "dirty"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    .line 4118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->removeDuplicateEvent(J)V

    goto/16 :goto_3

    .line 4152
    :cond_14
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v5, v6, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    .line 4153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4154
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 4158
    .end local v5           #id:J
    .end local v12           #accountType:Ljava/lang/String;
    .end local v15           #color_id:Ljava/lang/String;
    .end local v17           #doValidate:Z
    .end local v19           #isUpdate:Z
    .end local v20           #modValues:Landroid/content/ContentValues;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_15
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    return v3
.end method

.method private inExclusiveAccountTypes(Ljava/lang/String;)Z
    .locals 5
    .parameter "input_account_type"

    .prologue
    .line 5273
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->exlusive_accounts:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 5274
    .local v0, account_type:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5275
    const/4 v4, 0x1

    .line 5277
    .end local v0           #account_type:Ljava/lang/String;
    :goto_1
    return v4

    .line 5273
    .restart local v0       #account_type:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5277
    .end local v0           #account_type:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private initialize()Z
    .locals 4

    .prologue
    .line 610
    sput-object p0, Lcom/android/providers/calendar/CalendarProvider2;->mInstance:Lcom/android/providers/calendar/CalendarProvider2;

    .line 612
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    .line 613
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    .line 615
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 616
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 618
    new-instance v1, Lcom/android/providers/calendar/MetaData;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/MetaData;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 619
    new-instance v1, Lcom/android/providers/calendar/CalendarInstancesHelper;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-direct {v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;-><init>(Lcom/android/providers/calendar/CalendarDatabaseHelper;Lcom/android/providers/calendar/MetaData;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    .line 622
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 624
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 634
    new-instance v1, Lcom/android/providers/calendar/CalendarCache;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 636
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCalendarCache to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->initCalendarAlarm()V

    .line 641
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->postInitialize()V

    .line 643
    const/4 v1, 0x1

    return v1
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "selectionArgs"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5360
    if-nez p1, :cond_0

    .line 5361
    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 5367
    :goto_0
    return-object v1

    .line 5363
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 5364
    .local v0, newLength:I
    new-array v1, v0, [Ljava/lang/String;

    .line 5365
    .local v1, newSelectionArgs:[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 5366
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private isLocalSameAsInstancesTimezone()Z
    .locals 2

    .prologue
    .line 709
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, localTimezone:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "rrule"
    .parameter "rdate"
    .parameter "originalId"
    .parameter "originalSyncId"

    .prologue
    .line 1660
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyCalendarSubscription(JZ)V
    .locals 15
    .parameter "id"
    .parameter "syncEvents"

    .prologue
    .line 4736
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "account_name"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "account_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "cal_sync1"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "sync_events"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4743
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 4744
    .local v8, account:Landroid/accounts/Account;
    const/4 v12, 0x0

    .line 4745
    .local v12, calendarUrl:Ljava/lang/String;
    const/4 v14, 0x0

    .line 4746
    .local v14, oldSyncEvents:Z
    if-eqz v13, :cond_1

    .line 4748
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4749
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4750
    .local v10, accountName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4751
    .local v11, accountType:Ljava/lang/String;
    const-string v2, "CalendarProvider2"

    const-string v3, "modifyCalendarSubscription name:%s type:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4753
    .end local v8           #account:Landroid/accounts/Account;
    .local v9, account:Landroid/accounts/Account;
    const/4 v2, 0x2

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4754
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    const/4 v14, 0x1

    :goto_0
    move-object v8, v9

    .line 4759
    .end local v9           #account:Landroid/accounts/Account;
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountType:Ljava/lang/String;
    .restart local v8       #account:Landroid/accounts/Account;
    :cond_0
    invoke-virtual {p0, v13}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 4764
    :cond_1
    if-nez v8, :cond_4

    .line 4766
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4767
    const-string v2, "CalendarProvider2"

    const-string v3, "Cannot update subscription because account is empty -- should not happen."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    :cond_2
    :goto_1
    return-void

    .line 4754
    .end local v8           #account:Landroid/accounts/Account;
    .restart local v9       #account:Landroid/accounts/Account;
    .restart local v10       #accountName:Ljava/lang/String;
    .restart local v11       #accountType:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 4759
    .end local v9           #account:Landroid/accounts/Account;
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountType:Ljava/lang/String;
    .restart local v8       #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v2

    :goto_2
    invoke-virtual {p0, v13}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .line 4774
    :cond_4
    iget-object v2, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->inExclusiveAccountTypes(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4775
    const-string v2, "CalendarProvider2"

    const-string v3, "Skip modifyCalendarSubscription in PC Sync Calendar"

    invoke-static {v2, v3}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4780
    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4783
    const/4 v12, 0x0

    .line 4786
    :cond_6
    move/from16 v0, p3

    if-eq v14, v0, :cond_2

    .line 4793
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez p3, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v8, v2, v12}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 4759
    .end local v8           #account:Landroid/accounts/Account;
    .restart local v9       #account:Landroid/accounts/Account;
    .restart local v10       #accountName:Ljava/lang/String;
    .restart local v11       #accountType:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #account:Landroid/accounts/Account;
    .restart local v8       #account:Landroid/accounts/Account;
    goto :goto_2
.end method

.method private regenerateInstancesTable()V
    .locals 22

    .prologue
    .line 878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 879
    .local v19, now:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v15

    .line 880
    .local v15, instancesTimezone:Ljava/lang/String;
    new-instance v21, Landroid/text/format/Time;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 881
    .local v21, time:Landroid/text/format/Time;
    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 882
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 883
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 884
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 885
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 887
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 888
    .local v5, begin:J
    const-wide v3, 0x13f4a4800L

    add-long v7, v5, v3

    .line 890
    .local v7, end:J
    const/16 v17, 0x0

    .line 892
    .local v17, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v10, "_id"

    aput-object v10, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v16

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v16}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 913
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms()V

    .line 914
    return-void

    .line 902
    :catch_0
    move-exception v18

    .line 903
    .local v18, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CalendarProvider2"

    const-string v4, "Error on regenerateInstancesTable"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v3
.end method

.method private removeStaleAccounts([Landroid/accounts/Account;)V
    .locals 13
    .parameter "accounts"

    .prologue
    .line 5284
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_0

    .line 5285
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v10}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    iput-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 5287
    :cond_0
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_1

    .line 5349
    :goto_0
    return-void

    .line 5291
    :cond_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 5292
    .local v9, validAccounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/accounts/Account;>;"
    move-object v2, p1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    .line 5293
    .local v0, account:Landroid/accounts/Account;
    new-instance v10, Landroid/accounts/Account;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5292
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5295
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5297
    .local v1, accountsToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5298
    const/4 v3, 0x0

    .line 5301
    .local v3, c:Landroid/database/Cursor;
    const/4 v10, 0x2

    :try_start_0
    new-array v2, v10, [Ljava/lang/String;

    .end local v2           #arr$:[Landroid/accounts/Account;
    const/4 v10, 0x0

    const-string v11, "Calendars"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "Colors"

    aput-object v11, v2, v10

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v8, v2, v5

    .line 5304
    .local v8, table:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT DISTINCT account_name,account_type,ishTCCustomizedCalendar FROM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5311
    :cond_3
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5312
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 5314
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->inExclusiveAccountTypes(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    .line 5319
    new-instance v4, Landroid/accounts/Account;

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5320
    .local v4, currAccount:Landroid/accounts/Account;
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 5321
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 5343
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #currAccount:Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v8           #table:Ljava/lang/String;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5344
    invoke-virtual {p0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v10

    .line 5327
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v8       #table:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 5301
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5331
    .end local v8           #table:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 5332
    .restart local v0       #account:Landroid/accounts/Account;
    const-string v10, "CalendarProvider2"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5333
    const-string v10, "CalendarProvider2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removing data for removed account "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    :cond_6
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x1

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v7, v10

    .line 5336
    .local v7, params:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "DELETE FROM Calendars WHERE account_name=? AND account_type=?"

    invoke-virtual {v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5338
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "DELETE FROM Colors WHERE account_name=? AND account_type=?"

    invoke-virtual {v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 5340
    .end local v0           #account:Landroid/accounts/Account;
    .end local v7           #params:[Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v10}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v10

    iget-object v11, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10, v11, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 5341
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5343
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5344
    invoke-virtual {p0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 5348
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0
.end method

.method private scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 10
    .parameter "values"
    .parameter "modValues"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2607
    const-string v8, "dtend"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 2608
    .local v0, hasDtend:Z
    :goto_0
    const-string v8, "duration"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v1, v6

    .line 2609
    .local v1, hasDuration:Z
    :goto_1
    const-string v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move v5, v6

    .line 2610
    .local v5, hasRrule:Z
    :goto_2
    const-string v8, "rdate"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move v4, v6

    .line 2611
    .local v4, hasRdate:Z
    :goto_3
    const-string v8, "original_sync_id"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    move v2, v6

    .line 2612
    .local v2, hasOriginalEvent:Z
    :goto_4
    const-string v8, "originalInstanceTime"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_6

    move v3, v6

    .line 2613
    .local v3, hasOriginalInstanceTime:Z
    :goto_5
    if-nez v5, :cond_0

    if-eqz v4, :cond_c

    .line 2622
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->validateRecurrenceRule(Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2623
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid recurrence rule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0           #hasDtend:Z
    .end local v1           #hasDuration:Z
    .end local v2           #hasOriginalEvent:Z
    .end local v3           #hasOriginalInstanceTime:Z
    .end local v4           #hasRdate:Z
    .end local v5           #hasRrule:Z
    :cond_1
    move v0, v7

    .line 2607
    goto :goto_0

    .restart local v0       #hasDtend:Z
    :cond_2
    move v1, v7

    .line 2608
    goto :goto_1

    .restart local v1       #hasDuration:Z
    :cond_3
    move v5, v7

    .line 2609
    goto :goto_2

    .restart local v5       #hasRrule:Z
    :cond_4
    move v4, v7

    .line 2610
    goto :goto_3

    .restart local v4       #hasRdate:Z
    :cond_5
    move v2, v7

    .line 2611
    goto :goto_4

    .restart local v2       #hasOriginalEvent:Z
    :cond_6
    move v3, v7

    .line 2612
    goto :goto_5

    .line 2626
    .restart local v3       #hasOriginalInstanceTime:Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    if-nez v2, :cond_8

    if-eqz v3, :cond_b

    .line 2627
    :cond_8
    const-string v6, "CalendarProvider2"

    const-string v7, "Scrubbing DTEND, ORIGINAL_SYNC_ID, ORIGINAL_INSTANCE_TIME"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    const-string v6, "CalendarProvider2"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2629
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid values for recurrence: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_9
    const-string v6, "original_sync_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2635
    const-string v6, "originalInstanceTime"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2636
    if-eqz p2, :cond_a

    .line 2640
    const-string v6, "original_sync_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2641
    const-string v6, "originalInstanceTime"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2643
    :cond_a
    const-string v6, "CalendarProvider2"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2644
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid values for recurrence: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_b
    :goto_6
    return-void

    .line 2647
    :cond_c
    if-nez v2, :cond_d

    if-eqz v3, :cond_10

    .line 2656
    :cond_d
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    if-eqz v2, :cond_e

    if-nez v3, :cond_b

    .line 2657
    :cond_e
    const-string v6, "CalendarProvider2"

    const-string v7, "Scrubbing DURATION"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const-string v6, "CalendarProvider2"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2659
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid values for recurrence exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :cond_f
    const-string v6, "duration"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2662
    if-eqz p2, :cond_b

    .line 2663
    const-string v6, "duration"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6

    .line 2675
    :cond_10
    if-eqz v0, :cond_11

    if-eqz v1, :cond_b

    .line 2676
    :cond_11
    const-string v6, "CalendarProvider2"

    const-string v7, "Scrubbing DURATION"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    const-string v6, "CalendarProvider2"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2678
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid values for event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    :cond_12
    const-string v6, "duration"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2681
    if-eqz p2, :cond_b

    .line 2682
    const-string v6, "duration"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private setEventDirty(J)V
    .locals 5
    .parameter "eventId"

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE Events SET dirty=1 WHERE _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2732
    return-void
.end method

.method private setHasAlarm(JI)V
    .locals 9
    .parameter "eventId"
    .parameter "val"

    .prologue
    const/4 v8, 0x1

    .line 3001
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3002
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "hasAlarm"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3003
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3005
    .local v0, count:I
    if-eq v0, v8, :cond_0

    .line 3006
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHasAlarm on event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows (expected 1)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :cond_0
    return-void
.end method

.method private static setRecurrenceEnd(Landroid/content/ContentValues;J)Landroid/content/ContentValues;
    .locals 18
    .parameter "values"
    .parameter "endTimeMillis"

    .prologue
    .line 1775
    const-string v6, "allDay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1776
    .local v10, origAllDay:Z
    const-string v6, "rrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1778
    .local v12, origRrule:Ljava/lang/String;
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v11}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 1779
    .local v11, origRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    invoke-virtual {v11, v12}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1782
    const-string v6, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1783
    .local v4, startTimeMillis:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1784
    .local v2, dtstart:Landroid/text/format/Time;
    const-string v6, "eventTimezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1785
    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1787
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1789
    .local v15, updateValues:Landroid/content/ContentValues;
    iget v6, v11, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-lez v6, :cond_1

    .line 1796
    new-instance v3, Lcom/android/calendarcommon/RecurrenceSet;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendarcommon/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V

    .line 1797
    .local v3, recurSet:Lcom/android/calendarcommon/RecurrenceSet;
    new-instance v1, Lcom/android/calendarcommon/RecurrenceProcessor;

    invoke-direct {v1}, Lcom/android/calendarcommon/RecurrenceProcessor;-><init>()V

    .local v1, recurProc:Lcom/android/calendarcommon/RecurrenceProcessor;
    move-wide/from16 v6, p1

    .line 1800
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J
    :try_end_0
    .catch Lcom/android/calendarcommon/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1805
    .local v13, recurrences:[J
    array-length v6, v13

    if-nez v6, :cond_0

    .line 1806
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "can\'t use this method on first instance"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1801
    .end local v13           #recurrences:[J
    :catch_0
    move-exception v8

    .line 1802
    .local v8, de:Lcom/android/calendarcommon/DateException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1809
    .end local v8           #de:Lcom/android/calendarcommon/DateException;
    .restart local v13       #recurrences:[J
    :cond_0
    new-instance v9, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v9}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 1810
    .local v9, excepRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    invoke-virtual {v9, v12}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1811
    iget v6, v9, Lcom/android/calendarcommon/EventRecurrence;->count:I

    array-length v7, v13

    sub-int/2addr v6, v7

    iput v6, v9, Lcom/android/calendarcommon/EventRecurrence;->count:I

    .line 1812
    const-string v6, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    array-length v6, v13

    iput v6, v11, Lcom/android/calendarcommon/EventRecurrence;->count:I

    .line 1841
    .end local v1           #recurProc:Lcom/android/calendarcommon/RecurrenceProcessor;
    .end local v3           #recurSet:Lcom/android/calendarcommon/RecurrenceSet;
    .end local v9           #excepRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    .end local v13           #recurrences:[J
    :goto_0
    const-string v6, "rrule"

    invoke-virtual {v11}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v6, "dtstart"

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1843
    return-object v15

    .line 1817
    :cond_1
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1823
    .local v14, untilTime:Landroid/text/format/Time;
    const-string v6, "UTC"

    iput-object v6, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1826
    const-wide/16 v6, 0x3e8

    sub-long v6, p1, v6

    invoke-virtual {v14, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1827
    if-eqz v10, :cond_2

    .line 1828
    const/4 v6, 0x0

    iput v6, v14, Landroid/text/format/Time;->second:I

    iput v6, v14, Landroid/text/format/Time;->minute:I

    iput v6, v14, Landroid/text/format/Time;->hour:I

    .line 1829
    const/4 v6, 0x1

    iput-boolean v6, v14, Landroid/text/format/Time;->allDay:Z

    .line 1830
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1834
    const/4 v6, 0x0

    iput v6, v2, Landroid/text/format/Time;->second:I

    iput v6, v2, Landroid/text/format/Time;->minute:I

    iput v6, v2, Landroid/text/format/Time;->hour:I

    .line 1835
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/text/format/Time;->allDay:Z

    .line 1836
    const-string v6, "UTC"

    iput-object v6, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1838
    :cond_2
    invoke-virtual {v14}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 22
    .parameter "db"
    .parameter "attendeeValues"

    .prologue
    .line 2886
    const-string v2, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 2887
    .local v16, eventIdObj:Ljava/lang/Long;
    if-nez v16, :cond_1

    .line 2888
    const-string v2, "CalendarProvider2"

    const-string v3, "Attendee update values don\'t include an event_id"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_0
    :goto_0
    return-void

    .line 2891
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2895
    .local v14, eventId:J
    const/4 v12, 0x0

    .line 2898
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "calendar_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2903
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2904
    :cond_2
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2905
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Events table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2917
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2909
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 2917
    .local v9, calId:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 2922
    const/4 v11, 0x0

    .line 2923
    .local v11, calendarEmail:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2925
    :try_start_2
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "ownerAccount"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2930
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2931
    :cond_5
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2932
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in Calendars table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2944
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2917
    .end local v9           #calId:J
    .end local v11           #calendarEmail:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .line 2936
    .restart local v9       #calId:J
    .restart local v11       #calendarEmail:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 2944
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 2948
    if-eqz v11, :cond_0

    .line 2953
    const/4 v8, 0x0

    .line 2954
    .local v8, attendeeEmail:Ljava/lang/String;
    const-string v2, "attendeeEmail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2955
    const-string v2, "attendeeEmail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2961
    :cond_8
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2967
    const/16 v19, 0x0

    .line 2968
    .local v19, status:I
    const-string v2, "attendeeRelationship"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 2969
    .local v18, relationObj:Ljava/lang/Integer;
    if-eqz v18, :cond_9

    .line 2970
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 2971
    .local v17, rel:I
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 2972
    const/16 v19, 0x1

    .line 2977
    .end local v17           #rel:I
    :cond_9
    const-string v2, "attendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 2978
    .local v20, statusObj:Ljava/lang/Integer;
    if-eqz v20, :cond_a

    .line 2979
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 2982
    :cond_a
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2983
    .local v21, values:Landroid/content/ContentValues;
    const-string v2, "selfAttendeeStatus"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2986
    :try_start_4
    const-string v2, "Events"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 2988
    :catch_0
    move-exception v13

    .line 2989
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "CalendarProvider2"

    const-string v3, "update error"

    invoke-static {v2, v3, v13}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2944
    .end local v8           #attendeeEmail:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #relationObj:Ljava/lang/Integer;
    .end local v19           #status:I
    .end local v20           #statusObj:Ljava/lang/Integer;
    .end local v21           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v2
.end method

.method private updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 23
    .parameter "uri"
    .parameter "table"
    .parameter "byId"
    .parameter "updateValues"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 3689
    if-eqz p3, :cond_3

    .line 3690
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3691
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3693
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 3694
    .local v20, rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-gez v2, :cond_1

    .line 3695
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID expected but not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3697
    :cond_1
    const-string p5, "_id=?"

    .line 3698
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 p6, v0

    .end local p6
    const/4 v2, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p6, v2

    .line 3709
    .end local v20           #rowId:J
    .restart local p6
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3711
    .local v10, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 3713
    .local v11, count:I
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 3714
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No query results for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectionArgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3716
    const/4 v2, 0x0

    .line 3784
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 3787
    :goto_0
    return v2

    .line 3700
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #count:I
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3701
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection is required for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3719
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #count:I
    :cond_4
    const/4 v12, 0x0

    .line 3720
    .local v12, dirtyValues:Landroid/content/ContentValues;
    if-nez p7, :cond_5

    .line 3721
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    .end local v12           #dirtyValues:Landroid/content/ContentValues;
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3722
    .restart local v12       #dirtyValues:Landroid/content/ContentValues;
    const-string v2, "dirty"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    :cond_5
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3726
    .local v19, idIndex:I
    const-string v2, "event_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 3727
    .local v16, eventIdIndex:I
    if-ltz v19, :cond_6

    if-gez v16, :cond_7

    .line 3728
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lookup on _id/event_id failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3775
    .end local v12           #dirtyValues:Landroid/content/ContentValues;
    .end local v16           #eventIdIndex:I
    .end local v19           #idIndex:I
    :catch_0
    move-exception v13

    .line 3776
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CalendarProvider2"

    const-string v3, "error"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3784
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .end local v13           #e:Ljava/lang/Exception;
    :goto_1
    move v2, v11

    .line 3787
    goto :goto_0

    .line 3738
    .restart local v12       #dirtyValues:Landroid/content/ContentValues;
    .restart local v16       #eventIdIndex:I
    .restart local v19       #idIndex:I
    :cond_7
    :goto_2
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3740
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 3741
    .local v22, values:Landroid/content/ContentValues;
    move-object/from16 v0, v22

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3742
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3744
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 3745
    .local v17, id:J
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3746
    .local v14, eventId:J
    if-nez p7, :cond_8

    .line 3748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2, v14, v15}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 3750
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3751
    if-nez p7, :cond_9

    .line 3752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3755
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 3770
    const-string v2, "Attendees"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 3784
    .end local v12           #dirtyValues:Landroid/content/ContentValues;
    .end local v14           #eventId:J
    .end local v16           #eventIdIndex:I
    .end local v17           #id:J
    .end local v19           #idIndex:I
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    .restart local v12       #dirtyValues:Landroid/content/ContentValues;
    .restart local v16       #eventIdIndex:I
    .restart local v19       #idIndex:I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method private updateEventsStartEndFromEventRawTimesLocked()V
    .locals 10

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "SELECT event_id, dtstart2445, dtend2445, eventTimezone FROM EventsRawTimes, Events WHERE event_id = Events._id"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 768
    .local v6, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 769
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 770
    .local v1, eventId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, dtStart2445:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, dtEnd2445:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, eventTimezone:Ljava/lang/String;
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 774
    const-string v0, "CalendarProvider2"

    const/4 v8, 0x6

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has dtStart2445 and dtEnd2445 null "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "at the same time in EventsRawTimes!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    .end local v1           #eventId:J
    .end local v3           #eventTimezone:Ljava/lang/String;
    .end local v4           #dtStart2445:Ljava/lang/String;
    .end local v5           #dtEnd2445:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 788
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarProvider2"

    const-string v8, "Error on updateEventsStartEndFromEventRawTimesLocked"

    invoke-static {v0, v8, v7}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    invoke-virtual {p0, v6}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    .line 797
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .restart local v1       #eventId:J
    .restart local v3       #eventTimezone:Ljava/lang/String;
    .restart local v4       #dtStart2445:Ljava/lang/String;
    .restart local v5       #dtEnd2445:Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 780
    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 794
    .end local v1           #eventId:J
    .end local v3           #eventTimezone:Ljava/lang/String;
    .end local v4           #dtStart2445:Ljava/lang/String;
    .end local v5           #dtEnd2445:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method private updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "eventId"
    .parameter "timezone"
    .parameter "dtStart2445"
    .parameter "dtEnd2445"

    .prologue
    .line 821
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 822
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "dtstart"

    invoke-direct {p0, p3, p4}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 823
    const-string v2, "dtend"

    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 827
    .local v0, result:I
    if-nez v0, :cond_0

    .line 828
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not update Events table with values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    return-void
.end method

.method private updateTimezoneDatabaseVersion(Ljava/lang/String;)V
    .locals 3
    .parameter "timeZoneDatabaseVersion"

    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneDatabaseVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    const-string v1, "CalendarProvider2"

    const-string v2, "Could not write timezone database version in the cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private validateRecurrenceRule(Landroid/content/ContentValues;)Z
    .locals 11
    .parameter "values"

    .prologue
    .line 2579
    const-string v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2581
    .local v6, rrule:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2582
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2583
    .local v7, ruleList:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 2584
    .local v5, recur:Ljava/lang/String;
    new-instance v1, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 2586
    .local v1, er:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2587
    :catch_0
    move-exception v3

    .line 2588
    .local v3, ife:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid recurrence rule: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/4 v8, 0x0

    .line 2594
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #er:Lcom/android/calendarcommon/EventRecurrence;
    .end local v2           #i$:I
    .end local v3           #ife:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    .end local v4           #len$:I
    .end local v5           #recur:Ljava/lang/String;
    .end local v7           #ruleList:[Ljava/lang/String;
    :goto_1
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "accountName"
    .parameter "accountType"
    .parameter "color_index"
    .parameter "color_type"

    .prologue
    .line 4458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4459
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set color. A valid account does not exist for this calendar."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4463
    :cond_1
    const/4 v0, 0x0

    .line 4465
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->getColorByIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4466
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, p4, :cond_4

    .line 4467
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color does not exist for account or is the wrong type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4472
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 4473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 4470
    :cond_4
    const/4 v2, 0x4

    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 4472
    .local v1, color:I
    if-eqz v0, :cond_5

    .line 4473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4476
    :cond_5
    return v1
.end method

.method private verifyColumns(Landroid/content/ContentValues;I)V
    .locals 5
    .parameter "values"
    .parameter "uriMatch"

    .prologue
    .line 4679
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4700
    :cond_0
    return-void

    .line 4683
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 4691
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->PROVIDER_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4695
    .local v0, columns:[Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4696
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4697
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only the provider may write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4688
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #i:I
    :sswitch_0
    sget-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 4689
    .restart local v0       #columns:[Ljava/lang/String;
    goto :goto_0

    .line 4695
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4683
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 4663
    const-string v2, "account_name"

    invoke-static {p1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4664
    .local v0, accountName:Ljava/lang/String;
    const-string v2, "account_type"

    invoke-static {p1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4666
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4667
    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "account_name=? AND account_type=?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4668
    const/4 v2, 0x0

    aget-object v0, p3, v2

    .line 4669
    const/4 v2, 0x1

    aget-object v1, p3, v2

    .line 4672
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4673
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync adapters must specify an account and account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4676
    :cond_3
    return-void
.end method

.method private verifyNoSyncColumns(Landroid/content/ContentValues;I)V
    .locals 5
    .parameter "values"
    .parameter "uriMatch"

    .prologue
    .line 4703
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4731
    :cond_0
    return-void

    .line 4707
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 4721
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->SYNC_WRITABLE_DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 4725
    .local v1, syncColumns:[Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4726
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4727
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only sync adapters may write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4712
    .end local v0           #i:I
    .end local v1           #syncColumns:[Ljava/lang/String;
    :sswitch_0
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 4713
    .restart local v1       #syncColumns:[Ljava/lang/String;
    goto :goto_0

    .line 4718
    .end local v1           #syncColumns:[Ljava/lang/String;
    :sswitch_1
    sget-object v1, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 4719
    .restart local v1       #syncColumns:[Ljava/lang/String;
    goto :goto_0

    .line 4725
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4707
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method private verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "isSyncAdapter"
    .parameter "uriMatch"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v1, 0x3

    .line 4566
    if-nez p1, :cond_1

    .line 4660
    :cond_0
    :goto_0
    return-void

    .line 4570
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 4572
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4575
    sparse-switch p5, :sswitch_data_0

    .line 4588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4593
    :cond_3
    sparse-switch p5, :sswitch_data_1

    .line 4607
    :cond_4
    :sswitch_0
    if-nez p4, :cond_5

    .line 4608
    sparse-switch p5, :sswitch_data_2

    .line 4620
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4622
    :pswitch_0
    if-ne p5, v1, :cond_6

    .line 4623
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Inserting into instances not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4598
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection must be specified for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4614
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only sync adapters may write using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4627
    :cond_6
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColumns(Landroid/content/ContentValues;I)V

    .line 4628
    if-eqz p4, :cond_7

    .line 4630
    invoke-direct {p0, p2, p6, p7}, Lcom/android/providers/calendar/CalendarProvider2;->verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 4633
    :cond_7
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyNoSyncColumns(Landroid/content/ContentValues;I)V

    goto :goto_0

    .line 4637
    :pswitch_1
    if-ne p5, v1, :cond_8

    .line 4638
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Updating instances not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4641
    :cond_8
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColumns(Landroid/content/ContentValues;I)V

    .line 4642
    if-eqz p4, :cond_9

    .line 4644
    invoke-direct {p0, p2, p6, p7}, Lcom/android/providers/calendar/CalendarProvider2;->verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4647
    :cond_9
    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyNoSyncColumns(Landroid/content/ContentValues;I)V

    goto/16 :goto_0

    .line 4651
    :pswitch_2
    if-ne p5, v1, :cond_a

    .line 4652
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deleting instances not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4654
    :cond_a
    if-eqz p4, :cond_0

    .line 4656
    invoke-direct {p0, p2, p6, p7}, Lcom/android/providers/calendar/CalendarProvider2;->verifyHasAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4575
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0x10 -> :sswitch_0
        0x1c -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch

    .line 4593
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0x1c -> :sswitch_1
    .end sparse-switch

    .line 4608
    :sswitch_data_2
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x21 -> :sswitch_2
    .end sparse-switch

    .line 4620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acquireInstanceRange(JJZZLjava/lang/String;Z)V
    .locals 2
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1481
    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 1483
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1487
    return-void

    .line 1485
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V
    .locals 31
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1502
    move-wide/from16 v3, p1

    .line 1503
    .local v3, expandBegin:J
    move-wide/from16 v5, p3

    .line 1510
    .local v5, expandEnd:J
    if-nez p7, :cond_1

    .line 1511
    const-string v2, "CalendarProvider2"

    const-string v7, "Cannot run acquireInstanceRangeLocked() because instancesTimezone is null"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    if-eqz p5, :cond_2

    .line 1519
    sub-long v27, p3, p1

    .line 1520
    .local v27, span:J
    const-wide v7, 0x13f4a4800L

    cmp-long v2, v27, v7

    if-gez v2, :cond_2

    .line 1521
    const-wide v7, 0x13f4a4800L

    sub-long v7, v7, v27

    const-wide/16 v15, 0x2

    div-long v21, v7, v15

    .line 1522
    .local v21, additionalRange:J
    sub-long v3, v3, v21

    .line 1523
    add-long v5, v5, v21

    .line 1530
    .end local v21           #additionalRange:J
    .end local v27           #span:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v23

    .line 1531
    .local v23, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v23

    iget-wide v13, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 1532
    .local v13, maxInstance:J
    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 1534
    .local v10, minInstance:J
    if-eqz p8, :cond_7

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v26

    .line 1536
    .local v26, previousTimezone:Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v29, 0x1

    .line 1547
    .end local v26           #previousTimezone:Ljava/lang/String;
    .local v29, timezoneChanged:Z
    :cond_3
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v2, v13, v7

    if-eqz v2, :cond_4

    if-nez v29, :cond_4

    if-eqz p6, :cond_9

    .line 1553
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "DELETE FROM Instances;"

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1555
    const-string v2, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquireInstanceRangeLocked() deleted Instances, timezone changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarInstancesHelper;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object/from16 v8, p7

    move-wide v9, v3

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v30

    .line 1566
    .local v30, timezoneType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 1569
    const-string v2, "auto"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v25

    .line 1571
    .local v25, prevTZ:Ljava/lang/String;
    const-string v2, "GMT"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1536
    .end local v25           #prevTZ:Ljava/lang/String;
    .end local v29           #timezoneChanged:Z
    .end local v30           #timezoneType:Ljava/lang/String;
    .restart local v26       #previousTimezone:Ljava/lang/String;
    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 1538
    .end local v26           #previousTimezone:Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v24

    .line 1539
    .local v24, localTimezone:Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v29, 0x1

    .line 1541
    .restart local v29       #timezoneChanged:Z
    :goto_2
    if-eqz v29, :cond_3

    .line 1542
    move-object/from16 p7, v24

    goto/16 :goto_1

    .line 1539
    .end local v29           #timezoneChanged:Z
    :cond_8
    const/16 v29, 0x0

    goto :goto_2

    .line 1589
    .end local v24           #localTimezone:Ljava/lang/String;
    .restart local v29       #timezoneChanged:Z
    :cond_9
    cmp-long v2, p1, v10

    if-ltz v2, :cond_a

    cmp-long v2, p3, v13

    if-gtz v2, :cond_a

    .line 1593
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1594
    const-string v2, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Canceled instance query ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") falls within previously expanded range."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1602
    :cond_a
    cmp-long v2, p1, v10

    if-gez v2, :cond_b

    .line 1603
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    move-wide v8, v3

    move-object/from16 v12, p7

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/calendar/CalendarInstancesHelper;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1604
    move-wide v10, v3

    .line 1609
    :cond_b
    cmp-long v2, p3, v13

    if-lez v2, :cond_c

    .line 1610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    move-wide v15, v5

    move-object/from16 v17, p7

    invoke-virtual/range {v12 .. v17}, Lcom/android/providers/calendar/CalendarInstancesHelper;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1611
    move-wide v13, v5

    .line 1615
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object/from16 v16, p7

    move-wide/from16 v17, v10

    move-wide/from16 v19, v13

    invoke-virtual/range {v15 .. v20}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    goto/16 :goto_0
.end method

.method protected appendPlaintextValue(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 2237
    if-nez p1, :cond_1

    .line 2249
    :cond_0
    :goto_0
    return-void

    .line 2240
    :cond_1
    :try_start_0
    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2241
    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2242
    .local v0, description:Ljava/lang/String;
    const-string v2, "plaintext_description"

    invoke-static {v0}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2244
    .end local v0           #description:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2245
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2246
    const-string v2, "CalendarProvider2"

    const-string v3, "appendPlaintextValue error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method calculateLastDate(Landroid/content/ContentValues;)J
    .locals 16
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 3028
    const-string v13, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3029
    const-string v13, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "rdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "exrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "exdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3035
    :cond_0
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "DTSTART field missing from event"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3037
    :cond_1
    const-wide/16 v8, -0x1

    .line 3103
    :cond_2
    :goto_0
    return-wide v8

    .line 3039
    :cond_3
    const-string v13, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3040
    .local v3, dtstartMillis:J
    const-wide/16 v8, -0x1

    .line 3047
    .local v8, lastMillis:J
    const-string v13, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 3048
    .local v1, dtEnd:Ljava/lang/Long;
    if-eqz v1, :cond_4

    .line 3049
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_0

    .line 3052
    :cond_4
    new-instance v5, Lcom/android/providers/calendar/Duration;

    invoke-direct {v5}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 3053
    .local v5, duration:Lcom/android/providers/calendar/Duration;
    const-string v13, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3054
    .local v6, durationStr:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 3055
    invoke-virtual {v5, v6}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V

    .line 3058
    :cond_5
    const/4 v10, 0x0

    .line 3060
    .local v10, recur:Lcom/android/calendarcommon/RecurrenceSet;
    :try_start_0
    new-instance v10, Lcom/android/calendarcommon/RecurrenceSet;

    .end local v10           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/calendarcommon/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3076
    .restart local v10       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/calendarcommon/RecurrenceSet;->hasRecurrence()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3080
    const-string v13, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3082
    .local v12, tz:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3084
    const-string v12, "UTC"

    .line 3086
    :cond_6
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3088
    .local v2, dtstartLocal:Landroid/text/format/Time;
    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 3090
    new-instance v11, Lcom/android/calendarcommon/RecurrenceProcessor;

    invoke-direct {v11}, Lcom/android/calendarcommon/RecurrenceProcessor;-><init>()V

    .line 3091
    .local v11, rp:Lcom/android/calendarcommon/RecurrenceProcessor;
    invoke-virtual {v11, v2, v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J

    move-result-wide v8

    .line 3092
    const-wide/16 v13, -0x1

    cmp-long v13, v8, v13

    if-eqz v13, :cond_2

    .line 3101
    .end local v2           #dtstartLocal:Landroid/text/format/Time;
    .end local v11           #rp:Lcom/android/calendarcommon/RecurrenceProcessor;
    .end local v12           #tz:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v8, v9}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v8

    goto :goto_0

    .line 3061
    .end local v10           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    :catch_0
    move-exception v7

    .line 3062
    .local v7, e:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    const-string v13, "CalendarProvider2"

    const/4 v14, 0x5

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3063
    const-string v13, "CalendarProvider2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not parse RRULE recurrence string: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3069
    .end local v7           #e:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    :catch_1
    move-exception v7

    .line 3070
    .local v7, e:Ljava/lang/Exception;
    const-string v13, "CalendarProvider2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RecurrenceSet is error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3097
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    :cond_7
    move-wide v8, v3

    goto :goto_1
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 5385
    if-eqz p1, :cond_1

    .line 5386
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5387
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 5389
    :cond_0
    const/4 p1, 0x0

    .line 5391
    :cond_1
    return-void
.end method

.method constructSearchArgs([Ljava/lang/String;JJ)[Ljava/lang/String;
    .locals 8
    .parameter "tokens"
    .parameter "rangeBegin"
    .parameter "rangeEnd"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1369
    sget-object v6, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v6

    .line 1370
    .local v3, numCols:I
    array-length v6, p1

    mul-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x2

    .line 1372
    .local v2, numArgs:I
    new-array v4, v2, [Ljava/lang/String;

    .line 1373
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1374
    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1375
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    .line 1376
    mul-int v6, v3, v1

    add-int/lit8 v5, v6, 0x2

    .line 1377
    .local v5, start:I
    move v0, v5

    .local v0, i:I
    :goto_1
    add-int v6, v5, v3

    if-ge v0, v6, :cond_0

    .line 1378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1375
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    .end local v0           #i:I
    .end local v5           #start:I
    :cond_1
    return-object v4
.end method

.method constructSearchWhere([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tokens"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1343
    array-length v3, p1

    if-nez v3, :cond_0

    .line 1344
    const-string v3, ""

    .line 1364
    :goto_0
    return-object v3

    .line 1346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1348
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 1349
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1351
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    const-string v3, " LIKE ? ESCAPE \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 1356
    const-string v3, "OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1359
    :cond_2
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 1361
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1364
    .end local v0           #i:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected createAttendeeEntry(JILjava/lang/String;)V
    .locals 3
    .parameter "eventId"
    .parameter "status"
    .parameter "emailAddress"

    .prologue
    .line 2861
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2862
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2863
    const-string v1, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2864
    const-string v1, "attendeeType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2867
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2869
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    .line 2874
    return-void
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 30
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 3202
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3203
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    :cond_0
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 3206
    .local v9, match:I
    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p4

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V

    .line 3208
    packed-switch v9, :pswitch_data_0

    .line 3382
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3210
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 3375
    :goto_0
    return v25

    .line 3213
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_1

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 3216
    .local v28, selectionWithId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 3218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto :goto_0

    .line 3213
    .end local v28           #selectionWithId:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3222
    :pswitch_3
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/providers/calendar/CalendarProvider2;->deleteMatchingColors(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto :goto_0

    .line 3227
    :pswitch_4
    const/16 v25, 0x0

    .line 3228
    .local v25, result:I
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendSyncAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3231
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "view_events"

    sget-object v12, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 3235
    .local v18, cursor:Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3236
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 3237
    .local v23, id:J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v4

    add-int v25, v25, v4

    .line 3238
    goto :goto_2

    .line 3239
    .end local v23           #id:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 3240
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3247
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v4

    .line 3254
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v25           #result:I
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3255
    .restart local v23       #id:J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v25

    goto/16 :goto_0

    .line 3261
    .end local v23           #id:J
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    .line 3262
    .local v26, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 3263
    .local v19, eventId:J
    const/4 v4, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 3266
    .local v21, excepId:J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v25

    goto/16 :goto_0

    .line 3270
    .end local v19           #eventId:J
    .end local v21           #excepId:J
    .end local v26           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    if-eqz p4, :cond_3

    .line 3271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Attendees"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3273
    :cond_3
    const-string v4, "Attendees"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3279
    :pswitch_8
    if-eqz p4, :cond_4

    .line 3280
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3281
    .restart local v23       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Attendees"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3284
    .end local v23           #id:J
    :cond_4
    const-string v4, "Attendees"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3291
    :pswitch_9
    const/4 v12, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->deleteReminders(Landroid/net/Uri;ZLjava/lang/String;[Ljava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 3296
    :pswitch_a
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->deleteReminders(Landroid/net/Uri;ZLjava/lang/String;[Ljava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 3302
    :pswitch_b
    if-eqz p4, :cond_5

    .line 3303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ExtendedProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3305
    :cond_5
    const-string v4, "ExtendedProperties"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3311
    :pswitch_c
    if-eqz p4, :cond_6

    .line 3312
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3313
    .restart local v23       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ExtendedProperties"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3316
    .end local v23           #id:J
    :cond_6
    const-string v4, "ExtendedProperties"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3322
    :pswitch_d
    if-eqz p4, :cond_7

    .line 3323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3325
    :cond_7
    const-string v4, "CalendarAlerts"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3332
    :pswitch_e
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3333
    .restart local v23       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3340
    .end local v23           #id:J
    :pswitch_f
    if-eqz p4, :cond_8

    .line 3341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarSmsAlerts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3343
    :cond_8
    const-string v4, "CalendarSmsAlerts"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromEventRelatedTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3350
    :pswitch_10
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 3351
    .restart local v23       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarSmsAlerts"

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3357
    .end local v23           #id:J
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 3358
    .local v29, strId:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 3360
    .restart local v23       #id:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->checkValidCalendars(J)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3361
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 3364
    :cond_9
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3365
    .local v27, selectionSb:Ljava/lang/StringBuilder;
    move-object/from16 v0, v27

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3366
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3367
    const-string v4, " AND ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    const/16 v4, 0x29

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3371
    :cond_a
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3374
    .end local v23           #id:J
    .end local v27           #selectionSb:Ljava/lang/StringBuilder;
    .end local v29           #strId:Ljava/lang/String;
    :pswitch_12
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3375
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->deleteMatchingCalendars(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 3380
    :pswitch_13
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot delete that URL"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "localTimezone"
    .parameter "timeZoneDatabaseVersion"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 755
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndFromEventRawTimesLocked()V

    .line 756
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDatabaseVersion(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 758
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 759
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 763
    return-void

    .line 761
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->doEndTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method protected doUpdateTimezoneDependentFields()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 719
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, timezoneType:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "home"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 750
    .end local v3           #timezoneType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 725
    .restart local v3       #timezoneType:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isSameTimezoneDatabaseVersion()Z

    move-result v4

    if-nez v4, :cond_2

    .line 726
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, localTimezone:Ljava/lang/String;
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/providers/calendar/CalendarProvider2;->doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .end local v2           #localTimezone:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isLocalSameAsInstancesTimezone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    .end local v3           #timezoneType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "CalendarProvider2"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 738
    const-string v4, "CalendarProvider2"

    const-string v5, "doUpdateTimezoneDependentFields() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v4}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 744
    :catch_1
    move-exception v1

    .line 745
    .local v1, e2:Landroid/database/SQLException;
    const-string v4, "CalendarProvider2"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearInstanceRange() also failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method escapeSearchToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "token"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1292
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1293
    .local v0, matcher:Ljava/util/regex/Matcher;
    const-string v1, "#$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected fixAllDayTime(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "values"
    .parameter "modValues"

    .prologue
    .line 1679
    const-string v9, "allDay"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1680
    .local v0, allDayObj:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_2

    .line 1681
    :cond_0
    const/4 v6, 0x0

    .line 1734
    :cond_1
    :goto_0
    return v6

    .line 1684
    :cond_2
    const/4 v6, 0x0

    .line 1686
    .local v6, neededCorrection:Z
    const-string v9, "dtstart"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1687
    .local v3, dtstart:Ljava/lang/Long;
    const-string v9, "dtend"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1688
    .local v2, dtend:Ljava/lang/Long;
    const-string v9, "duration"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1689
    .local v4, duration:Ljava/lang/String;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 1693
    .local v8, time:Landroid/text/format/Time;
    const-string v9, "UTC"

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1695
    iget v9, v8, Landroid/text/format/Time;->hour:I

    if-nez v9, :cond_3

    iget v9, v8, Landroid/text/format/Time;->minute:I

    if-nez v9, :cond_3

    iget v9, v8, Landroid/text/format/Time;->second:I

    if-eqz v9, :cond_4

    .line 1696
    :cond_3
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 1697
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 1698
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 1699
    const-string v9, "dtstart"

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1700
    const/4 v6, 0x1

    .line 1704
    :cond_4
    if-eqz v2, :cond_6

    .line 1705
    const-string v9, "UTC"

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1707
    iget v9, v8, Landroid/text/format/Time;->hour:I

    if-nez v9, :cond_5

    iget v9, v8, Landroid/text/format/Time;->minute:I

    if-nez v9, :cond_5

    iget v9, v8, Landroid/text/format/Time;->second:I

    if-eqz v9, :cond_6

    .line 1708
    :cond_5
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 1709
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 1710
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 1711
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1712
    const-string v9, "dtend"

    invoke-virtual {p2, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1713
    const/4 v6, 0x1

    .line 1717
    :cond_6
    if-eqz v4, :cond_1

    .line 1718
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1722
    .local v5, len:I
    if-nez v5, :cond_7

    .line 1723
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1724
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x50

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x53

    if-ne v9, v10, :cond_1

    .line 1726
    const/4 v9, 0x1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1727
    .local v7, seconds:I
    const v9, 0x15180

    add-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    const v10, 0x15180

    div-int v1, v9, v10

    .line 1728
    .local v1, days:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1729
    const-string v9, "duration"

    invoke-virtual {p2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 580
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;
    .locals 2

    .prologue
    .line 652
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Lcom/android/providers/calendar/CalendarAlarmManager;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getOwner(J)Ljava/lang/String;
    .locals 9
    .parameter "calId"

    .prologue
    const/4 v8, 0x0

    .line 2791
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2792
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2793
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar Id is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v7, v8

    .line 2823
    :goto_0
    return-object v7

    .line 2798
    :cond_1
    const/4 v7, 0x0

    .line 2799
    .local v7, emailAddress:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2801
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ownerAccount"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2806
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2807
    :cond_2
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2808
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2820
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    move-object v7, v8

    goto :goto_0

    .line 2812
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 2820
    invoke-virtual {p0, v6}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/android/providers/calendar/CalendarProvider2;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected getTimezoneDatabaseVersion()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, timezoneDatabaseVersion:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 859
    const-string v0, ""

    .line 864
    .end local v0           #timezoneDatabaseVersion:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 861
    .restart local v0       #timezoneDatabaseVersion:Ljava/lang/String;
    :cond_1
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timezoneDatabaseVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 1621
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1622
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 1654
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1624
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/event"

    .line 1652
    :goto_0
    return-object v1

    .line 1626
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/event"

    goto :goto_0

    .line 1628
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/reminder"

    goto :goto_0

    .line 1630
    :pswitch_4
    const-string v1, "vnd.android.cursor.item/reminder"

    goto :goto_0

    .line 1632
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/calendar-alert"

    goto :goto_0

    .line 1634
    :pswitch_6
    const-string v1, "vnd.android.cursor.dir/calendar-alert-by-instance"

    goto :goto_0

    .line 1636
    :pswitch_7
    const-string v1, "vnd.android.cursor.item/calendar-alert"

    goto :goto_0

    .line 1639
    :pswitch_8
    const-string v1, "vnd.android.cursor.dir/calendar-sms-alert"

    goto :goto_0

    .line 1641
    :pswitch_9
    const-string v1, "vnd.android.cursor.dir/calendar-sms-alert-by-instance"

    goto :goto_0

    .line 1643
    :pswitch_a
    const-string v1, "vnd.android.cursor.item/calendar-sms-alert"

    goto :goto_0

    .line 1648
    :pswitch_b
    const-string v1, "vnd.android.cursor.dir/event-instance"

    goto :goto_0

    .line 1650
    :pswitch_c
    const-string v1, "time/epoch"

    goto :goto_0

    .line 1652
    :pswitch_d
    const-string v1, "vnd.android.cursor.dir/property"

    goto :goto_0

    .line 1622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZ)Landroid/database/Cursor;
    .locals 21
    .parameter "qb"
    .parameter "rangeBegin"
    .parameter "rangeEnd"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "searchByDay"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"
    .parameter "excludeNotes"
    .parameter "excludeNotes_V2"

    .prologue
    .line 1190
    const-string v3, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1191
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1192
    if-eqz p10, :cond_1

    .line 1195
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v20, time:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    long-to-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v4

    .line 1199
    .local v4, beginMs:J
    move-wide/from16 v0, p4

    long-to-int v3, v0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v6

    .line 1201
    .local v6, endMs:J
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v9, p11

    move-object/from16 v10, p12

    move/from16 v11, p13

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1203
    const-string v3, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1210
    .end local v4           #beginMs:J
    .end local v6           #endMs:J
    .end local v20           #time:Landroid/text/format/Time;
    :goto_0
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v19, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v19, v3

    .line 1211
    .local v19, newSelectionArgs:[Ljava/lang/String;
    if-nez p8, :cond_2

    .line 1212
    move-object/from16 p8, v19

    .line 1220
    :goto_1
    if-eqz p14, :cond_3

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/calendar/notes/NotesHelper;->getAssociatedEvents(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v18

    .line 1222
    .local v18, eventInstances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/EventInstance;>;"
    if-eqz v18, :cond_0

    .line 1224
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getNotesAssociateSelection(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 1225
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getNotesAssociateSelectionArgs(Ljava/util/ArrayList;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p8

    .line 1235
    .end local v18           #eventInstances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/EventInstance;>;"
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 1206
    .end local v19           #newSelectionArgs:[Ljava/lang/String;
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v8 .. v16}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 1208
    const-string v3, "begin<=? AND end>=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1216
    .restart local v19       #newSelectionArgs:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v19, v3, v8

    const/4 v8, 0x1

    aput-object p8, v3, v8

    invoke-static {v3}, Lcom/android/providers/calendar/CalendarProvider2;->combine([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p8

    .end local p8
    check-cast p8, [Ljava/lang/String;

    .restart local p8
    goto :goto_1

    .line 1227
    :cond_3
    if-eqz p15, :cond_0

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/calendar/notes/NotesHelper;->getAssociatedEvents2(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1229
    .local v17, eventIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v17, :cond_0

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getNotesAssociateSelection2(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 1231
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getNotesAssociateSelectionArgs2(Ljava/util/ArrayList;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p8

    goto :goto_2
.end method

.method protected initCalendarAlarm()V
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getOrCreateCalendarAlarmManager()Lcom/android/providers/calendar/CalendarAlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    .line 648
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    .line 649
    return-void
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 37
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 2253
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2254
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertInTransaction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    :cond_0
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 2258
    .local v10, match:I
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/providers/calendar/CalendarProvider2;->verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V

    .line 2261
    const-wide/16 v13, 0x0

    .line 2262
    .local v13, id:J
    packed-switch v10, :pswitch_data_0

    .line 2521
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2264
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0}, Lcom/android/common/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2524
    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-gez v5, :cond_23

    .line 2525
    const/4 v5, 0x0

    .line 2528
    :goto_1
    return-object v5

    .line 2267
    :pswitch_2
    if-nez p3, :cond_2

    .line 2268
    const-string v5, "dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2270
    :cond_2
    const-string v5, "dtstart"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2271
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART field missing from event"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2274
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2275
    .local v12, updatedValues:Landroid/content/ContentValues;
    if-eqz p3, :cond_4

    .line 2276
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/android/providers/calendar/CalendarProvider2;->scrubEventData(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 2282
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v12

    .line 2283
    if-nez v12, :cond_5

    .line 2284
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not insert event."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2278
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 2288
    :cond_5
    const-string v5, "calendar_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    .line 2289
    .local v22, calendar_id:Ljava/lang/Long;
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert event calendar_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    if-nez v22, :cond_6

    .line 2293
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "New events must specify a calendar id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2297
    :cond_6
    const-string v5, "eventColor_index"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2298
    .local v25, color_id:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2299
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getAccount(J)Landroid/accounts/Account;

    move-result-object v17

    .line 2300
    .local v17, account:Landroid/accounts/Account;
    const/16 v18, 0x0

    .line 2301
    .local v18, accountName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 2302
    .local v19, accountType:Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 2303
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2304
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2306
    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 2308
    .local v23, color:I
    const-string v5, "eventColor"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2310
    .end local v17           #account:Landroid/accounts/Account;
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v23           #color:I
    :cond_8
    const/16 v34, 0x0

    .line 2311
    .local v34, owner:Ljava/lang/String;
    const-string v5, "organizer"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2312
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v34

    .line 2317
    if-eqz v34, :cond_9

    .line 2318
    const-string v5, "organizer"

    move-object/from16 v0, v34

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    :cond_9
    const-string v5, "original_sync_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "original_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 2323
    const-string v5, "original_sync_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/calendar/CalendarProvider2;->getOriginalId(Ljava/lang/String;)J

    move-result-wide v31

    .line 2325
    .local v31, originalId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v31, v5

    if-eqz v5, :cond_a

    .line 2326
    const-string v5, "original_id"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2336
    .end local v31           #originalId:J
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v12}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2337
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2338
    const-string v5, "CalendarProvider2"

    const-string v6, "insertInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_b
    const-string v5, "hasAlarm"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2345
    const-string v5, "iCalGUID"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2346
    const-string v5, "iCalGUID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v5, v12}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2352
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_1

    .line 2353
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v12}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 2354
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/CalendarProvider2;->mInstancesHelper:Lcom/android/providers/calendar/CalendarInstancesHelper;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2359
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2360
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 2361
    .local v35, status:I
    if-nez v34, :cond_d

    .line 2362
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v34

    .line 2364
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->createAttendeeEntry(JILjava/lang/String;)V

    .line 2366
    .end local v35           #status:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarProvider2;->backfillExceptionOriginalIds(JLandroid/content/ContentValues;)V

    .line 2367
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    goto/16 :goto_0

    .line 2328
    :cond_f
    const-string v5, "original_sync_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "original_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2330
    const-string v5, "original_id"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->getOriginalSyncId(J)Ljava/lang/String;

    move-result-object v33

    .line 2332
    .local v33, originalSyncId:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2333
    const-string v5, "original_sync_id"

    move-object/from16 v0, v33

    invoke-virtual {v12, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2371
    .end local v12           #updatedValues:Landroid/content/ContentValues;
    .end local v22           #calendar_id:Ljava/lang/Long;
    .end local v25           #color_id:Ljava/lang/String;
    .end local v33           #originalSyncId:Ljava/lang/String;
    .end local v34           #owner:Ljava/lang/String;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v29

    .line 2372
    .local v29, originalEventId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->handleInsertException(JLandroid/content/ContentValues;Z)J

    move-result-wide v13

    .line 2373
    goto/16 :goto_0

    .line 2376
    .end local v29           #originalEventId:J
    :pswitch_4
    const-string v5, "sync_events"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    .line 2377
    .local v36, syncEvents:Ljava/lang/Integer;
    if-eqz v36, :cond_10

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 2378
    const-string v5, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2379
    .restart local v18       #accountName:Ljava/lang/String;
    const-string v5, "account_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2381
    .restart local v19       #accountType:Ljava/lang/String;
    new-instance v17, Landroid/accounts/Account;

    invoke-direct/range {v17 .. v19}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    .restart local v17       #account:Landroid/accounts/Account;
    const-string v5, "cal_sync1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2383
    .local v28, eventsUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 2385
    .end local v17           #account:Landroid/accounts/Account;
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v28           #eventsUrl:Ljava/lang/String;
    :cond_10
    const-string v5, "calendar_color_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2386
    .local v21, cal_color_id:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 2387
    const-string v5, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2388
    .restart local v18       #accountName:Ljava/lang/String;
    const-string v5, "account_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2389
    .restart local v19       #accountType:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 2391
    .restart local v23       #color:I
    const-string v5, "calendar_color"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2393
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v23           #color:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2394
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    goto/16 :goto_0

    .line 2401
    .end local v21           #cal_color_id:Ljava/lang/String;
    .end local v36           #syncEvents:Ljava/lang/Integer;
    :pswitch_5
    const-string v5, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2402
    .restart local v18       #accountName:Ljava/lang/String;
    const-string v5, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2403
    .restart local v19       #accountType:Ljava/lang/String;
    const-string v5, "color_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2404
    .local v24, colorIndex:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2405
    :cond_12
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account name and type must be non empty parameters for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2408
    :cond_13
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2409
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COLOR_INDEX must be non empty for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2411
    :cond_14
    const-string v5, "color_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 2412
    :cond_15
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "New colors must contain COLOR_TYPE and COLOR"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2418
    :cond_16
    const-string v5, "account_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const-string v5, "account_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const/16 v20, 0x0

    .line 2424
    .local v20, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getColorByIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2425
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_18

    .line 2426
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already exists for account and type provided"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2430
    :catchall_0
    move-exception v5

    if-eqz v20, :cond_17

    .line 2431
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v5

    .line 2430
    :cond_18
    if-eqz v20, :cond_19

    .line 2431
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2433
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->colorsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2434
    goto/16 :goto_0

    .line 2436
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v20           #c:Landroid/database/Cursor;
    .end local v24           #colorIndex:Ljava/lang/String;
    :pswitch_6
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2437
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Attendees values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2440
    :cond_1a
    if-nez p3, :cond_1b

    .line 2441
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 2442
    .local v26, eventId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 2443
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(J)V

    .line 2445
    .end local v26           #eventId:Ljava/lang/Long;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2452
    :pswitch_7
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 2453
    .local v27, eventIdObj:Ljava/lang/Long;
    if-nez v27, :cond_1c

    .line 2454
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Reminders values must contain a numeric event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2457
    :cond_1c
    if-nez p3, :cond_1d

    .line 2458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 2459
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(J)V

    .line 2461
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->remindersInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2464
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/providers/calendar/CalendarProvider2;->setHasAlarm(JI)V

    .line 2467
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2468
    const-string v5, "CalendarProvider2"

    const-string v6, "insertInternal() changing reminder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    goto/16 :goto_0

    .line 2474
    .end local v27           #eventIdObj:Ljava/lang/Long;
    :pswitch_8
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 2475
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CalendarAlerts values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2478
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarAlertsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2481
    goto/16 :goto_0

    .line 2484
    :pswitch_9
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 2485
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CalendarSmsAlerts values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2488
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarSmsAlertsInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2491
    goto/16 :goto_0

    .line 2494
    :pswitch_a
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 2495
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ExtendedProperties values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2498
    :cond_21
    if-nez p3, :cond_22

    .line 2499
    const-string v5, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 2501
    .restart local v26       #eventId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->duplicateEvent(J)V

    .line 2502
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(J)V

    .line 2504
    .end local v26           #eventId:Ljava/lang/Long;
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2505
    goto/16 :goto_0

    .line 2508
    :pswitch_b
    invoke-static/range {p2 .. p2}, Lcom/android/providers/calendar/CalendarProvider2;->handleEmmaRequest(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2519
    :pswitch_c
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot insert into that URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2528
    :cond_23
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_1

    .line 2262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_c
        :pswitch_c
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected isHomeTimezone()Z
    .locals 2

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, type:Ljava/lang/String;
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected isSameTimezoneDatabaseVersion()Z
    .locals 2

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, timezoneDatabaseVersion:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 850
    const/4 v1, 0x0

    .line 852
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method protected notifyChange(Z)V
    .locals 3
    .parameter "syncToNetwork"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 922
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 5244
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V

    .line 5245
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5246
    return-void
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 598
    invoke-super {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onCreate()Z

    .line 600
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->initialize()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 605
    :goto_0
    return v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    const-string v1, "CalendarProvider2"

    const-string v2, "Cannot start provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected postInitialize()V
    .locals 2

    .prologue
    .line 659
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 660
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 661
    return-void
.end method

.method protected query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"
    .parameter "limit"

    .prologue
    .line 1139
    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "_count"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1144
    :cond_0
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1145
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query sql - projection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectionArgs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sortOrder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " groupBy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_1
    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1154
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1156
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v10, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1158
    :cond_2
    return-object v10
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 35
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 927
    const-string v3, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 928
    const-string v3, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query uri - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 933
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 934
    .local v8, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v31, 0x0

    .line 935
    .local v31, groupBy:Ljava/lang/String;
    const/16 v32, 0x0

    .line 938
    .local v32, limit:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v33

    .line 939
    .local v33, match:I
    packed-switch v33, :pswitch_data_0

    .line 1126
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 941
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v3

    .line 1130
    :goto_0
    return-object v3

    .line 945
    .restart local v8       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 948
    .local v6, selectionWithId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v3

    goto :goto_0

    .line 945
    .end local v6           #selectionWithId:Ljava/lang/String;
    .restart local v8       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 954
    :pswitch_3
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 955
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 956
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameterToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendLastSyncedColumnToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    :goto_2
    move-object/from16 v24, p0

    move-object/from16 v25, v4

    move-object/from16 v26, v8

    move-object/from16 v27, p2

    move-object/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    .line 1130
    invoke-virtual/range {v24 .. v32}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 960
    :pswitch_4
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 961
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 963
    const-string v3, "_id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 967
    :pswitch_5
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 968
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameterToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendLastSyncedColumnToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 971
    goto :goto_2

    .line 973
    :pswitch_6
    const-string v3, "view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 974
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 975
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 976
    const-string v3, "_id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 980
    :pswitch_7
    const-string v3, "Colors"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 981
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sColorsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 982
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameterToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 983
    goto/16 :goto_2

    .line 987
    :pswitch_8
    const-string v3, "Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameterToSelection(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 989
    goto/16 :goto_2

    .line 992
    :pswitch_9
    const-string v3, "Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 994
    const-string v3, "_id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1001
    :pswitch_a
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 1007
    .local v9, begin:J
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v11

    .line 1012
    .local v11, end:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v19

    .line 1013
    .local v19, instancesTimezone:Ljava/lang/String;
    const/16 v3, 0xf

    move/from16 v0, v33

    if-ne v0, v3, :cond_2

    const/16 v17, 0x1

    :goto_3
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v20

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v7 .. v20}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 1002
    .end local v9           #begin:J
    .end local v11           #end:J
    .end local v19           #instancesTimezone:Ljava/lang/String;
    :catch_0
    move-exception v34

    .line 1003
    .local v34, nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse begin "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x2

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1008
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v9       #begin:J
    :catch_1
    move-exception v34

    .line 1009
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1013
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v11       #end:J
    .restart local v19       #instancesTimezone:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    goto :goto_3

    .line 1019
    .end local v9           #begin:J
    .end local v11           #end:J
    .end local v19           #instancesTimezone:Ljava/lang/String;
    :pswitch_b
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v9

    .line 1025
    .restart local v9       #begin:J
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v11

    .line 1030
    .restart local v11       #end:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v19

    .line 1032
    .restart local v19       #instancesTimezone:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1033
    .local v13, query:Ljava/lang/String;
    const/16 v3, 0x1b

    move/from16 v0, v33

    if-ne v0, v3, :cond_3

    const/16 v18, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v20

    move-object/from16 v7, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v7 .. v20}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceSearchQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 1020
    .end local v9           #begin:J
    .end local v11           #end:J
    .end local v13           #query:Ljava/lang/String;
    .end local v19           #instancesTimezone:Ljava/lang/String;
    :catch_2
    move-exception v34

    .line 1021
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse begin "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x2

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1026
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v9       #begin:J
    :catch_3
    move-exception v34

    .line 1027
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1033
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v11       #end:J
    .restart local v13       #query:Ljava/lang/String;
    .restart local v19       #instancesTimezone:Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    goto :goto_4

    .line 1040
    .end local v9           #begin:J
    .end local v11           #end:J
    .end local v13           #query:Ljava/lang/String;
    .end local v19           #instancesTimezone:Ljava/lang/String;
    :pswitch_c
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v22

    .line 1046
    .local v22, startDay:I
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v23

    .line 1051
    .local v23, endDay:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v19

    .line 1052
    .restart local v19       #instancesTimezone:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v27

    move-object/from16 v20, p0

    move-object/from16 v21, v8

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    move-object/from16 v26, v19

    invoke-direct/range {v20 .. v27}, Lcom/android/providers/calendar/CalendarProvider2;->handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 1041
    .end local v19           #instancesTimezone:Ljava/lang/String;
    .end local v22           #startDay:I
    .end local v23           #endDay:I
    :catch_4
    move-exception v34

    .line 1042
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse start day "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x2

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1047
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v22       #startDay:I
    :catch_5
    move-exception v34

    .line 1048
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end day "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1055
    .end local v22           #startDay:I
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    :pswitch_d
    const-string v3, "Attendees, Events, Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1056
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1057
    const-string v3, "Events._id=Attendees.event_id AND Events.calendar_id=Calendars._id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1061
    :pswitch_e
    const-string v3, "Attendees, Events, Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1062
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1063
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1064
    const-string v3, "Attendees._id=? AND Events._id=Attendees.event_id AND Events.calendar_id=Calendars._id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1067
    :pswitch_f
    const-string v3, "Reminders"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1070
    :pswitch_10
    const-string v3, "Reminders, Events, Calendars"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1071
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1073
    const-string v3, "Reminders._id=? AND Events._id=Reminders.event_id AND Events.calendar_id=Calendars._id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1076
    :pswitch_11
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1077
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1078
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1082
    :pswitch_12
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1083
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1084
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1085
    const-string v31, "event_id,begin"

    .line 1086
    goto/16 :goto_2

    .line 1088
    :pswitch_13
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1089
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1090
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1091
    const-string v3, "view_events._id=CalendarAlerts.event_id AND CalendarAlerts._id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1095
    :pswitch_14
    const-string v3, "CalendarSmsAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1096
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1097
    const-string v3, "view_events._id=CalendarSmsAlerts.event_id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1101
    :pswitch_15
    const-string v3, "CalendarSmsAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1102
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1103
    const-string v3, "view_events._id=CalendarSmsAlerts.event_id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1104
    const-string v31, "event_id,begin"

    .line 1105
    goto/16 :goto_2

    .line 1107
    :pswitch_16
    const-string v3, "CalendarSmsAlerts, view_events"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1108
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1109
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1110
    const-string v3, "view_events._id=CalendarSmsAlerts.event_id AND CalendarSmsAlerts._id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1114
    :pswitch_17
    const-string v3, "ExtendedProperties"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1117
    :pswitch_18
    const-string v3, "ExtendedProperties"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1119
    const-string v3, "ExtendedProperties._id=?"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1122
    :pswitch_19
    const-string v3, "CalendarCache"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1123
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 939
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_17
        :pswitch_18
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_14
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method protected sendUpdateNotification(JZ)V
    .locals 8
    .parameter "eventId"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v7, 0x1

    .line 4828
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4830
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4843
    :goto_0
    if-eqz p3, :cond_1

    const-wide/16 v0, 0x7530

    .line 4851
    .local v0, delay:J
    :goto_1
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4852
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4854
    return-void

    .line 4838
    .end local v0           #delay:J
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 4843
    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_1
.end method

.method protected sendUpdateNotification(Z)V
    .locals 2
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 4807
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(JZ)V

    .line 4808
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->close()V

    .line 591
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 592
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 594
    :cond_0
    return-void
.end method

.method tokenizeSearchQuery(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "query"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v0, matchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->SEARCH_TOKEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1309
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1310
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1312
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1317
    .local v2, token:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->escapeSearchToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1315
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #token:Ljava/lang/String;
    goto :goto_1

    .line 1319
    .end local v2           #token:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method protected updateEventRawTimesLocked(JLandroid/content/ContentValues;)V
    .locals 11
    .parameter "eventId"
    .parameter "values"

    .prologue
    .line 3144
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3146
    .local v6, rawValues:Landroid/content/ContentValues;
    const-string v9, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3148
    const-string v9, "eventTimezone"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3150
    .local v8, timezone:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3151
    .local v0, allDay:Z
    const-string v9, "allDay"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3152
    .local v1, allDayInteger:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 3153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v0, 0x1

    .line 3156
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3158
    :cond_1
    const-string v8, "UTC"

    .line 3161
    :cond_2
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3162
    .local v7, time:Landroid/text/format/Time;
    iput-boolean v0, v7, Landroid/text/format/Time;->allDay:Z

    .line 3163
    const-string v9, "dtstart"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 3164
    .local v3, dtstartMillis:Ljava/lang/Long;
    if-eqz v3, :cond_3

    .line 3165
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3166
    const-string v9, "dtstart2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    :cond_3
    const-string v9, "dtend"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3170
    .local v2, dtendMillis:Ljava/lang/Long;
    if-eqz v2, :cond_4

    .line 3171
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3172
    const-string v9, "dtend2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    :cond_4
    const-string v9, "originalInstanceTime"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 3176
    .local v5, originalInstanceMillis:Ljava/lang/Long;
    if-eqz v5, :cond_6

    .line 3180
    const-string v9, "originalAllDay"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3181
    if-eqz v1, :cond_5

    .line 3182
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v7, Landroid/text/format/Time;->allDay:Z

    .line 3184
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3185
    const-string v9, "originalInstanceTime2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    :cond_6
    const-string v9, "lastDate"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 3190
    .local v4, lastDateMillis:Ljava/lang/Long;
    if-eqz v4, :cond_7

    .line 3191
    iput-boolean v0, v7, Landroid/text/format/Time;->allDay:Z

    .line 3192
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3193
    const-string v9, "lastDate2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    :cond_7
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v9, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsRawTimesReplace(Landroid/content/ContentValues;)J

    .line 3197
    return-void

    .line 3153
    .end local v2           #dtendMillis:Ljava/lang/Long;
    .end local v3           #dtstartMillis:Ljava/lang/Long;
    .end local v4           #lastDateMillis:Ljava/lang/Long;
    .end local v5           #originalInstanceMillis:Ljava/lang/Long;
    .end local v7           #time:Landroid/text/format/Time;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3182
    .restart local v2       #dtendMillis:Ljava/lang/Long;
    .restart local v3       #dtstartMillis:Ljava/lang/Long;
    .restart local v5       #originalInstanceMillis:Ljava/lang/Long;
    .restart local v7       #time:Landroid/text/format/Time;
    :cond_9
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 36
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 4165
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4166
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    :cond_0
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 4171
    .local v9, match:I
    const/4 v5, 0x2

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->verifyTransactionAllowed(ILandroid/net/Uri;Landroid/content/ContentValues;ZILjava/lang/String;[Ljava/lang/String;)V

    .line 4174
    packed-switch v9, :pswitch_data_0

    .line 4442
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4176
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 4438
    :cond_1
    :goto_0
    return v30

    .line 4180
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 4184
    .local v31, selectionWithId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 4186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto :goto_0

    .line 4181
    .end local v31           #selectionWithId:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 4190
    :pswitch_3
    const-string v4, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 4191
    .local v21, color:Ljava/lang/Integer;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-nez v21, :cond_4

    .line 4192
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "You may only change the COLOR for an existing Colors entry."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4195
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/calendar/CalendarProvider2;->handleUpdateColors(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_0

    .line 4202
    .end local v21           #color:Ljava/lang/Integer;
    :pswitch_4
    const/4 v4, 0x5

    if-ne v9, v4, :cond_b

    .line 4203
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    .line 4220
    .local v25, id:J
    :goto_2
    if-nez p5, :cond_5

    .line 4221
    const-string v4, "dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4223
    :cond_5
    const-string v4, "sync_events"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    .line 4224
    .local v32, syncEvents:Ljava/lang/Integer;
    if-eqz v32, :cond_6

    .line 4225
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V

    .line 4228
    :cond_6
    const-string v4, "calendar_color_index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4229
    .local v22, color_id:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 4230
    const-string v4, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4231
    .local v19, accountName:Ljava/lang/String;
    const-string v4, "account_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4232
    .local v20, accountType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4233
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getAccount(J)Landroid/accounts/Account;

    move-result-object v18

    .line 4234
    .local v18, account:Landroid/accounts/Account;
    if-eqz v18, :cond_8

    .line 4235
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4236
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 4239
    .end local v18           #account:Landroid/accounts/Account;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->verifyColorExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4242
    .end local v19           #accountName:Ljava/lang/String;
    .end local v20           #accountType:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Calendars"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 4245
    .local v30, result:I
    if-lez v30, :cond_1

    .line 4247
    const-string v4, "visible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4255
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 4210
    .end local v22           #color_id:Ljava/lang/String;
    .end local v25           #id:J
    .end local v30           #result:I
    .end local v32           #syncEvents:Ljava/lang/Integer;
    :cond_b
    if-eqz p3, :cond_c

    const-string v4, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4211
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .restart local v25       #id:J
    goto/16 :goto_2

    .line 4212
    .end local v25           #id:J
    :cond_c
    if-eqz p3, :cond_d

    const-string v4, "_id="

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4215
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .restart local v25       #id:J
    goto/16 :goto_2

    .line 4217
    .end local v25           #id:J
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Calendars"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_0

    .line 4225
    .restart local v25       #id:J
    .restart local v32       #syncEvents:Ljava/lang/Integer;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 4264
    .end local v25           #id:J
    .end local v32           #syncEvents:Ljava/lang/Integer;
    :pswitch_5
    const/16 v24, 0x0

    .line 4271
    .local v24, events:Landroid/database/Cursor;
    const/4 v4, 0x2

    if-ne v9, v4, :cond_10

    .line 4273
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    .line 4274
    .restart local v25       #id:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "Events"

    const/4 v12, 0x0

    const-string v13, "_id=?"

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 4284
    .end local v25           #id:J
    :goto_4
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_11

    .line 4285
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4286
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No events to update: uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectionArgs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4289
    :cond_f
    const/16 v30, 0x0

    .line 4294
    if-eqz v24, :cond_1

    .line 4295
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4279
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "Events"

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto :goto_4

    .line 4292
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->handleUpdateEvents(Landroid/database/Cursor;Landroid/content/ContentValues;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v30

    .line 4294
    if-eqz v24, :cond_1

    .line 4295
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4294
    :catchall_0
    move-exception v4

    if-eqz v24, :cond_12

    .line 4295
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v4

    .line 4300
    .end local v24           #events:Landroid/database/Cursor;
    :pswitch_6
    const-string v12, "Attendees"

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v30

    goto/16 :goto_0

    .line 4304
    :pswitch_7
    const-string v12, "Attendees"

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v30

    goto/16 :goto_0

    .line 4310
    :pswitch_8
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    .line 4311
    .restart local v25       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_0

    .line 4317
    .end local v25           #id:J
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarAlerts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_0

    .line 4323
    :pswitch_a
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    .line 4324
    .restart local v25       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarSmsAlerts"

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_0

    .line 4330
    .end local v25           #id:J
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarSmsAlerts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_0

    .line 4334
    :pswitch_c
    const-string v12, "Reminders"

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v30

    goto/16 :goto_0

    .line 4338
    :pswitch_d
    const-string v12, "Reminders"

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v23

    .line 4343
    .local v23, count:I
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4344
    const-string v4, "CalendarProvider2"

    const-string v5, "updateInternal() changing reminder"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    move/from16 v30, v23

    .line 4347
    goto/16 :goto_0

    .line 4351
    .end local v23           #count:I
    :pswitch_e
    const-string v12, "ExtendedProperties"

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRelatedTable(Landroid/net/Uri;Ljava/lang/String;ZLandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v30

    goto/16 :goto_0

    .line 4358
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4359
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 4362
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarAlarm:Lcom/android/providers/calendar/CalendarAlarmManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarm(Z)V

    .line 4363
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 4367
    :pswitch_11
    const-string v4, "key=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 4368
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selection should be key=? for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4371
    :cond_14
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 4373
    .local v27, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "timezoneInstancesPrevious"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4374
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid selection key: timezoneInstancesPrevious for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4379
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v34

    .line 4383
    .local v34, timezoneInstancesBeforeUpdate:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CalendarCache"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 4391
    .restart local v30       #result:I
    if-lez v30, :cond_1

    .line 4393
    const-string v4, "timezoneType"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4394
    const-string v4, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 4395
    .local v35, value:Ljava/lang/String;
    if-eqz v35, :cond_1

    .line 4397
    const-string v4, "home"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v29

    .line 4400
    .local v29, previousTimezone:Ljava/lang/String;
    if-eqz v29, :cond_16

    .line 4401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 4405
    :cond_16
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4406
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 4407
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 4411
    .end local v29           #previousTimezone:Ljava/lang/String;
    :cond_17
    const-string v4, "auto"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4412
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    .line 4413
    .local v28, localTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 4414
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4415
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 4416
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 4422
    .end local v28           #localTimezone:Ljava/lang/String;
    .end local v35           #value:Ljava/lang/String;
    :cond_18
    const-string v4, "timezoneInstances"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4424
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v33

    .line 4427
    .local v33, timezoneInstances:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    .line 4430
    if-eqz v34, :cond_1

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4432
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 4433
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    goto/16 :goto_0

    .line 4174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "values"

    .prologue
    .line 3117
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->calculateLastDate(Landroid/content/ContentValues;)J
    :try_end_0
    .catch Lcom/android/calendarcommon/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3137
    .end local p1
    :goto_0
    return-object p1

    .line 3132
    .restart local p1
    :catch_0
    move-exception v0

    .line 3134
    .local v0, e:Lcom/android/calendarcommon/DateException;
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3135
    const-string v3, "CalendarProvider2"

    const-string v4, "Could not calculate last date."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3137
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected updateTimezoneDependentFields()V
    .locals 2

    .prologue
    .line 693
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 694
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 695
    return-void
.end method

.method protected validateEventData(Landroid/content/ContentValues;)V
    .locals 8
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2697
    const-string v7, "calendar_id"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2698
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Event values must include a calendar_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2700
    :cond_0
    const-string v7, "eventTimezone"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2701
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Event values must include an eventTimezone"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2703
    :cond_1
    const-string v7, "dtstart"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 2704
    .local v1, hasDtstart:Z
    :goto_0
    const-string v7, "dtend"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_4

    move v0, v5

    .line 2705
    .local v0, hasDtend:Z
    :goto_1
    const-string v7, "duration"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    move v2, v5

    .line 2706
    .local v2, hasDuration:Z
    :goto_2
    const-string v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    move v4, v5

    .line 2707
    .local v4, hasRrule:Z
    :goto_3
    const-string v7, "rdate"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move v3, v5

    .line 2709
    .local v3, hasRdate:Z
    :goto_4
    if-nez v4, :cond_2

    if-eqz v3, :cond_8

    .line 2710
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->validateRecurrenceRule(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2711
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid recurrence rule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #hasDtend:Z
    .end local v1           #hasDtstart:Z
    .end local v2           #hasDuration:Z
    .end local v3           #hasRdate:Z
    .end local v4           #hasRrule:Z
    :cond_3
    move v1, v6

    .line 2703
    goto :goto_0

    .restart local v1       #hasDtstart:Z
    :cond_4
    move v0, v6

    .line 2704
    goto :goto_1

    .restart local v0       #hasDtend:Z
    :cond_5
    move v2, v6

    .line 2705
    goto :goto_2

    .restart local v2       #hasDuration:Z
    :cond_6
    move v4, v6

    .line 2706
    goto :goto_3

    .restart local v4       #hasRrule:Z
    :cond_7
    move v3, v6

    .line 2707
    goto :goto_4

    .line 2716
    .restart local v3       #hasRdate:Z
    :cond_8
    if-nez v1, :cond_9

    .line 2717
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DTSTART cannot be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2719
    :cond_9
    if-nez v2, :cond_a

    if-nez v0, :cond_a

    .line 2720
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DTEND and DURATION cannot both be null for an event."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2723
    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    .line 2726
    const-string v5, "CalendarProvider2"

    const-string v6, "Cannot have both DTEND and DURATION in an event"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :cond_b
    return-void
.end method

.method protected verifyAccounts()V
    .locals 4

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 682
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/calendar/HtcCheckCustomization;->syncGoogleAccountMgr(Landroid/content/Context;)Z

    move-result v0

    .line 683
    .local v0, bret:Z
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->removeStaleAccounts([Landroid/accounts/Account;)V

    .line 685
    :cond_0
    return-void
.end method
