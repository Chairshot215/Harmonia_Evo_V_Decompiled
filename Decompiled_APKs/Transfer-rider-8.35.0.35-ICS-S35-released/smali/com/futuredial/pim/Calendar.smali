.class public final Lcom/futuredial/pim/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/Calendar$SyncState;,
        Lcom/futuredial/pim/Calendar$ExtendedProperties;,
        Lcom/futuredial/pim/Calendar$ExtendedPropertiesColumns;,
        Lcom/futuredial/pim/Calendar$CalendarAlerts;,
        Lcom/futuredial/pim/Calendar$CalendarAlertsColumns;,
        Lcom/futuredial/pim/Calendar$Reminders;,
        Lcom/futuredial/pim/Calendar$RemindersColumns;,
        Lcom/futuredial/pim/Calendar$BusyBits;,
        Lcom/futuredial/pim/Calendar$BusyBitsColumns;,
        Lcom/futuredial/pim/Calendar$CalendarMetaData;,
        Lcom/futuredial/pim/Calendar$CalendarMetaDataColumns;,
        Lcom/futuredial/pim/Calendar$Instances;,
        Lcom/futuredial/pim/Calendar$Events;,
        Lcom/futuredial/pim/Calendar$EventsColumns;,
        Lcom/futuredial/pim/Calendar$Attendees;,
        Lcom/futuredial/pim/Calendar$AttendeesColumns;,
        Lcom/futuredial/pim/Calendar$Calendars;,
        Lcom/futuredial/pim/Calendar$CalendarsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "calendar"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field public static final EVENT_REMINDER_ACTION:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field public static final TAG:Ljava/lang/String; = "Calendar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "content://calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    return-void
.end method
