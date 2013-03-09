.class public final Landroid/provider/HtcExCalendar$ExEvents;
.super Landroid/provider/HtcCalendarContract$Events;
.source "HtcExCalendar.java"

# interfaces
.implements Landroid/provider/HtcExCalendar$ExEventsColumns;
.implements Landroid/provider/HtcExCalendar$FacebookColumns;
.implements Landroid/provider/HtcCalendarContract$CalendarColumns;
.implements Landroid/provider/HtcExCalendar$ExCalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcExCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExEvents"
.end annotation


# static fields
.field public static final EAS_EVENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.calendar/events/eas_sync"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar$ExEvents;->EAS_EVENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/HtcCalendarContract$Events;-><init>()V

    return-void
.end method
