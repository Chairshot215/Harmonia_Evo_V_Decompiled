.class public final Landroid/provider/HtcExCalendar$ExCalendars;
.super Landroid/provider/HtcCalendarContract$Calendars;
.source "HtcExCalendar.java"

# interfaces
.implements Landroid/provider/HtcExCalendar$ExCalendarsColumns;
.implements Landroid/provider/HtcExCalendar$CalendarsDisplayOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcExCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExCalendars"
.end annotation


# static fields
.field public static final DEFAULT_CAL_NAME:Ljava/lang/String; = "Default"

.field public static final DISPLAY_SORT_ORDER:Ljava/lang/String; = "displayOrder"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final ID_SORT_ORDER:Ljava/lang/String; = "_id"

.field public static final IS_HTC_CUSTOMIZED_CALENDAR:Ljava/lang/String; = "ishTCCustomizedCalendar"

.field public static final SETTING_ID_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.calendar/calendar_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar$ExCalendars;->SETTING_ID_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/HtcCalendarContract$Calendars;-><init>()V

    return-void
.end method
