.class public Lcom/htc/android/mail/eassvc/calendar/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASEventPopulate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;,
        Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;
    }
.end annotation


# static fields
.field private static final ATTENDEES_INDEX_EMAIL:I = 0x4

.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_NAME:I = 0x3

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x1

.field private static final ATTENDEES_INDEX_STATUS:I = 0x2

.field private static final ATTENDEES_INDEX_TYPE:I = 0x5

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static final CALENDARS_INDEX_ID:I = 0x0

.field private static final CALENDARS_INDEX_TIMEZONE:I = 0x1

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "_id= 1"

.field private static final CALENDAR_BATCH_INSERT_SIZE:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEBUG_TZ:Z = true

.field public static final ENTRY_UPDATE_INTERVAL:I = 0x1

.field private static final MAX_APPLY_BATCH_SIZE:I = 0xc8

.field private static final REMINDERS_COLUMN_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_SQL_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%s AND (method=1 OR method=0)"

.field private static final TAG:Ljava/lang/String; = "EAS_CALMGR"

.field private static final TZTAG:Ljava/lang/String; = "EASTZ"

.field private static pimSyncContext:Landroid/content/Context;

.field private static sTimeZoneCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DAYS:J

.field private final HOURS:I

.field private final MINUTES:I

.field private final MSFT_LONG_SIZE:I

.field private final MSFT_SYSTEMTIME_DAY:I

.field private final MSFT_SYSTEMTIME_DAY_OF_WEEK:I

.field private final MSFT_SYSTEMTIME_HOUR:I

.field private final MSFT_SYSTEMTIME_MINUTE:I

.field private final MSFT_SYSTEMTIME_MONTH:I

.field private final MSFT_SYSTEMTIME_SIZE:I

.field private final MSFT_SYSTEMTIME_YEAR:I

.field private final MSFT_TIME_ZONE_BIAS_OFFSET:I

.field private final MSFT_TIME_ZONE_DAYLIGHT_BIAS_OFFSET:I

.field private final MSFT_TIME_ZONE_DAYLIGHT_DATE_OFFSET:I

.field private final MSFT_TIME_ZONE_DAYLIGHT_NAME_OFFSET:I

.field private final MSFT_TIME_ZONE_SIZE:I

.field private final MSFT_TIME_ZONE_STANDARD_BIAS_OFFSET:I

.field private final MSFT_TIME_ZONE_STANDARD_DATE_OFFSET:I

.field private final MSFT_TIME_ZONE_STANDARD_NAME_OFFSET:I

.field private final MSFT_WCHAR_SIZE:I

.field private final MSFT_WORD_SIZE:I

.field private final SECONDS:I

.field private cResolver:Landroid/content/ContentResolver;

.field private calTimeZone:Ljava/lang/String;

.field public calendarId:J

.field mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field protected mPauseCondition:Landroid/os/ConditionVariable;

.field private mProtocolVer:D

.field private mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

.field private final sCurrentYear:I

.field private trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

.field public updateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "calendar_timezone"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 91
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "minutes"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->REMINDERS_COLUMN_PROJECTION:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v3

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "attendeeName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attendeeEmail"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "attendeeType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 1984
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->sTimeZoneCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "syncSource"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v5, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateInterval:I

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calendarId:J

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mPauseCondition:Landroid/os/ConditionVariable;

    .line 1985
    iput v3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_LONG_SIZE:I

    .line 1986
    iput v2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_WCHAR_SIZE:I

    .line 1987
    iput v2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_WORD_SIZE:I

    .line 1989
    iput v4, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_SYSTEMTIME_YEAR:I

    .line 1990
    iput v2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_SYSTEMTIME_MONTH:I

    .line 1991
    iput v3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_SYSTEMTIME_DAY_OF_WEEK:I

    .line 1992
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_SYSTEMTIME_DAY:I

    .line 1993
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_SYSTEMTIME_HOUR:I

    .line 1994
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_SYSTEMTIME_MINUTE:I

    .line 1997
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_SYSTEMTIME_SIZE:I

    .line 2001
    iput v4, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_BIAS_OFFSET:I

    .line 2002
    iput v3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_STANDARD_NAME_OFFSET:I

    .line 2004
    const/16 v0, 0x44

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_STANDARD_DATE_OFFSET:I

    .line 2006
    const/16 v0, 0x54

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_STANDARD_BIAS_OFFSET:I

    .line 2008
    const/16 v0, 0x58

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_DAYLIGHT_NAME_OFFSET:I

    .line 2010
    const/16 v0, 0x98

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_DAYLIGHT_DATE_OFFSET:I

    .line 2012
    const/16 v0, 0xa8

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_DAYLIGHT_BIAS_OFFSET:I

    .line 2014
    const/16 v0, 0xac

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MSFT_TIME_ZONE_SIZE:I

    .line 2017
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->SECONDS:I

    .line 2018
    const v0, 0xea60

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->MINUTES:I

    .line 2019
    const v0, 0x36ee80

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->HOURS:I

    .line 2020
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DAYS:J

    .line 2022
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->sCurrentYear:I

    .line 121
    sput-object p1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->pimSyncContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    .line 124
    new-instance v0, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    sget-object v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->pimSyncContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/HtcExCalendar;->EAS_TRACKING_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    .line 125
    iput-object p3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 126
    return-void
.end method

.method private addChildEvent(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter "baseEASEvent"
    .parameter "basePIMEvent"
    .parameter "backRefEventID"
    .parameter "eventUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            "Lcom/htc/android/mail/eassvc/calendar/Event;",
            "I",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 892
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 894
    .local v7, exSize:I
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 895
    iget-object v0, p2, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    .line 896
    .local v2, instance:Lcom/htc/android/mail/eassvc/common/EASCalException;
    iget-boolean v0, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->isDeleted:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 898
    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->addChildEvent(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalException;Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object p5

    .line 894
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 901
    .end local v2           #instance:Lcom/htc/android/mail/eassvc/common/EASCalException;
    :cond_1
    return-object p5
.end method

.method private addChildEvent(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalException;Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 20
    .parameter
    .parameter "easException"
    .parameter "baseEASEvent"
    .parameter "basePIMEvent"
    .parameter "backRefEventID"
    .parameter "parentEventUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/android/mail/eassvc/common/EASCalException;",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            "Lcom/htc/android/mail/eassvc/calendar/Event;",
            "I",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 908
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v7, Lcom/htc/android/mail/eassvc/calendar/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calendarId:J

    invoke-direct {v7, v3, v4, v5}, Lcom/htc/android/mail/eassvc/calendar/Event;-><init>(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V

    .line 910
    .local v7, childEvent:Lcom/htc/android/mail/eassvc/calendar/Event;
    sget-object v8, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->add:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populatePIMEvent(Lcom/htc/android/mail/eassvc/common/EASCalException;Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;Lcom/htc/android/mail/eassvc/calendar/Event;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;)V

    .line 913
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/calendar/Event;->getEventCV()Landroid/content/ContentValues;

    move-result-object v19

    .line 915
    .local v19, values:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 916
    .local v12, childEventUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 917
    .local v17, operEventIndex:I
    sget-object v3, Landroid/provider/HtcExCalendar$ExEvents;->EAS_EVENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 919
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p6, :cond_1

    .line 920
    const-string v3, "parentID"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getUriId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 926
    :cond_0
    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 927
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/calendar/Event;->getAlarmCV()[Landroid/content/ContentValues;

    move-result-object v14

    .line 930
    .local v14, cvs:[Landroid/content/ContentValues;
    if-eqz v14, :cond_2

    .line 931
    move-object v9, v14

    .local v9, arr$:[Landroid/content/ContentValues;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v13, v9, v15

    .line 932
    .local v13, cv:Landroid/content/ContentValues;
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 933
    const-string v3, "event_id"

    move/from16 v0, v17

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 934
    invoke-virtual {v11, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 935
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 922
    .end local v9           #arr$:[Landroid/content/ContentValues;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #cvs:[Landroid/content/ContentValues;
    .end local v15           #i$:I
    .end local v16           #len$:I
    :cond_1
    if-ltz p5, :cond_0

    .line 923
    const-string v3, "parentID"

    move/from16 v0, p5

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 938
    .restart local v14       #cvs:[Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/calendar/Event;->getAttendeeCV()[Landroid/content/ContentValues;

    move-result-object v14

    .line 939
    if-eqz v14, :cond_6

    .line 940
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 941
    .local v10, attendeeUri:Landroid/net/Uri;
    move-object v9, v14

    .restart local v9       #arr$:[Landroid/content/ContentValues;
    array-length v0, v9

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v13, v9, v15

    .line 942
    .restart local v13       #cv:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_4

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v12}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->commit(Ljava/util/ArrayList;ILandroid/net/Uri;)[Landroid/content/ContentProviderResult;

    move-result-object v18

    .line 944
    .local v18, results:[Landroid/content/ContentProviderResult;
    if-nez v12, :cond_3

    .line 945
    if-eqz v18, :cond_3

    .line 946
    aget-object v3, v18, v17

    iget-object v12, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 949
    :cond_3
    if-nez p6, :cond_4

    .line 950
    if-eqz v18, :cond_4

    if-ltz p5, :cond_4

    .line 951
    aget-object v3, v18, p5

    iget-object v0, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 p6, v0

    .line 957
    .end local v18           #results:[Landroid/content/ContentProviderResult;
    :cond_4
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 958
    if-nez v12, :cond_5

    .line 959
    const-string v3, "event_id"

    move/from16 v0, v17

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 963
    :goto_3
    invoke-virtual {v11, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 964
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 961
    :cond_5
    const-string v3, "event_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getUriId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 967
    .end local v9           #arr$:[Landroid/content/ContentValues;
    .end local v10           #attendeeUri:Landroid/net/Uri;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v15           #i$:I
    .end local v16           #len$:I
    :cond_6
    return-object p6
.end method

.method private appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "accountName"

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 559
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 560
    if-eqz p1, :cond_0

    .line 561
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 562
    const-string v1, "account_type"

    const-string v2, "com.htc.android.mail.eas"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 564
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private checkTimeZoneWithBiasAndDTStart(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "bias"
    .parameter "zoneName"
    .parameter "start"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return v3

    .line 2142
    :cond_1
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2143
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {v1, p3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 2144
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 2145
    .local v2, tz:Ljava/util/TimeZone;
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 2148
    .local v0, currOffsetMillis:I
    if-eq p1, v0, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private commit(Ljava/util/ArrayList;ILandroid/net/Uri;)[Landroid/content/ContentProviderResult;
    .locals 3
    .parameter
    .parameter "backRefEventID"
    .parameter "eventUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Landroid/net/Uri;",
            ")[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 869
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    .line 871
    .local v0, results:[Landroid/content/ContentProviderResult;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 872
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 873
    return-object v0
.end method

.method private convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1774
    const-string v0, "%Y%m%dT%H%M%SZ"

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "accountName"
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2314
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2315
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2316
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2317
    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2320
    return-void
.end method

.method private deleteChildEvent(Ljava/util/ArrayList;J)V
    .locals 12
    .parameter
    .parameter "parent_event_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .line 974
    .local v6, INDEX_EVENT_ID:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 975
    .local v2, CHILD_ID_PROJECTION:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parentID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 979
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 980
    .local v11, nCount:I
    const-wide/16 v9, 0x0

    .line 981
    .local v9, event_id:J
    const/4 v7, 0x0

    .line 982
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v8, :cond_4

    .line 983
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 985
    sget-boolean v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 986
    const-string v0, "EAS_CALMGR"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "have child event #:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 989
    :cond_0
    if-eqz v11, :cond_3

    .line 990
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 993
    :cond_1
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 995
    sget-boolean v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 996
    const-string v0, "EAS_CALMGR"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child event_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 998
    :cond_2
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 999
    const-string v0, "_id=? "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1000
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1005
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1008
    :cond_4
    return-void
.end method

.method private findTZ(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 5
    .parameter "timeZoneString"

    .prologue
    .line 2026
    sget-object v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 2027
    .local v0, timeZone:Ljava/util/TimeZone;
    const-string v1, "EASTZ"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeZoneString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 2028
    if-eqz v0, :cond_0

    .line 2030
    const-string v1, "EASTZ"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Using cached TimeZone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 2042
    :goto_0
    return-object v0

    .line 2033
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->tziStringToTimeZoneImpl(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2034
    if-nez v0, :cond_1

    .line 2037
    const-string v1, "EASTZ"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeZone not found using default: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 2038
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 2040
    :cond_1
    sget-object v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findTZ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1
    .parameter "timeZoneString"
    .parameter "start"

    .prologue
    .line 2051
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->tziStringToTimeZoneImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2052
    .local v0, timeZone:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 2053
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 2055
    :cond_0
    return-object v0
.end method

.method public static getCalendarId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 10
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 2251
    const-wide/16 v6, -0x1

    .line 2252
    .local v6, calendarId:J
    const/4 v8, 0x0

    .line 2254
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2255
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 2261
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2262
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2265
    :cond_1
    return-wide v6

    .line 2258
    :catch_0
    move-exception v9

    .line 2259
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EAS_CALMGR"

    invoke-static {v0, p1, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2261
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2261
    :cond_2
    throw v0
.end method

.method private getCurCalendarTimeZone()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 531
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id= 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 534
    .local v6, calendarCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 539
    :cond_0
    if-eqz v6, :cond_1

    .line 540
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_1
    return-void

    .line 537
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calTimeZone:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    if-eqz v6, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_3
    throw v0
.end method

.method private getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "serverID"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLong([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 2059
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, offset:I
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, v0, 0x1

    .end local v0           #offset:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;)J
    .locals 3
    .parameter "timeZone"
    .parameter "tzd"

    .prologue
    .line 2123
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 2124
    .local v0, testCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2125
    const/4 v1, 0x2

    iget v2, p2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2126
    const/4 v1, 0x7

    iget v2, p2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2127
    const/16 v1, 0x8

    iget v2, p2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2128
    const/16 v1, 0xb

    iget v2, p2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2129
    const/16 v1, 0xc

    iget v2, p2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2130
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2131
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "tag"

    .prologue
    const/4 v5, -0x1

    .line 1932
    const/4 v2, 0x0

    .line 1934
    .local v2, s:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v2

    .line 1954
    .end local v2           #s:Ljava/lang/String;
    .local v3, s:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1939
    .end local v3           #s:Ljava/lang/String;
    .restart local v2       #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1940
    .local v0, n1:I
    if-eq v0, v5, :cond_2

    .line 1942
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 1944
    const-string v4, ";"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1945
    .local v1, n2:I
    if-eq v1, v5, :cond_3

    .line 1947
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v1           #n2:I
    :cond_2
    :goto_1
    move-object v3, v2

    .line 1954
    .end local v2           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 1950
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #n2:I
    .restart local v2       #s:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getTimeZoneDateFromSystemTime([BI)Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    .locals 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 2085
    new-instance v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;-><init>(Lcom/htc/android/mail/eassvc/calendar/CalendarManager;)V

    .line 2088
    .local v3, tzd:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    add-int/lit8 v4, p2, 0x0

    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getWord([BI)I

    move-result v2

    .line 2089
    .local v2, num:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->year:Ljava/lang/String;

    .line 2093
    add-int/lit8 v4, p2, 0x2

    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getWord([BI)I

    move-result v2

    .line 2094
    if-nez v2, :cond_0

    .line 2095
    const/4 v3, 0x0

    .line 2119
    .end local v3           #tzd:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    :goto_0
    return-object v3

    .line 2097
    .restart local v3       #tzd:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    :cond_0
    add-int/lit8 v4, v2, -0x1

    iput v4, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->month:I

    .line 2101
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->dayOfWeek:I

    .line 2104
    add-int/lit8 v4, p2, 0x6

    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getWord([BI)I

    move-result v2

    .line 2106
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 2107
    const/4 v4, -0x1

    iput v4, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->day:I

    .line 2113
    :goto_1
    add-int/lit8 v4, p2, 0x8

    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getWord([BI)I

    move-result v0

    .line 2114
    .local v0, hour:I
    iput v0, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->hour:I

    .line 2115
    add-int/lit8 v4, p2, 0xa

    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getWord([BI)I

    move-result v1

    .line 2116
    .local v1, minute:I
    iput v1, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->minute:I

    .line 2117
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->time:I

    goto :goto_0

    .line 2109
    .end local v0           #hour:I
    .end local v1           #minute:I
    :cond_1
    iput v2, v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->day:I

    goto :goto_1
.end method

.method private getUriId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 876
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWord([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 2064
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, offset:I
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method public static insertNewCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "calendarColorIdx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2270
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->isCalendarExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2292
    :goto_0
    return-void

    .line 2273
    :cond_0
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASCommon;->colorMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2274
    .local v0, color:I
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2275
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2277
    .local v1, cvs:Landroid/content/ContentValues;
    const-string v3, "sync_events"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2278
    const-string v3, "account_name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const-string v3, "account_type"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    const-string v3, "calendar_displayName"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    const-string v3, "displayOrder"

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2283
    const-string v3, "calendar_access_level"

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2284
    const-string v3, "ownerAccount"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    const-string v3, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2286
    const-string v3, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2287
    const-string v3, "calendar_timezone"

    const-string v4, "UTC"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const-string v3, "ishTCCustomizedCalendar"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2291
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static isCalendarExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 2295
    const/4 v6, 0x0

    .line 2297
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2298
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2299
    const-string v0, "EAS_CALMGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCalendarExist(): Calendar is already exist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2300
    const/4 v0, 0x1

    .line 2305
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2309
    :cond_0
    :goto_0
    return v0

    .line 2302
    :catch_0
    move-exception v7

    .line 2303
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EAS_CALMGR"

    invoke-static {v0, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2305
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2306
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2305
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2305
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method private populateEASEventAttendees(Lcom/htc/android/mail/eassvc/common/EASCalEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 1661
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 1662
    .local v2, uri:Landroid/net/Uri;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "event_id=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v6

    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1664
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1665
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1666
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1667
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    .line 1675
    :cond_0
    const/4 v11, 0x0

    .line 1676
    .local v11, name:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1677
    .local v9, email:Ljava/lang/String;
    const/4 v13, -0x1

    .line 1678
    .local v13, status:I
    const/4 v14, -0x1

    .line 1679
    .local v14, type:I
    const/4 v12, -0x1

    .line 1681
    .local v12, relationship:I
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1682
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1687
    :cond_1
    :goto_0
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1688
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1693
    :cond_2
    :goto_1
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1694
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1699
    :cond_3
    :goto_2
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1700
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1705
    :cond_4
    :goto_3
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1706
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1711
    :cond_5
    :goto_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1712
    const/4 v10, 0x0

    .line 1713
    .local v10, mailAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    const/4 v1, 0x1

    const-string v3, "utf-8"

    const-string v5, "utf-8"

    invoke-static {v9, v1, v3, v5}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1714
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 1715
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Mailaddress;

    iget-object v11, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 1716
    sget-boolean v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "EAS_CALMGR"

    const-string v3, "name is empty, use email instead"

    invoke-static {v1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    .end local v10           #mailAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1722
    const/4 v1, 0x2

    if-ne v12, v1, :cond_f

    .line 1723
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    .line 1724
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    .line 1765
    :cond_7
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1768
    .end local v9           #email:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #relationship:I
    .end local v13           #status:I
    .end local v14           #type:I
    :cond_8
    if-eqz v8, :cond_9

    .line 1769
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1771
    :cond_9
    return-void

    .line 1684
    .restart local v9       #email:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #relationship:I
    .restart local v13       #status:I
    .restart local v14       #type:I
    :cond_a
    sget-boolean v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "mAttendeesCursor is missing attendeesName"

    invoke-static {v1, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1690
    :cond_b
    sget-boolean v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "mAttendeesCursor is missing attendeesEmail"

    invoke-static {v1, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1696
    :cond_c
    sget-boolean v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "mAttendeesCursor is missing status"

    invoke-static {v1, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1702
    :cond_d
    sget-boolean v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "mAttendeesCursor is missing type"

    invoke-static {v1, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1708
    :cond_e
    sget-boolean v1, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v5, "mAttendeesCursor is missing attendeesRelationship"

    invoke-static {v1, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1726
    :cond_f
    new-instance v7, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;-><init>()V

    .line 1727
    .local v7, attendee:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    iput-object v11, v7, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    .line 1728
    iput-object v9, v7, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    .line 1730
    packed-switch v13, :pswitch_data_0

    .line 1744
    :goto_6
    :pswitch_0
    iput v13, v7, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Status:I

    .line 1746
    packed-switch v14, :pswitch_data_1

    .line 1755
    const/4 v14, 0x1

    .line 1758
    :goto_7
    iput v14, v7, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Type:I

    .line 1760
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->isOrganizer:Z

    .line 1762
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1732
    :pswitch_1
    const/4 v13, 0x3

    .line 1733
    goto :goto_6

    .line 1735
    :pswitch_2
    const/4 v13, 0x4

    .line 1736
    goto :goto_6

    .line 1738
    :pswitch_3
    const/4 v13, 0x2

    .line 1739
    goto :goto_6

    .line 1741
    :pswitch_4
    const/4 v13, 0x0

    goto :goto_6

    .line 1749
    :pswitch_5
    const/4 v14, 0x1

    .line 1750
    goto :goto_7

    .line 1752
    :pswitch_6
    const/4 v14, 0x2

    .line 1753
    goto :goto_7

    .line 1730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1746
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private populateEASEventRecurExceptions(ILcom/htc/android/mail/eassvc/common/EASCalEvent;)V
    .locals 17
    .parameter "event_id"
    .parameter "event"

    .prologue
    .line 1592
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->exDate:Ljava/lang/String;

    if-eqz v11, :cond_0

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->exDate:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->exDate:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, exDates:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v11, v1

    if-eqz v11, :cond_0

    .line 1601
    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v1

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    .line 1605
    new-instance v4, Ljava/util/HashMap;

    array-length v11, v1

    invoke-direct {v4, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 1610
    .local v4, mapExDates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/EASCalException;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v11, v1

    if-ge v3, v11, :cond_3

    .line 1611
    new-instance v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    invoke-direct {v2}, Lcom/htc/android/mail/eassvc/common/EASCalException;-><init>()V

    .line 1613
    .local v2, exception:Lcom/htc/android/mail/eassvc/common/EASCalException;
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->isDeleted:Z

    .line 1614
    aget-object v11, v1, v3

    iput-object v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    .line 1616
    iget-object v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    const-string v12, "T"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1617
    .local v8, tmp:[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v11, v8

    if-lez v11, :cond_2

    .line 1618
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    :cond_2
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1623
    .end local v2           #exception:Lcom/htc/android/mail/eassvc/common/EASCalException;
    .end local v8           #tmp:[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getExceptionEvent(ILcom/htc/android/mail/eassvc/common/EASCalEvent;)V

    .line 1627
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->rDate:Ljava/lang/String;

    if-eqz v11, :cond_6

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->rDate:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 1628
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->rDate:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1629
    .local v5, rDates:[Ljava/lang/String;
    if-eqz v5, :cond_6

    array-length v11, v5

    if-lez v11, :cond_6

    .line 1630
    const/4 v3, 0x0

    :goto_2
    array-length v11, v5

    if-ge v3, v11, :cond_6

    .line 1631
    aget-object v11, v5, v3

    const-string v12, "T"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1632
    .restart local v8       #tmp:[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v11, v8

    if-lez v11, :cond_4

    .line 1633
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    .line 1634
    .restart local v2       #exception:Lcom/htc/android/mail/eassvc/common/EASCalException;
    if-eqz v2, :cond_4

    .line 1635
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->isDeleted:Z

    .line 1636
    aget-object v11, v5, v3

    iput-object v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    .line 1637
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1638
    .local v7, t:Landroid/text/format/Time;
    iget-object v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1639
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->duration:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 1640
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->duration:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->duration:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1642
    .local v6, strVal:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long v9, v11, v13

    .line 1645
    .local v9, val:J
    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1646
    const-string v11, "UTC"

    invoke-virtual {v7, v11}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    .line 1630
    .end local v2           #exception:Lcom/htc/android/mail/eassvc/common/EASCalException;
    .end local v6           #strVal:Ljava/lang/String;
    .end local v7           #t:Landroid/text/format/Time;
    .end local v9           #val:J
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1649
    .restart local v2       #exception:Lcom/htc/android/mail/eassvc/common/EASCalException;
    .restart local v7       #t:Landroid/text/format/Time;
    :cond_5
    aget-object v11, v5, v3

    iput-object v11, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    goto :goto_3

    .line 1657
    .end local v2           #exception:Lcom/htc/android/mail/eassvc/common/EASCalException;
    .end local v5           #rDates:[Ljava/lang/String;
    .end local v7           #t:Landroid/text/format/Time;
    .end local v8           #tmp:[Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .line 1658
    goto/16 :goto_0
.end method

.method private populateEASEventRecurRule(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Ljava/lang/String;)V
    .locals 10
    .parameter "event"
    .parameter "rawRule"

    .prologue
    .line 1779
    const-string v4, "FREQ="

    .line 1780
    .local v4, FREQ:Ljava/lang/String;
    const-string v0, "BYDAY="

    .line 1781
    .local v0, BYDAY:Ljava/lang/String;
    const-string v2, "BYMONTHDAY="

    .line 1782
    .local v2, BYMONTHDAY:Ljava/lang/String;
    const-string v1, "BYMONTH="

    .line 1783
    .local v1, BYMONTH:Ljava/lang/String;
    const-string v5, "INTERVAL="

    .line 1784
    .local v5, INTERVAL:Ljava/lang/String;
    const-string v3, "COUNT="

    .line 1785
    .local v3, COUNT:Ljava/lang/String;
    const-string v6, "UNTIL="

    .line 1789
    .local v6, UNTIL:Ljava/lang/String;
    iput-object p2, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->rRule:Ljava/lang/String;

    .line 1791
    const-string v8, "FREQ="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1792
    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1793
    const-string v8, "DAILY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1794
    const/4 v8, 0x0

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1866
    :cond_0
    :goto_0
    const-string v8, "INTERVAL="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1867
    if-eqz v7, :cond_1

    .line 1868
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurInterval:I

    .line 1871
    :cond_1
    const-string v8, "COUNT="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1872
    if-eqz v7, :cond_2

    .line 1873
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurOccurrences:I

    .line 1876
    :cond_2
    const-string v8, "UNTIL="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1877
    if-eqz v7, :cond_3

    .line 1878
    iput-object v7, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strRecurUntil:Ljava/lang/String;

    .line 1881
    :cond_3
    return-void

    .line 1795
    :cond_4
    const-string v8, "WEEKLY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1796
    const/4 v8, 0x1

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1797
    const-string v8, "BYDAY="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1798
    if-eqz v7, :cond_0

    .line 1799
    const-string v8, "SU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1800
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1801
    :cond_5
    const-string v8, "MO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1802
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1803
    :cond_6
    const-string v8, "TU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1804
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1805
    :cond_7
    const-string v8, "WE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1806
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1807
    :cond_8
    const-string v8, "TH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1808
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1809
    :cond_9
    const-string v8, "FR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1810
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1811
    :cond_a
    const-string v8, "SA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1812
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto/16 :goto_0

    .line 1814
    :cond_b
    const-string v8, "MONTHLY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1815
    const/4 v8, 0x2

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1816
    const-string v8, "BYMONTHDAY="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1817
    if-eqz v7, :cond_c

    .line 1818
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    .line 1819
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 1823
    const/4 v8, 0x0

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    .line 1826
    const/4 v8, 0x3

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1827
    const/16 v8, 0x7f

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1828
    const/4 v8, 0x5

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    goto/16 :goto_0

    .line 1831
    :cond_c
    const-string v8, "BYDAY="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1832
    if-eqz v7, :cond_0

    .line 1833
    const/4 v8, 0x3

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1834
    invoke-direct {p0, p1, p2, v7}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populateEASEventRecurRuleByDay(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1837
    :cond_d
    const-string v8, "YEARLY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1838
    const/4 v8, 0x5

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1839
    const-string v8, "BYMONTH="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1840
    if-eqz v7, :cond_e

    .line 1841
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurMonthOfYear:I

    .line 1843
    :cond_e
    const-string v8, "BYMONTHDAY="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1844
    if-eqz v7, :cond_f

    .line 1845
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    .line 1846
    iget v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 1850
    const/4 v8, 0x0

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    .line 1853
    const/4 v8, 0x6

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1854
    const/16 v8, 0x7f

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1855
    const/4 v8, 0x5

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    goto/16 :goto_0

    .line 1858
    :cond_f
    const-string v8, "BYDAY="

    invoke-direct {p0, p2, v8}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1859
    if-eqz v7, :cond_0

    .line 1860
    const/4 v8, 0x6

    iput v8, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    .line 1861
    invoke-direct {p0, p1, p2, v7}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populateEASEventRecurRuleByDay(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private populateEASEventRecurRuleByDay(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "event"
    .parameter "rawRule"
    .parameter "byDay"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 1886
    const-string v0, "BYSETPOS="

    .line 1888
    .local v0, BYSETPOS:Ljava/lang/String;
    move-object v1, p3

    .line 1890
    .local v1, s:Ljava/lang/String;
    const-string v3, "MO,TU,WE,TH,FR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1891
    const-string v3, "BYSETPOS="

    invoke-direct {p0, p2, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getRecurRulePropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1892
    if-eqz v1, :cond_0

    .line 1893
    const/16 v3, 0x3e

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    .line 1894
    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1895
    iput v5, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    goto :goto_0

    .line 1901
    :cond_2
    const-string v3, "[a-zA-Z]{2}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1902
    .local v2, ss:[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-ne v3, v6, :cond_3

    .line 1903
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    .line 1904
    iget v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1906
    iput v5, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    .line 1910
    :cond_3
    const-string v3, "SU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1911
    iget v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    if-eq v3, v5, :cond_4

    .line 1912
    iput v6, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto :goto_0

    .line 1914
    :cond_4
    const/16 v3, 0x41

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto :goto_0

    .line 1915
    :cond_5
    const-string v3, "MO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1916
    const/4 v3, 0x2

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto :goto_0

    .line 1917
    :cond_6
    const-string v3, "TU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1918
    const/4 v3, 0x4

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto :goto_0

    .line 1919
    :cond_7
    const-string v3, "WE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1920
    const/16 v3, 0x8

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto :goto_0

    .line 1921
    :cond_8
    const-string v3, "TH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1922
    const/16 v3, 0x10

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto :goto_0

    .line 1923
    :cond_9
    const-string v3, "FR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1924
    const/16 v3, 0x20

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto :goto_0

    .line 1925
    :cond_a
    const-string v3, "SA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1926
    const/16 v3, 0x40

    iput v3, p1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    goto/16 :goto_0
.end method

.method private populatePIMEvent(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;)V
    .locals 30
    .parameter "easEvent"
    .parameter "pimEvent"
    .parameter "action"

    .prologue
    .line 1016
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 1017
    .local v5, currTimezone:Ljava/util/TimeZone;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->uid:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->uid:Ljava/lang/String;

    .line 1018
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->summary:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->summary:Ljava/lang/String;

    .line 1019
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->location:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->location:Ljava/lang/String;

    .line 1020
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->description:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->description:Ljava/lang/String;

    .line 1021
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->_sync_id:Ljava/lang/String;

    .line 1022
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->meetingStatus:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 1023
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->meetingStatus:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->meetingStatus:I

    .line 1026
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 1027
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 1028
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    .line 1046
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->isAllDay:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    .line 1047
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 1048
    const-string v25, "UTC"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    .line 1049
    const/4 v6, 0x0

    .line 1050
    .local v6, daylightoffset:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 1051
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 1052
    .local v21, start:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1053
    new-instance v8, Ljava/util/Date;

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1054
    .local v8, dt:Ljava/util/Date;
    invoke-virtual {v5, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1055
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 1056
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v26

    add-int v26, v26, v6

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;J)V

    .line 1058
    .end local v8           #dt:Ljava/util/Date;
    .end local v21           #start:Landroid/text/format/Time;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 1059
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v26

    add-int v26, v26, v6

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;J)V

    .line 1081
    .end local v6           #daylightoffset:I
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_12

    .line 1082
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    .line 1083
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    .line 1084
    :cond_5
    new-instance v17, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;-><init>()V

    .line 1085
    .local v17, organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    sget-object v25, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->update:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 1087
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_10

    .line 1088
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    .line 1092
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_11

    .line 1093
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    .line 1097
    :goto_3
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Status:I

    .line 1098
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Type:I

    .line 1099
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->isOrganizer:Z

    .line 1100
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    .line 1104
    .local v4, a:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1029
    .end local v4           #a:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "2"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1030
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_0

    .line 1031
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1035
    const/16 v25, 0x64

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_0

    .line 1036
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "3"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1040
    const/16 v25, 0x65

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_0

    .line 1043
    :cond_b
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_0

    .line 1062
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    .line 1065
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->findTZ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1067
    .local v24, tz:Ljava/util/TimeZone;
    if-eqz v24, :cond_f

    .line 1069
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    .line 1076
    .end local v24           #tz:Ljava/util/TimeZone;
    :cond_d
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 1077
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;)V

    .line 1078
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 1079
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1071
    .restart local v24       #tz:Ljava/util/TimeZone;
    :cond_f
    const-string v25, "EASTZ"

    const-string v26, "Can\'t find suitable TZ"

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    goto :goto_5

    .line 1090
    .end local v24           #tz:Ljava/util/TimeZone;
    .restart local v17       #organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    goto/16 :goto_2

    .line 1095
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    goto/16 :goto_3

    .line 1109
    .end local v17           #organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->selfAttendeeStatus:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->selfAttendeeStatus:I

    .line 1111
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_34

    .line 1112
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 1113
    .local v9, end:J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v21

    .line 1114
    .local v21, start:J
    sub-long v25, v9, v21

    const-wide/16 v27, 0x3e8

    div-long v19, v25, v27

    .line 1115
    .local v19, seconds:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "P"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "S"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->duration:Ljava/lang/String;

    .line 1117
    const-string v18, "FREQ="

    .line 1119
    .local v18, rRULE:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 1220
    :cond_13
    :goto_6
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurInterval:I

    move/from16 v25, v0

    if-eqz v25, :cond_14

    .line 1221
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";INTERVAL="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurInterval:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1222
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strRecurUntil:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    .line 1223
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";UNTIL="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strRecurUntil:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1224
    :cond_15
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurOccurrences:I

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 1225
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";COUNT="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurOccurrences:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1227
    :cond_16
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->rRule:Ljava/lang/String;

    .line 1237
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_34

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_34

    .line 1240
    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    .line 1241
    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->rDate:Ljava/lang/String;

    .line 1243
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1245
    .local v12, exSize:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7
    if-ge v13, v12, :cond_34

    .line 1247
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_17

    .line 1248
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    .line 1250
    :cond_17
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->isAllDay:Z

    move/from16 v25, v0

    if-nez v25, :cond_32

    .line 1251
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/android/mail/eassvc/common/EASCalException;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    .line 1245
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1121
    .end local v12           #exSize:I
    .end local v13           #i:I
    :pswitch_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "DAILY;WKST=SU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1122
    goto/16 :goto_6

    .line 1124
    :pswitch_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "WEEKLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1125
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 1126
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";WKST=SU;BYDAY="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1127
    const-string v7, ""

    .line 1128
    .local v7, days:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_18

    .line 1129
    const-string v7, "SU"

    .line 1130
    :cond_18
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    if-eqz v25, :cond_1a

    .line 1131
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_19

    .line 1132
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1133
    :cond_19
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "MO"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1135
    :cond_1a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_1c

    .line 1136
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_1b

    .line 1137
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1138
    :cond_1b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "TU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1140
    :cond_1c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_1e

    .line 1141
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_1d

    .line 1142
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1143
    :cond_1d
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "WE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1145
    :cond_1e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x10

    if-eqz v25, :cond_20

    .line 1146
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_1f

    .line 1147
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1148
    :cond_1f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "TH"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1150
    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x20

    if-eqz v25, :cond_22

    .line 1151
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_21

    .line 1152
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1153
    :cond_21
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "FR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1155
    :cond_22
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x40

    if-eqz v25, :cond_24

    .line 1156
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_23

    .line 1157
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1158
    :cond_23
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "SA"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1160
    :cond_24
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1161
    goto/16 :goto_6

    .line 1164
    .end local v7           #days:Ljava/lang/String;
    :pswitch_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "MONTHLY;WKST=SU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1165
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYMONTHDAY="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1166
    goto/16 :goto_6

    .line 1168
    :pswitch_4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "YEARLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1169
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYMONTH="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurMonthOfYear:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYMONTHDAY="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1170
    goto/16 :goto_6

    .line 1173
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurType:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_25

    .line 1174
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "MONTHLY;WKST=SU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1180
    :goto_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    const/16 v26, 0x7f

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_27

    .line 1181
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYMONTHDAY="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1182
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_26

    .line 1183
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    .line 1176
    :cond_25
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "YEARLY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1177
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYMONTH="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurMonthOfYear:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_9

    .line 1185
    :cond_26
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    .line 1186
    :cond_27
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    const/16 v26, 0x3e

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_29

    .line 1191
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYDAY=MO,TU,WE,TH,FR;BYSETPOS="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1192
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_28

    .line 1193
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    .line 1195
    :cond_28
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    .line 1196
    :cond_29
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    const/16 v26, 0x41

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2a

    .line 1197
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYDAY=-1SU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    .line 1199
    :cond_2a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";BYDAY="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    move/from16 v25, v0

    const/16 v27, 0x5

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_31

    const/16 v25, -0x1

    :goto_a
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1201
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_2b

    .line 1202
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "SU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1203
    :cond_2b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    if-eqz v25, :cond_2c

    .line 1204
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "MO"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1205
    :cond_2c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_2d

    .line 1206
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "TU"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1207
    :cond_2d
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_2e

    .line 1208
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "WE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1209
    :cond_2e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x10

    if-eqz v25, :cond_2f

    .line 1210
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "TH"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1211
    :cond_2f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x20

    if-eqz v25, :cond_30

    .line 1212
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "FR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1213
    :cond_30
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurDayOfWeek:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x40

    if-eqz v25, :cond_13

    .line 1214
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "SA"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    .line 1199
    :cond_31
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurWeekOfMonth:I

    move/from16 v25, v0

    goto/16 :goto_a

    .line 1253
    .restart local v12       #exSize:I
    .restart local v13       #i:I
    :cond_32
    new-instance v23, Landroid/text/format/Time;

    invoke-direct/range {v23 .. v23}, Landroid/text/format/Time;-><init>()V

    .line 1255
    .local v23, t:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/android/mail/eassvc/common/EASCalException;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1257
    const/4 v6, 0x0

    .line 1259
    .restart local v6       #daylightoffset:I
    new-instance v8, Ljava/util/Date;

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1260
    .restart local v8       #dt:Ljava/util/Date;
    invoke-virtual {v5, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v25

    if-eqz v25, :cond_33

    .line 1261
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 1264
    :cond_33
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    .line 1265
    .local v15, mills:J
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v25, v25, v15

    int-to-long v0, v6

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    move-object/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1267
    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v26, "%d%02d%02dT000000Z"

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1269
    .local v11, exAllDay:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    goto/16 :goto_8

    .line 1294
    .end local v6           #daylightoffset:I
    .end local v8           #dt:Ljava/util/Date;
    .end local v9           #end:J
    .end local v11           #exAllDay:Ljava/lang/String;
    .end local v12           #exSize:I
    .end local v13           #i:I
    .end local v15           #mills:J
    .end local v18           #rRULE:Ljava/lang/String;
    .end local v19           #seconds:J
    .end local v21           #start:J
    .end local v23           #t:Landroid/text/format/Time;
    :cond_34
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->reminderMinsBefore:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_35

    .line 1295
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->hasAlarm:Z

    .line 1296
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->reminderMinsBefore:J

    move-wide/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v25

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->addReminder(JI)V

    .line 1299
    :cond_35
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->bodyFormat:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->bodyFormat:Ljava/lang/String;

    .line 1300
    return-void

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private populatePIMEvent(Lcom/htc/android/mail/eassvc/common/EASCalException;Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;Lcom/htc/android/mail/eassvc/calendar/Event;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;)V
    .locals 22
    .parameter "easException"
    .parameter "baseEASEvent"
    .parameter "basePIMEvent"
    .parameter "pimEvent"
    .parameter "action"

    .prologue
    .line 1306
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 1308
    .local v5, currTimezone:Ljava/util/TimeZone;
    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/eassvc/calendar/Event;->getId()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->parentID:I

    .line 1309
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->uid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->uid:Ljava/lang/String;

    .line 1311
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1312
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->summary:Ljava/lang/String;

    .line 1317
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->location:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1318
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->location:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->location:Ljava/lang/String;

    .line 1323
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->description:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->description:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->description:Ljava/lang/String;

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->bodyFormat:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->bodyFormat:Ljava/lang/String;

    .line 1331
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->meetingStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1332
    move-object/from16 v0, p3

    iget v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->meetingStatus:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->meetingStatus:I

    .line 1335
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->busyStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 1336
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->busyStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1337
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    .line 1355
    :cond_1
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->isAllDay:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    .line 1357
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 1358
    const-string v18, "UTC"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    .line 1360
    const/4 v6, 0x0

    .line 1362
    .local v6, daylightoffset:I
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1366
    .local v14, start:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1369
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 1371
    .local v17, time:Landroid/text/format/Time;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1372
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    .line 1373
    .local v15, startTime:J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1374
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 1375
    .local v10, endTime:J
    sub-long v8, v10, v15

    .line 1377
    .local v8, duration:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1378
    new-instance v7, Ljava/util/Date;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1379
    .local v7, dt:Ljava/util/Date;
    invoke-virtual {v5, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1380
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 1383
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v19

    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;J)V

    .line 1384
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    add-long v18, v18, v8

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1385
    invoke-virtual {v14}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v19

    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;J)V

    .line 1451
    .end local v6           #daylightoffset:I
    .end local v7           #dt:Ljava/util/Date;
    .end local v8           #duration:J
    .end local v10           #endTime:J
    .end local v14           #start:Landroid/text/format/Time;
    .end local v15           #startTime:J
    .end local v17           #time:Landroid/text/format/Time;
    :goto_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_18

    .line 1452
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 1453
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    .line 1456
    :cond_3
    new-instance v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    invoke-direct {v13}, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;-><init>()V

    .line 1458
    .local v13, organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    sget-object v18, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->update:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1460
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_16

    .line 1461
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    .line 1466
    :goto_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_17

    .line 1467
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    .line 1472
    :goto_6
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Status:I

    .line 1473
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Type:I

    .line 1474
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->isOrganizer:Z

    .line 1475
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->Attendees:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    .line 1479
    .local v4, a:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1314
    .end local v4           #a:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    :cond_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->summary:Ljava/lang/String;

    goto/16 :goto_0

    .line 1320
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->location:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->location:Ljava/lang/String;

    goto/16 :goto_1

    .line 1327
    :cond_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->description:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->description:Ljava/lang/String;

    .line 1328
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->bodyFormat:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->bodyFormat:Ljava/lang/String;

    goto/16 :goto_2

    .line 1338
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->busyStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1339
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_3

    .line 1340
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->busyStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1344
    const/16 v18, 0x64

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_3

    .line 1345
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->busyStatus:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "3"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1349
    const/16 v18, 0x65

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_3

    .line 1352
    :cond_c
    move-object/from16 v0, p3

    iget v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    goto/16 :goto_3

    .line 1387
    .restart local v6       #daylightoffset:I
    .restart local v14       #start:Landroid/text/format/Time;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 1388
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1389
    new-instance v7, Ljava/util/Date;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1390
    .restart local v7       #dt:Ljava/util/Date;
    invoke-virtual {v5, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1391
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 1393
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v19

    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;J)V

    .line 1403
    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1404
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v19

    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1395
    .end local v7           #dt:Ljava/util/Date;
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1396
    new-instance v7, Ljava/util/Date;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1397
    .restart local v7       #dt:Ljava/util/Date;
    invoke-virtual {v5, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1398
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 1400
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v19

    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;J)V

    goto :goto_8

    .line 1406
    :cond_11
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v19

    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1411
    .end local v6           #daylightoffset:I
    .end local v7           #dt:Ljava/util/Date;
    .end local v14           #start:Landroid/text/format/Time;
    :cond_12
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    .line 1415
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 1419
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 1421
    .restart local v17       #time:Landroid/text/format/Time;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1422
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    .line 1423
    .restart local v15       #startTime:J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1424
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 1425
    .restart local v10       #endTime:J
    sub-long v8, v10, v15

    .line 1427
    .restart local v8       #duration:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;)V

    .line 1429
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1430
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    add-long v18, v18, v8

    invoke-virtual/range {v17 .. v19}, Landroid/text/format/Time;->set(J)V

    .line 1431
    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1433
    .end local v8           #duration:J
    .end local v10           #endTime:J
    .end local v15           #startTime:J
    .end local v17           #time:Landroid/text/format/Time;
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    .line 1434
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;)V

    .line 1439
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 1440
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1436
    :cond_14
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setStartTime(Ljava/lang/String;)V

    goto :goto_9

    .line 1442
    :cond_15
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/Event;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1463
    .restart local v13       #organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerEmail:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    goto/16 :goto_5

    .line 1469
    :cond_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->organizerName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    goto/16 :goto_6

    .line 1483
    .end local v13           #organizer:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    :cond_18
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->reminderMinsBefore:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_19

    .line 1484
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p4

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/calendar/Event;->hasAlarm:Z

    .line 1485
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalException;->reminderMinsBefore:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/calendar/Event;->addReminder(JI)V

    .line 1496
    :cond_19
    return-void
.end method

.method public static removeAllEvents(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 11
    .parameter "resolver"
    .parameter "accountName"
    .parameter "removeLocal"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 502
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 505
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_1

    .line 506
    const-string v3, "calendar_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCalendarId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 510
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v3, Landroid/provider/HtcExCalendar;->EAS_TRACKING_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 513
    if-eqz p2, :cond_2

    .line 514
    const-string v3, "accountName=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 518
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 522
    const-string v3, "com.android.calendar"

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_2
    return-void

    .line 508
    :cond_1
    const-string v3, "calendar_id=? AND ( _sync_id<>? OR deleted=? )"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCalendarId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, ""

    aput-object v5, v4, v8

    const-string v5, "1"

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 516
    :cond_2
    const-string v3, "accountName=? AND ( serverId<>? OR _delete=? )"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v7

    const-string v5, ""

    aput-object v5, v4, v8

    const-string v5, "1"

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 494
    sget-object v0, Landroid/provider/HtcExCalendar;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method private tziStringToTimeZoneImpl(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1
    .parameter "timeZoneString"

    .prologue
    .line 2135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->tziStringToTimeZoneImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private tziStringToTimeZoneImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 25
    .parameter "timeZoneString"
    .parameter "start"

    .prologue
    .line 2152
    const/16 v17, 0x0

    .line 2154
    .local v17, timeZone:Ljava/util/TimeZone;
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v18

    .line 2160
    .local v18, timeZoneBytes:[B
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getLong([BI)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    const v22, 0xea60

    mul-int v6, v21, v22

    .line 2164
    .local v6, bias:I
    invoke-static {v6}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v20

    .line 2166
    .local v20, zoneIds:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_6

    .line 2169
    const/16 v21, 0x44

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getTimeZoneDateFromSystemTime([BI)Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;

    move-result-object v7

    .line 2171
    .local v7, dstEnd:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    if-nez v7, :cond_2

    .line 2177
    move-object/from16 v4, v20

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v12, v4, v11

    .line 2178
    .local v12, id:Ljava/lang/String;
    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    .line 2179
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v12, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->checkTimeZoneWithBiasAndDTStart(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 2180
    .local v14, meetBiasWithTimeZone:Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v21

    if-nez v21, :cond_1

    if-eqz v14, :cond_1

    .line 2187
    .end local v12           #id:Ljava/lang/String;
    .end local v14           #meetBiasWithTimeZone:Z
    :cond_0
    const-string v21, "EASTZ"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "TimeZone without DST found by offset: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    move-object/from16 v21, v17

    .line 2240
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #dstEnd:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    .end local v11           #i$:I
    .end local v13           #len$:I
    :goto_1
    return-object v21

    .line 2177
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v7       #dstEnd:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    .restart local v11       #i$:I
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #len$:I
    .restart local v14       #meetBiasWithTimeZone:Z
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2192
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #len$:I
    .end local v14           #meetBiasWithTimeZone:Z
    :cond_2
    const/16 v21, 0x98

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getTimeZoneDateFromSystemTime([BI)Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;

    move-result-object v10

    .line 2195
    .local v10, dstStart:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    const/16 v21, 0xa8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getLong([BI)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    const v22, 0xea60

    mul-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v8, v0

    .line 2200
    .local v8, dstSavings:J
    move-object/from16 v4, v20

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_2
    if-ge v11, v13, :cond_5

    aget-object v19, v4, v11

    .line 2202
    .local v19, zoneId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    .line 2211
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;)J

    move-result-wide v15

    .line 2212
    .local v15, millisAtTransition:J
    new-instance v5, Ljava/util/Date;

    const-wide/32 v21, 0xea60

    sub-long v21, v15, v21

    move-wide/from16 v0, v21

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2213
    .local v5, before:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    const-wide/32 v21, 0xea60

    add-long v21, v21, v15

    move-wide/from16 v0, v21

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2214
    .local v3, after:Ljava/util/Date;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2200
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2215
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2218
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;)J

    move-result-wide v15

    .line 2221
    new-instance v5, Ljava/util/Date;

    .end local v5           #before:Ljava/util/Date;
    const-wide/32 v21, 0xea60

    add-long v21, v21, v8

    sub-long v21, v15, v21

    move-wide/from16 v0, v21

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2222
    .restart local v5       #before:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    .end local v3           #after:Ljava/util/Date;
    const-wide/32 v21, 0xea60

    add-long v21, v21, v15

    move-wide/from16 v0, v21

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2223
    .restart local v3       #after:Ljava/util/Date;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2224
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 2227
    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v8, v21

    if-nez v21, :cond_3

    move-object/from16 v21, v17

    .line 2228
    goto/16 :goto_1

    .line 2232
    .end local v3           #after:Ljava/util/Date;
    .end local v5           #before:Ljava/util/Date;
    .end local v15           #millisAtTransition:J
    .end local v19           #zoneId:Ljava/lang/String;
    :cond_5
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    .line 2234
    const-string v21, "EASTZ"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No TimeZone with correct DST settings; using first: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    move-object/from16 v21, v17

    .line 2237
    goto/16 :goto_1

    .line 2240
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #dstEnd:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    .end local v8           #dstSavings:J
    .end local v10           #dstStart:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public cleanSyncFailRecord()V
    .locals 17

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v10}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->cleanSyncFailRecord()Ljava/lang/String;

    move-result-object v6

    .line 450
    .local v6, ids:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 470
    :goto_0
    return-void

    .line 452
    :cond_0
    sget-boolean v10, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "EAS_CALMGR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cleanSyncFailRecord(): ids="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_1
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, ida:[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v9, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v4, v1, v3

    .line 460
    .local v4, id:Ljava/lang/String;
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 461
    .local v8, op:Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 462
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 466
    .end local v4           #id:Ljava/lang/String;
    .end local v8           #op:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    const-string v11, "com.android.calendar"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v2

    .line 468
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%s: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCalendarChildList(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "parentList"

    .prologue
    .line 2323
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2324
    .local v9, sbList:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 2326
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parentID IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2328
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2330
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2331
    .local v8, id:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2332
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2334
    :cond_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2335
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 2340
    .end local v8           #id:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2341
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2344
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2337
    :catch_0
    move-exception v7

    .line 2338
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EAS_CALMGR"

    invoke-static {v0, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2340
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2340
    :cond_4
    throw v0
.end method

.method public getCalendarId()J
    .locals 4

    .prologue
    .line 2244
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCalendarId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calendarId:J

    .line 2247
    :cond_0
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calendarId:J

    return-wide v0
.end method

.method public getCollIdFromDB()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1958
    const/4 v6, 0x0

    .line 1959
    .local v6, CollId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1961
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/HtcExCalendar;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CollID"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1963
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    const-string v0, "CollID"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1970
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1971
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1974
    :cond_1
    return-object v6

    .line 1966
    :catch_0
    move-exception v8

    .line 1967
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1968
    const/4 v6, 0x0

    .line 1970
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1971
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1970
    :cond_2
    throw v0
.end method

.method public getDeviceChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p2, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getDeviceEventChangeList(Lcom/htc/android/mail/eassvc/util/SyncTrackManager$IEASEventPopulate;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 316
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEventsCount()I
    .locals 10

    .prologue
    .line 400
    const/4 v7, 0x0

    .line 401
    .local v7, cur:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 403
    .local v6, count:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "calendar_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v9, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCalendarId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 410
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_0
    return v6

    .line 410
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_1
    throw v0
.end method

.method public getExceptionEvent(ILcom/htc/android/mail/eassvc/common/EASCalEvent;)V
    .locals 31
    .parameter "parent_id"
    .parameter "event"

    .prologue
    .line 1500
    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    const/4 v13, 0x0

    .line 1506
    .local v13, cursor:Landroid/database/Cursor;
    const/16 v2, 0x9

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "dtstart"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "dtend"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "eventLocation"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "description"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "eventTimezone"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "hasAlarm"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "desc_mime_type"

    aput-object v3, v4, v2

    .line 1507
    .local v4, proj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parentID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1508
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1509
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1511
    :cond_2
    const/16 v27, 0x0

    .line 1512
    .local v27, startTime2445:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1513
    .local v17, endTime2445:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1514
    .local v22, id:Ljava/lang/String;
    const-string v2, "dtstart"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1515
    .local v26, startTime:Ljava/lang/String;
    const-string v2, "dtend"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1516
    .local v16, endTime:Ljava/lang/String;
    const-string v2, "title"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1517
    .local v29, title:Ljava/lang/String;
    const-string v2, "eventLocation"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1518
    .local v23, location:Ljava/lang/String;
    const-string v2, "description"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1519
    .local v14, descrip:Ljava/lang/String;
    const-string v2, "desc_mime_type"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1520
    .local v12, bodyFormat:I
    const-string v2, "eventTimezone"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1521
    .local v28, timezone:Ljava/lang/String;
    const-string v2, "hasAlarm"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/16 v20, 0x1

    .line 1523
    .local v20, hasAlarm:Z
    :goto_1
    if-eqz v26, :cond_8

    .line 1524
    new-instance v30, Landroid/text/format/Time;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1525
    .local v30, tm:Landroid/text/format/Time;
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1526
    const-string v2, "UTC"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {v30 .. v30}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v27

    .line 1533
    if-eqz v16, :cond_3

    .line 1534
    new-instance v30, Landroid/text/format/Time;

    .end local v30           #tm:Landroid/text/format/Time;
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1535
    .restart local v30       #tm:Landroid/text/format/Time;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1536
    const-string v2, "UTC"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {v30 .. v30}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v17

    .line 1541
    :cond_3
    const-string v2, "T"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1542
    .local v19, exEvent_date:[Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1543
    .local v24, nSize:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 1544
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->exceptionStartTime:Ljava/lang/String;

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1545
    .local v18, eventExStart:[Ljava/lang/String;
    if-eqz v18, :cond_e

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x0

    aget-object v3, v19, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1546
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    move-object/from16 v0, v27

    iput-object v0, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->startTime:Ljava/lang/String;

    .line 1547
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->endTime:Ljava/lang/String;

    .line 1548
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    if-nez v29, :cond_4

    const-string v29, ""

    .end local v29           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v29

    iput-object v0, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->summary:Ljava/lang/String;

    .line 1549
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    if-nez v23, :cond_5

    const-string v23, ""

    .end local v23           #location:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->location:Ljava/lang/String;

    .line 1550
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    if-nez v14, :cond_6

    const-string v14, ""

    .end local v14           #descrip:Ljava/lang/String;
    :cond_6
    iput-object v14, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->description:Ljava/lang/String;

    .line 1551
    const/4 v2, 0x1

    if-ne v2, v12, :cond_b

    .line 1552
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->bodyFormat:Ljava/lang/String;

    .line 1556
    :goto_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->isDeleted:Z

    .line 1557
    if-eqz v20, :cond_8

    .line 1558
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->REMINDERS_COLUMN_PROJECTION:[Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "event_id=%d AND (method=1 OR method=0)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 1564
    .local v25, reminderCursor:Landroid/database/Cursor;
    if-eqz v25, :cond_7

    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1566
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->hasReminder:Z

    .line 1569
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->reminderMinsBefore:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1572
    :cond_7
    if-eqz v25, :cond_8

    .line 1573
    :try_start_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1579
    .end local v18           #eventExStart:[Ljava/lang/String;
    .end local v19           #exEvent_date:[Ljava/lang/String;
    .end local v21           #i:I
    .end local v24           #nSize:I
    .end local v25           #reminderCursor:Landroid/database/Cursor;
    .end local v30           #tm:Landroid/text/format/Time;
    :cond_8
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 1584
    .end local v12           #bodyFormat:I
    .end local v16           #endTime:Ljava/lang/String;
    .end local v17           #endTime2445:Ljava/lang/String;
    .end local v20           #hasAlarm:Z
    .end local v22           #id:Ljava/lang/String;
    .end local v26           #startTime:Ljava/lang/String;
    .end local v27           #startTime2445:Ljava/lang/String;
    .end local v28           #timezone:Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1585
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1521
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v12       #bodyFormat:I
    .restart local v14       #descrip:Ljava/lang/String;
    .restart local v16       #endTime:Ljava/lang/String;
    .restart local v17       #endTime2445:Ljava/lang/String;
    .restart local v22       #id:Ljava/lang/String;
    .restart local v23       #location:Ljava/lang/String;
    .restart local v26       #startTime:Ljava/lang/String;
    .restart local v27       #startTime2445:Ljava/lang/String;
    .restart local v28       #timezone:Ljava/lang/String;
    .restart local v29       #title:Ljava/lang/String;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1554
    .end local v14           #descrip:Ljava/lang/String;
    .end local v23           #location:Ljava/lang/String;
    .end local v29           #title:Ljava/lang/String;
    .restart local v18       #eventExStart:[Ljava/lang/String;
    .restart local v19       #exEvent_date:[Ljava/lang/String;
    .restart local v20       #hasAlarm:Z
    .restart local v21       #i:I
    .restart local v24       #nSize:I
    .restart local v30       #tm:Landroid/text/format/Time;
    :cond_b
    :try_start_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalException;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/common/EASCalException;->bodyFormat:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 1581
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v12           #bodyFormat:I
    .end local v16           #endTime:Ljava/lang/String;
    .end local v17           #endTime2445:Ljava/lang/String;
    .end local v18           #eventExStart:[Ljava/lang/String;
    .end local v19           #exEvent_date:[Ljava/lang/String;
    .end local v20           #hasAlarm:Z
    .end local v21           #i:I
    .end local v22           #id:Ljava/lang/String;
    .end local v24           #nSize:I
    .end local v26           #startTime:Ljava/lang/String;
    .end local v27           #startTime2445:Ljava/lang/String;
    .end local v28           #timezone:Ljava/lang/String;
    .end local v30           #tm:Landroid/text/format/Time;
    :catch_0
    move-exception v15

    .line 1582
    .local v15, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1584
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 1572
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v12       #bodyFormat:I
    .restart local v16       #endTime:Ljava/lang/String;
    .restart local v17       #endTime2445:Ljava/lang/String;
    .restart local v18       #eventExStart:[Ljava/lang/String;
    .restart local v19       #exEvent_date:[Ljava/lang/String;
    .restart local v20       #hasAlarm:Z
    .restart local v21       #i:I
    .restart local v22       #id:Ljava/lang/String;
    .restart local v24       #nSize:I
    .restart local v25       #reminderCursor:Landroid/database/Cursor;
    .restart local v26       #startTime:Ljava/lang/String;
    .restart local v27       #startTime2445:Ljava/lang/String;
    .restart local v28       #timezone:Ljava/lang/String;
    .restart local v30       #tm:Landroid/text/format/Time;
    :catchall_0
    move-exception v2

    if-eqz v25, :cond_c

    .line 1573
    :try_start_5
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1572
    :cond_c
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1584
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v12           #bodyFormat:I
    .end local v16           #endTime:Ljava/lang/String;
    .end local v17           #endTime2445:Ljava/lang/String;
    .end local v18           #eventExStart:[Ljava/lang/String;
    .end local v19           #exEvent_date:[Ljava/lang/String;
    .end local v20           #hasAlarm:Z
    .end local v21           #i:I
    .end local v22           #id:Ljava/lang/String;
    .end local v24           #nSize:I
    .end local v25           #reminderCursor:Landroid/database/Cursor;
    .end local v26           #startTime:Ljava/lang/String;
    .end local v27           #startTime2445:Ljava/lang/String;
    .end local v28           #timezone:Ljava/lang/String;
    .end local v30           #tm:Landroid/text/format/Time;
    :catchall_1
    move-exception v2

    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1585
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1584
    :cond_d
    throw v2

    .line 1543
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v12       #bodyFormat:I
    .restart local v14       #descrip:Ljava/lang/String;
    .restart local v16       #endTime:Ljava/lang/String;
    .restart local v17       #endTime2445:Ljava/lang/String;
    .restart local v18       #eventExStart:[Ljava/lang/String;
    .restart local v19       #exEvent_date:[Ljava/lang/String;
    .restart local v20       #hasAlarm:Z
    .restart local v21       #i:I
    .restart local v22       #id:Ljava/lang/String;
    .restart local v23       #location:Ljava/lang/String;
    .restart local v24       #nSize:I
    .restart local v26       #startTime:Ljava/lang/String;
    .restart local v27       #startTime2445:Ljava/lang/String;
    .restart local v28       #timezone:Ljava/lang/String;
    .restart local v29       #title:Ljava/lang/String;
    .restart local v30       #tm:Landroid/text/format/Time;
    :cond_e
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2
.end method

.method getServerIdList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    const/4 v2, 0x0

    .line 545
    .local v2, serverIdList:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 546
    .local v0, event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    if-nez v2, :cond_0

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 549
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 552
    .end local v0           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    :cond_1
    return-object v2
.end method

.method public init()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->init()V

    .line 482
    :cond_0
    return-void
.end method

.method public populate(I)Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .locals 28
    .parameter "event_id"

    .prologue
    .line 139
    const/16 v18, 0x0

    .line 141
    .local v18, eventCur:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 143
    .local v16, event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 144
    .local v9, builder:Landroid/net/Uri$Builder;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 148
    if-eqz v18, :cond_f

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 150
    const-string v3, "parentID"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v20

    .line 151
    .local v20, parentId:I
    if-lez v20, :cond_2

    .line 152
    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 153
    const/4 v3, 0x0

    .line 296
    if-eqz v18, :cond_0

    .line 297
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 299
    .end local v20           #parentId:I
    :cond_0
    :goto_1
    return-object v3

    .line 155
    .restart local v20       #parentId:I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populate(I)Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    move-result-object v3

    .line 296
    if-eqz v18, :cond_0

    goto :goto_0

    .line 158
    :cond_2
    new-instance v17, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/common/EASCalEvent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 159
    .end local v16           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .local v17, event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    :try_start_2
    const-string v3, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    .line 161
    const-string v3, "iCalGUID"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->uid:Ljava/lang/String;

    .line 164
    const-string v3, "allDay"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->isAllDay:Z

    .line 167
    const-string v3, "dtstart"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 170
    .local v14, dtStart:J
    const-string v3, "eventTimezone"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->timezone:Ljava/lang/String;

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v25

    .line 174
    .local v25, timezone:Ljava/util/TimeZone;
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 175
    .local v24, t:Landroid/text/format/Time;
    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 176
    const-string v3, "UTC"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 177
    const/4 v10, 0x0

    .line 178
    .local v10, daylightOffset:I
    new-instance v11, Ljava/util/Date;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-direct {v11, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 179
    .local v11, dt:Ljava/util/Date;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v10

    .line 181
    :cond_3
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->isAllDay:Z

    if-eqz v3, :cond_4

    .line 182
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 183
    if-eqz v10, :cond_4

    .line 184
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    int-to-long v5, v10

    sub-long/2addr v3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 186
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStart:Ljava/lang/String;

    .line 188
    const-wide/16 v12, 0x0

    .line 189
    .local v12, dtEnd:J
    const-string v3, "dtend"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 190
    .local v22, strDtEnd:Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 191
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 193
    :cond_5
    if-eqz v22, :cond_6

    cmp-long v3, v12, v14

    if-gez v3, :cond_a

    .line 194
    :cond_6
    const/16 v22, 0x0

    .line 197
    const-string v3, "duration"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->duration:Ljava/lang/String;

    .line 199
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->duration:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 200
    const-string v3, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "populate("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): duration is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    const/16 v16, 0x0

    .line 296
    if-eqz v18, :cond_7

    .line 297
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object/from16 v3, v16

    move-object/from16 v16, v17

    .line 201
    .end local v17           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v16       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    goto/16 :goto_1

    .line 164
    .end local v10           #daylightOffset:I
    .end local v11           #dt:Ljava/util/Date;
    .end local v12           #dtEnd:J
    .end local v14           #dtStart:J
    .end local v16           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v22           #strDtEnd:Ljava/lang/String;
    .end local v24           #t:Landroid/text/format/Time;
    .end local v25           #timezone:Ljava/util/TimeZone;
    .restart local v17       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 203
    .restart local v10       #daylightOffset:I
    .restart local v11       #dt:Ljava/util/Date;
    .restart local v12       #dtEnd:J
    .restart local v14       #dtStart:J
    .restart local v22       #strDtEnd:Ljava/lang/String;
    .restart local v24       #t:Landroid/text/format/Time;
    .restart local v25       #timezone:Ljava/util/TimeZone;
    :cond_9
    :try_start_3
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->duration:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->duration:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 205
    .local v23, strVal:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v12, v3, v5

    .line 208
    .end local v23           #strVal:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 209
    const-string v3, "UTC"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->isAllDay:Z

    if-eqz v3, :cond_b

    if-eqz v22, :cond_b

    .line 213
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 214
    if-eqz v10, :cond_b

    .line 215
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    int-to-long v5, v10

    sub-long/2addr v3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 217
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTEnd:Ljava/lang/String;

    .line 220
    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->setToNow()V

    .line 221
    const-string v3, "UTC"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->strDTStamp:Ljava/lang/String;

    .line 224
    const-string v3, "availability"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 226
    .local v19, freeBusyStatus:I
    sparse-switch v19, :sswitch_data_0

    .line 240
    const-string v3, "2"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    .line 244
    :goto_3
    const-string v3, "title"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->summary:Ljava/lang/String;

    .line 246
    const-string v3, "eventLocation"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->location:Ljava/lang/String;

    .line 248
    const-string v3, "description"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->description:Ljava/lang/String;

    .line 250
    const-string v3, "rrule"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populateEASEventRecurRule(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Ljava/lang/String;)V

    .line 253
    const-string v3, "rdate"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->rDate:Ljava/lang/String;

    .line 255
    const-string v3, "exrule"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->exRule:Ljava/lang/String;

    .line 257
    const-string v3, "exdate"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->exDate:Ljava/lang/String;

    .line 259
    const-string v3, "MeetingStatus"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->meetingStatus:Ljava/lang/String;

    .line 262
    const/4 v3, 0x1

    const-string v4, "desc_mime_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v3, v4, :cond_12

    .line 263
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->bodyFormat:Ljava/lang/String;

    .line 268
    :goto_4
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->meetingStatus:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 269
    const-string v3, "0"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->meetingStatus:Ljava/lang/String;

    .line 272
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populateEASEventRecurExceptions(ILcom/htc/android/mail/eassvc/common/EASCalEvent;)V

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populateEASEventAttendees(Lcom/htc/android/mail/eassvc/common/EASCalEvent;)V

    .line 275
    const-string v3, "hasAlarm"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 277
    sget-object v3, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->pimSyncContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->REMINDERS_COLUMN_PROJECTION:[Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "event_id=%d AND (method=1 OR method=0)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v8, v26

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v21

    .line 283
    .local v21, reminderCursor:Landroid/database/Cursor;
    if-eqz v21, :cond_d

    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 284
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->hasReminder:Z

    .line 286
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->reminderMinsBefore:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    :cond_d
    if-eqz v21, :cond_e

    .line 291
    :try_start_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    move-object/from16 v16, v17

    .line 296
    .end local v10           #daylightOffset:I
    .end local v11           #dt:Ljava/util/Date;
    .end local v12           #dtEnd:J
    .end local v14           #dtStart:J
    .end local v17           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v19           #freeBusyStatus:I
    .end local v20           #parentId:I
    .end local v21           #reminderCursor:Landroid/database/Cursor;
    .end local v22           #strDtEnd:Ljava/lang/String;
    .end local v24           #t:Landroid/text/format/Time;
    .end local v25           #timezone:Ljava/util/TimeZone;
    .restart local v16       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    :cond_f
    :goto_5
    if-eqz v18, :cond_10

    .line 297
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_10
    move-object/from16 v3, v16

    .line 299
    goto/16 :goto_1

    .line 229
    .end local v16           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v10       #daylightOffset:I
    .restart local v11       #dt:Ljava/util/Date;
    .restart local v12       #dtEnd:J
    .restart local v14       #dtStart:J
    .restart local v17       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v19       #freeBusyStatus:I
    .restart local v20       #parentId:I
    .restart local v22       #strDtEnd:Ljava/lang/String;
    .restart local v24       #t:Landroid/text/format/Time;
    .restart local v25       #timezone:Ljava/util/TimeZone;
    :sswitch_0
    :try_start_6
    const-string v3, "1"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 296
    .end local v10           #daylightOffset:I
    .end local v11           #dt:Ljava/util/Date;
    .end local v12           #dtEnd:J
    .end local v14           #dtStart:J
    .end local v19           #freeBusyStatus:I
    .end local v22           #strDtEnd:Ljava/lang/String;
    .end local v24           #t:Landroid/text/format/Time;
    .end local v25           #timezone:Ljava/util/TimeZone;
    :catchall_0
    move-exception v3

    move-object/from16 v16, v17

    .end local v17           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v20           #parentId:I
    .restart local v16       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    :goto_6
    if-eqz v18, :cond_11

    .line 297
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_11
    throw v3

    .line 233
    .end local v16           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v10       #daylightOffset:I
    .restart local v11       #dt:Ljava/util/Date;
    .restart local v12       #dtEnd:J
    .restart local v14       #dtStart:J
    .restart local v17       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v19       #freeBusyStatus:I
    .restart local v20       #parentId:I
    .restart local v22       #strDtEnd:Ljava/lang/String;
    .restart local v24       #t:Landroid/text/format/Time;
    .restart local v25       #timezone:Ljava/util/TimeZone;
    :sswitch_1
    :try_start_7
    const-string v3, "3"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    goto/16 :goto_3

    .line 236
    :sswitch_2
    const-string v3, "0"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->freeBusyStatus:Ljava/lang/String;

    goto/16 :goto_3

    .line 265
    :cond_12
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->bodyFormat:Ljava/lang/String;

    goto/16 :goto_4

    .line 290
    .restart local v21       #reminderCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v21, :cond_13

    .line 291
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_13
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 296
    .end local v10           #daylightOffset:I
    .end local v11           #dt:Ljava/util/Date;
    .end local v12           #dtEnd:J
    .end local v14           #dtStart:J
    .end local v17           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v19           #freeBusyStatus:I
    .end local v20           #parentId:I
    .end local v21           #reminderCursor:Landroid/database/Cursor;
    .end local v22           #strDtEnd:Ljava/lang/String;
    .end local v24           #t:Landroid/text/format/Time;
    .end local v25           #timezone:Ljava/util/TimeZone;
    .restart local v16       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    :catchall_2
    move-exception v3

    goto :goto_6

    .end local v16           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v10       #daylightOffset:I
    .restart local v11       #dt:Ljava/util/Date;
    .restart local v12       #dtEnd:J
    .restart local v14       #dtStart:J
    .restart local v17       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v19       #freeBusyStatus:I
    .restart local v20       #parentId:I
    .restart local v22       #strDtEnd:Ljava/lang/String;
    .restart local v24       #t:Landroid/text/format/Time;
    .restart local v25       #timezone:Ljava/util/TimeZone;
    :cond_14
    move-object/from16 v16, v17

    .end local v17           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v16       #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    goto :goto_5

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public processClientAddRespList(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 419
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 421
    .local v3, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 423
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 425
    .local v1, easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 426
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v6, v1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 428
    const/4 v4, 0x0

    .line 429
    .local v4, operBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 430
    const-string v6, "_sync_id"

    iget-object v7, v1, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 432
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    const-string v7, "com.android.calendar"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 436
    const/4 v0, 0x0

    .line 437
    const/4 v4, 0x0

    .line 438
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v4           #operBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public processServerChangeList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 38
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 570
    .local p1, addObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p2, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    .local p3, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v3, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v19, 0x0

    .line 573
    .local v19, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v18, attendeeViewedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCurCalendarTimeZone()V

    .line 582
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getServerIdList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v25

    .line 583
    .local v25, eventIdList:Ljava/lang/String;
    if-eqz v25, :cond_1

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->findExistedItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v27

    .line 585
    .local v27, existedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v27, :cond_1

    .line 586
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v28, v2, -0x1

    .local v28, i:I
    :goto_0
    if-ltz v28, :cond_1

    .line 587
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 586
    :cond_0
    add-int/lit8 v28, v28, -0x1

    goto :goto_0

    .line 595
    .end local v27           #existedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #i:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getServerIdList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v25

    .line 596
    if-nez v25, :cond_5

    .line 597
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getServerIdList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v25

    .line 601
    :goto_1
    if-eqz v25, :cond_2

    .line 602
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v2, 0x0

    const-string v8, "iCalGUID"

    aput-object v8, v33, v2

    .line 603
    .local v33, proj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iCalGUID IN ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ") AND Attendees.viewed = 1"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 607
    .local v37, where:Ljava/lang/String;
    const-string v2, "content://com.android.calendar/attendees_ical_guid"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 628
    .end local v33           #proj:[Ljava/lang/String;
    .end local v37           #where:Ljava/lang/String;
    :cond_2
    const/16 v28, 0x0

    .restart local v28       #i:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v32

    .local v32, listSize:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_f

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 631
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 632
    .local v4, easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    new-instance v5, Lcom/htc/android/mail/eassvc/calendar/Event;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calendarId:J

    invoke-direct {v5, v2, v8, v9}, Lcom/htc/android/mail/eassvc/calendar/Event;-><init>(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V

    .line 633
    .local v5, pimEvent:Lcom/htc/android/mail/eassvc/calendar/Event;
    const/4 v7, 0x0

    .line 636
    .local v7, eventUri:Landroid/net/Uri;
    sget-object v2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->add:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populatePIMEvent(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;)V

    .line 638
    sget-boolean v2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding event #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v28, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 639
    :cond_3
    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/calendar/Event;->getEventCV()Landroid/content/ContentValues;

    move-result-object v36

    .line 640
    .local v36, values:Landroid/content/ContentValues;
    if-nez v36, :cond_6

    .line 641
    const-string v2, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v9, "processServerChangeList(): Error, getEventCV is null."

    invoke-static {v2, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 642
    const-string v2, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/calendar/Event;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 628
    :cond_4
    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 599
    .end local v4           #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v5           #pimEvent:Lcom/htc/android/mail/eassvc/calendar/Event;
    .end local v7           #eventUri:Landroid/net/Uri;
    .end local v28           #i:I
    .end local v32           #listSize:I
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getServerIdList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 646
    .restart local v4       #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .restart local v5       #pimEvent:Lcom/htc/android/mail/eassvc/calendar/Event;
    .restart local v7       #eventUri:Landroid/net/Uri;
    .restart local v28       #i:I
    .restart local v32       #listSize:I
    .restart local v36       #values:Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 647
    .local v6, rawEventOpIndex:I
    sget-object v2, Landroid/provider/HtcExCalendar$ExEvents;->EAS_EVENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 648
    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 649
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 653
    const-string v2, "_id=? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 654
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 655
    const-string v2, "_syncing"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 656
    const-string v2, "serverId"

    iget-object v8, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 657
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/calendar/Event;->getAlarmCV()[Landroid/content/ContentValues;

    move-result-object v22

    .line 660
    .local v22, cvs:[Landroid/content/ContentValues;
    if-eqz v22, :cond_7

    .line 661
    move-object/from16 v16, v22

    .local v16, arr$:[Landroid/content/ContentValues;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v29, 0x0

    .local v29, i$:I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    aget-object v21, v16, v29

    .line 662
    .local v21, cv:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 663
    const-string v2, "event_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 664
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 665
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 669
    .end local v16           #arr$:[Landroid/content/ContentValues;
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_7
    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/calendar/Event;->getAttendeeCV()[Landroid/content/ContentValues;

    move-result-object v22

    .line 670
    if-eqz v22, :cond_b

    .line 671
    iget-object v2, v5, Lcom/htc/android/mail/eassvc/calendar/Event;->uid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 672
    const/16 v30, 0x0

    .local v30, j:I
    :goto_5
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_8

    .line 673
    aget-object v2, v22, v30

    const-string v8, "viewed"

    const-string v9, "1"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 677
    .end local v30           #j:I
    :cond_8
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    .line 678
    .local v17, attendeeUri:Landroid/net/Uri;
    move-object/from16 v16, v22

    .restart local v16       #arr$:[Landroid/content/ContentValues;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    aget-object v21, v16, v29

    .line 679
    .restart local v21       #cv:Landroid/content/ContentValues;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v8, 0xc8

    if-le v2, v8, :cond_9

    .line 680
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->commit(Ljava/util/ArrayList;ILandroid/net/Uri;)[Landroid/content/ContentProviderResult;

    move-result-object v34

    .line 681
    .local v34, results:[Landroid/content/ContentProviderResult;
    if-nez v7, :cond_9

    .line 682
    if-eqz v34, :cond_9

    .line 683
    aget-object v2, v34, v6

    iget-object v7, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 689
    .end local v34           #results:[Landroid/content/ContentProviderResult;
    :cond_9
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 690
    if-nez v7, :cond_a

    .line 691
    const-string v2, "event_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 695
    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 696
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 693
    :cond_a
    const-string v2, "event_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getUriId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_7

    .line 701
    .end local v16           #arr$:[Landroid/content/ContentValues;
    .end local v17           #attendeeUri:Landroid/net/Uri;
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_b
    iget-object v2, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    move-object/from16 v2, p0

    .line 703
    invoke-direct/range {v2 .. v7}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->addChildEvent(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 707
    :cond_c
    add-int/lit8 v2, v28, 0x1

    :try_start_0
    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_d

    add-int/lit8 v2, v28, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v2, v8, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v8, 0xc8

    if-le v2, v8, :cond_e

    .line 710
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    const-string v8, "com.android.calendar"

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 712
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    :cond_e
    :goto_8
    const/4 v7, 0x0

    .line 723
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateInterval:I

    if-lez v2, :cond_4

    .line 724
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->updateInterval:I

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 725
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 715
    :catch_1
    move-exception v24

    .line 716
    .local v24, e1:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 731
    .end local v4           #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v5           #pimEvent:Lcom/htc/android/mail/eassvc/calendar/Event;
    .end local v6           #rawEventOpIndex:I
    .end local v7           #eventUri:Landroid/net/Uri;
    .end local v22           #cvs:[Landroid/content/ContentValues;
    .end local v24           #e1:Ljava/lang/Exception;
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_f
    const/16 v28, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v32

    :goto_9
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_18

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 733
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 737
    .restart local v4       #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    iget-object v2, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 738
    .local v26, eventLocalID:Ljava/lang/String;
    if-nez v26, :cond_11

    .line 731
    :cond_10
    :goto_a
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 741
    :cond_11
    new-instance v5, Lcom/htc/android/mail/eassvc/calendar/Event;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->calendarId:J

    invoke-direct {v5, v2, v8, v9}, Lcom/htc/android/mail/eassvc/calendar/Event;-><init>(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V

    .line 742
    .restart local v5       #pimEvent:Lcom/htc/android/mail/eassvc/calendar/Event;
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/eassvc/calendar/Event;->setId(Ljava/lang/String;)V

    .line 743
    sget-object v2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;->update:Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->populatePIMEvent(Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;Lcom/htc/android/mail/eassvc/calendar/CalendarManager$actionType;)V

    .line 746
    iget-boolean v2, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->onlyAttendees:Z

    if-nez v2, :cond_14

    .line 747
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v35

    .line 749
    .local v35, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/calendar/Event;->getEventCV()Landroid/content/ContentValues;

    move-result-object v20

    .line 750
    .local v20, contentValue:Landroid/content/ContentValues;
    const-string v2, "selfAttendeeStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 752
    if-eqz v20, :cond_12

    .line 753
    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 754
    const-string v2, "_id=? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v26, v8, v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 755
    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 756
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_12
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->deleteChildEvent(Ljava/util/ArrayList;J)V

    .line 766
    iget-object v2, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    iget-object v2, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->recurExceptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 768
    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v13}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->addChildEvent(Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/common/EASCalEvent;Lcom/htc/android/mail/eassvc/calendar/Event;ILandroid/net/Uri;)Landroid/net/Uri;

    .line 772
    :cond_13
    :try_start_2
    const-string v37, "event_id=?"

    .line 773
    .restart local v37       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v26, v15, v2

    .line 774
    .local v15, args:[Ljava/lang/String;
    iget-boolean v2, v5, Lcom/htc/android/mail/eassvc/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_15

    .line 775
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 776
    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 777
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 800
    .end local v15           #args:[Ljava/lang/String;
    .end local v20           #contentValue:Landroid/content/ContentValues;
    .end local v35           #uriBuilder:Landroid/net/Uri$Builder;
    .end local v37           #where:Ljava/lang/String;
    :cond_14
    :goto_b
    const-string v37, "event_id=? AND attendeeRelationship < 2"

    .line 802
    .restart local v37       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v26, v15, v2

    .line 803
    .restart local v15       #args:[Ljava/lang/String;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 804
    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 805
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/calendar/Event;->getAttendeeCV()[Landroid/content/ContentValues;

    move-result-object v22

    .line 807
    .restart local v22       #cvs:[Landroid/content/ContentValues;
    if-eqz v22, :cond_17

    .line 808
    iget-object v2, v5, Lcom/htc/android/mail/eassvc/calendar/Event;->uid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 809
    const/16 v30, 0x0

    .restart local v30       #j:I
    :goto_c
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_16

    .line 810
    aget-object v2, v22, v30

    const-string v8, "viewed"

    const-string v9, "1"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    add-int/lit8 v30, v30, 0x1

    goto :goto_c

    .line 780
    .end local v22           #cvs:[Landroid/content/ContentValues;
    .end local v30           #j:I
    .restart local v20       #contentValue:Landroid/content/ContentValues;
    .restart local v35       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_15
    :try_start_3
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 781
    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 782
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/calendar/Event;->getAlarmCV()[Landroid/content/ContentValues;

    move-result-object v22

    .line 784
    .restart local v22       #cvs:[Landroid/content/ContentValues;
    if-eqz v22, :cond_14

    .line 786
    move-object/from16 v16, v22

    .restart local v16       #arr$:[Landroid/content/ContentValues;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_d
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_14

    aget-object v14, v16, v29

    .line 787
    .local v14, alarmcv:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 788
    const-string v2, "event_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 789
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 790
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 786
    add-int/lit8 v29, v29, 0x1

    goto :goto_d

    .line 794
    .end local v14           #alarmcv:Landroid/content/ContentValues;
    .end local v15           #args:[Ljava/lang/String;
    .end local v16           #arr$:[Landroid/content/ContentValues;
    .end local v22           #cvs:[Landroid/content/ContentValues;
    .end local v29           #i$:I
    .end local v31           #len$:I
    .end local v37           #where:Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 795
    .local v23, e:Ljava/lang/Exception;
    const-string v2, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execption:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 813
    .end local v20           #contentValue:Landroid/content/ContentValues;
    .end local v23           #e:Ljava/lang/Exception;
    .end local v35           #uriBuilder:Landroid/net/Uri$Builder;
    .restart local v15       #args:[Ljava/lang/String;
    .restart local v22       #cvs:[Landroid/content/ContentValues;
    .restart local v37       #where:Ljava/lang/String;
    :cond_16
    move-object/from16 v16, v22

    .restart local v16       #arr$:[Landroid/content/ContentValues;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_e
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    aget-object v21, v16, v29

    .line 814
    .restart local v21       #cv:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 815
    const-string v2, "event_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 816
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 817
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    add-int/lit8 v29, v29, 0x1

    goto :goto_e

    .line 822
    .end local v16           #arr$:[Landroid/content/ContentValues;
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 823
    const-string v2, "_id=? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v26, v8, v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 824
    const-string v2, "_syncing"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 825
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    const-string v8, "com.android.calendar"

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 832
    :goto_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 833
    sget-boolean v2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string v2, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updating event #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v28, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 829
    :catch_3
    move-exception v24

    .line 830
    .restart local v24       #e1:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 837
    .end local v4           #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v5           #pimEvent:Lcom/htc/android/mail/eassvc/calendar/Event;
    .end local v15           #args:[Ljava/lang/String;
    .end local v22           #cvs:[Landroid/content/ContentValues;
    .end local v24           #e1:Ljava/lang/Exception;
    .end local v26           #eventLocalID:Ljava/lang/String;
    .end local v37           #where:Ljava/lang/String;
    :cond_18
    const/16 v28, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v32

    :goto_10
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_1b

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mSyncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 839
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 841
    .restart local v4       #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    iget-object v2, v4, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getLocalIDbyServerID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 842
    .restart local v26       #eventLocalID:Ljava/lang/String;
    if-nez v26, :cond_1a

    .line 837
    :cond_19
    :goto_11
    add-int/lit8 v28, v28, 0x1

    goto :goto_10

    .line 845
    :cond_1a
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->deleteChildEvent(Ljava/util/ArrayList;J)V

    .line 846
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 847
    const-string v2, "_id=? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v26, v8, v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 848
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 851
    const-string v2, "_id=? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v26, v8, v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 852
    const-string v2, "_syncing"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 853
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    const-string v8, "com.android.calendar"

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 860
    :goto_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 861
    sget-boolean v2, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v2, :cond_19

    const-string v2, "EAS_CALMGR"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleting event #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v28, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 857
    :catch_4
    move-exception v24

    .line 858
    .restart local v24       #e1:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 865
    .end local v4           #easEvent:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v24           #e1:Ljava/lang/Exception;
    .end local v26           #eventLocalID:Ljava/lang/String;
    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->release()V

    .line 487
    :cond_0
    return-void
.end method

.method public removeAllEvents(Z)V
    .locals 3
    .parameter "removeLocal"

    .prologue
    .line 498
    sget-boolean v0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EAS_CALMGR"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v2, "removeAllEvents(): "

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeAllEvents(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 500
    return-void
.end method

.method public removeSyncinfo()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->reset()V

    .line 477
    :cond_0
    return-void
.end method

.method public setAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 130
    return-void
.end method

.method public setProtocolVer(D)V
    .locals 0
    .parameter "ver"

    .prologue
    .line 1978
    iput-wide p1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mProtocolVer:D

    .line 1979
    return-void
.end method

.method public updateClientServerId(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    const/4 v6, 0x0

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v3, idMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v4, :cond_1

    .line 388
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 390
    .local v0, event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 391
    .local v2, idMap:[Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 392
    const/4 v4, 0x1

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 393
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    .end local v0           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v2           #idMap:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v4, v3, v6}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->updateRecord(Ljava/util/ArrayList;Z)V

    .line 397
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public updateClientServerId_withoutSetSyncingFlag(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASCalEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASCalEvent;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v3, idMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    if-eqz v4, :cond_1

    .line 370
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;

    .line 372
    .local v0, event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 373
    .local v2, idMap:[Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->clientID:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 374
    const/4 v4, 0x1

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASCalEvent;->serverID:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 375
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    .end local v0           #event:Lcom/htc/android/mail/eassvc/common/EASCalEvent;
    .end local v2           #idMap:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->updateRecord_withoutSetSyncingFlag(Ljava/util/ArrayList;)V

    .line 379
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public updateSynckeyAndTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "synckey"
    .parameter "changeList"
    .parameter "delList"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 324
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "deleted = 1"

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 325
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->appendCallerIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 327
    const-string v3, "dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 328
    const-string v3, "calendar_id=?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->getCalendarId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    if-eqz p3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_delete = 1 AND serverId IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    if-eqz p2, :cond_1

    .line 336
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 337
    const-string v3, "_add"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    const-string v3, "_modify"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 340
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->trackManager:Lcom/htc/android/mail/eassvc/util/SyncTrackManager;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/util/SyncTrackManager;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 343
    const-string v3, "_add"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 344
    const-string v3, "_modify"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 345
    const-string v3, "_syncing"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 346
    const-string v3, "_syncing = 1"

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 347
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v3, Landroid/provider/HtcExCalendar;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 350
    const-string v3, "synckey"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 351
    const-string v3, "accountName=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 352
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->cResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.calendar"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-void

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EAS_CALMGR"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 357
    new-instance v3, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v4, 0x320

    const-string v5, "add contact fail"

    invoke-direct {v3, v4, v5}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v3
.end method
