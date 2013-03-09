.class public final Landroid/provider/HtcExCalendar$ExInstances;
.super Landroid/provider/HtcCalendarContract$Instances;
.source "HtcExCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcExCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExInstances"
.end annotation


# static fields
.field public static final CONTENT_BY_JULIANDAY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.calendar/instances/julianday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar$ExInstances;->CONTENT_BY_JULIANDAY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/HtcCalendarContract$Instances;-><init>()V

    return-void
.end method
